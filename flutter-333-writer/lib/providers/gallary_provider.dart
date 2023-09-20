import 'package:flutter/foundation.dart';
import 'package:writer/models/art_dto.dart';
import 'package:writer/modules/gallary_service.dart';

class GallaryProvider extends ChangeNotifier {
  final GallaryService _gallaryService = GallaryService();
  List<ArtDto> _artList = [];
  List<ArtDto> get artList => _artList;

  loadStation() async {
    List<ArtDto>? tempList = await _gallaryService.selectAllArt();
    _artList = tempList;
    notifyListeners();
  }
}
