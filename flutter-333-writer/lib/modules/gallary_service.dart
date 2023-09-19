import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class GallaryService {
  void uploadImage(XFile imageFile) async {
    try {
      final storage = FirebaseStorage.instance.ref();
      final String fileName = DateTime.now().millisecondsSinceEpoch.toString();

      // Cloud Storage에 대상 경로 지정
      final Reference storageRef = storage.child('gallary').child(fileName);

      // XFile을 File로 변환
      final File file = File(imageFile.path);

      // 파일 업로드
      UploadTask uploadTask = storageRef.putFile(file);

      // 업로드 진행률 모니터링 (선택 사항)
      // uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
      //   print(
      //       'Transferred ${snapshot.bytesTransferred}/${snapshot.totalBytes}');
      // });

      // 업로드 완료 대기
      await uploadTask.whenComplete(() => print('Upload complete'));

      // 업로드한 파일의 다운로드 URL 가져오기
      final String downloadURL = await storageRef.getDownloadURL();

      // 업로드한 이미지의 다운로드 URL을 사용하거나 저장합니다.
      print('Image download URL: $downloadURL');

      // final mountainImagesRef = storageRef.child("images/mountains.jpg");
    } catch (e) {
      print('Error uploading image: $e');
    }
  }
}
