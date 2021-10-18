import 'ff_contact_avatar.dart';
import 'package:flutter/material.dart';

class FFContactAvatarModel {
  final String name;
  final String message;
  final Image image;
  final bool showBadge;
  final VoidCallback onTap;

  FFContactAvatarModel({
    required this.name,
    required this.message,
    required this.image,
    this.showBadge = false,
    required this.onTap,
  });

  FFContactAvatar asContactAvatar(
    FFContactAvatarTheme theme, {
    required VoidCallback onTap,
  }) {
    return (image == null)
        ? FFContactAvatar(
            name: this.name,
            message: this.message,
            showBadge: this.showBadge,
            theme: theme,
            onTap: onTap, model: null,
          )
        : FFContactAvatar(
            name: this.name,
            message: this.message,
            showBadge: this.showBadge,
            image: this.image,
            theme: theme,
            onTap: onTap,
            model: null,
          );
  }
}
