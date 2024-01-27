import 'package:flutter/material.dart';
import 'package:youssef_s_application8/presentation/login_screen/login_screen.dart';
import 'package:youssef_s_application8/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:youssef_s_application8/presentation/list_screen/list_screen.dart';
import 'package:youssef_s_application8/presentation/settings_screen/settings_screen.dart';
import 'package:youssef_s_application8/presentation/profile_screen/profile_screen.dart';
import 'package:youssef_s_application8/presentation/artists_screen/artists_screen.dart';
import 'package:youssef_s_application8/presentation/artist_screen/artist_screen.dart';
import 'package:youssef_s_application8/presentation/albums_screen/albums_screen.dart';
import 'package:youssef_s_application8/presentation/album_details_screen/album_details_screen.dart';
import 'package:youssef_s_application8/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String topPlaylistsPage = '/top_playlists_page';

  static const String listScreen = '/list_screen';

  static const String settingsScreen = '/settings_screen';

  static const String favoritesPage = '/favorites_page';

  static const String profileScreen = '/profile_screen';

  static const String artistsScreen = '/artists_screen';

  static const String artistScreen = '/artist_screen';

  static const String albumsScreen = '/albums_screen';

  static const String albumDetailsScreen = '/album_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    homePageContainerScreen: (context) => HomePageContainerScreen(),
    listScreen: (context) => ListScreen(),
    settingsScreen: (context) => SettingsScreen(),
    profileScreen: (context) => ProfileScreen(),
    artistsScreen: (context) => ArtistsScreen(),
    artistScreen: (context) => ArtistScreen(),
    albumsScreen: (context) => AlbumsScreen(),
    albumDetailsScreen: (context) => AlbumDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
