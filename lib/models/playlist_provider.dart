import 'package:flutter/material.dart';
import 'package:music_player_flutter/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        title: "Cutthroat",
        artist: "Imagine Dragons",
        albumArtPath: "assets/images/image1.jpg",
        filePath: "assets/audios/song1.mp3"),
    Song(
        title: "boulvard of broken dreams",
        artist: "Green Day",
        albumArtPath: "assets/images/image2.jpg",
        filePath: "assets/audios/song2.mp3"),
  ];

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  set currentSongIndex(currentSongIndex) {
    _currentSongIndex = currentSongIndex;
    notifyListeners();
  }
}
