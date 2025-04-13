import 'package:flutter/material.dart';
import 'package:music_player_flutter/components/appdrawer.dart';
import 'package:music_player_flutter/models/playlist_provider.dart';
import 'package:music_player_flutter/models/song.dart';
import 'package:music_player_flutter/pages/songpage.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late final dynamic playlistProvider;
  @override
  void initState() {
    super.initState();

    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  void goToSong(int indexOfSong) {
    playlistProvider.currentSongIndex = indexOfSong;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SongPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("P L A Y L I S T"),
        elevation: 50,
      ),
      drawer: const Appdrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {
          List playlist = value.playlist;
          return ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                Song song = playlist[index];
                return ListTile(
                  leading: Image.asset(song.albumArtPath),
                  title: Text(song.title),
                  subtitle: Text(song.artist),
                  onTap: () => goToSong(index),
                );
              });
        },
      ),
    );
  }
}
