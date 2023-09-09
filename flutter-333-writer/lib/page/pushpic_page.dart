// ignore_for_file: unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:writer/models/art_dto.dart';
import 'package:writer/widgetModules/input_form_field.dart';

class Pushpic extends StatefulWidget {
  const Pushpic({super.key});

  @override
  State<Pushpic> createState() => _PushpicState();
}

class _PushpicState extends State<Pushpic> {
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedImg;

  String _titleValue = "";
  String _description = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("작품 올리기"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _pickedImg != null
                ? Image.file(File(_pickedImg!.path))
                : const Text('이미지가 없습니다'),
            ElevatedButton(
              onPressed: _pickImg,
              child: const Text('이미지를 선택하세요.'),
            ),
            inputFormField(
              setValue: (value) => _titleValue = value,
              labelText: "Title Name",
            ),
            inputFormField(
              setValue: (value) => _description = value,
              maxLength: 500,
              maxLines: 3,
              labelText: "Details about art.",
            ),
            ElevatedButton(
                onPressed: () {
                  if (_titleValue.isNotEmpty &&
                      _description.isNotEmpty &&
                      _pickedImg != null) {
                    ArtDto artDto = ArtDto(
                      uID: "uID",
                      title: _titleValue,
                      description: _description,
                      imagePath: _pickedImg!.path,
                    );
                    debugPrint(artDto.toJson().toString());
                  }
                },
                child: const Text("저장"))
          ],
        ));
  }

  Future<void> _pickImg() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _pickedImg = image;
      });
    }
  }
}
