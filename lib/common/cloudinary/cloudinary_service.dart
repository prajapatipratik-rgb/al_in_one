import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class ImageService {
  // ✅ Your Cloudinary Details
  final String cloudName = 'dieaiy3xy';
  final String uploadPreset = 'ALL_IN_ONE';

  final ImagePicker picker = ImagePicker();
  File? image;

  /// Pick Image From Gallery
  Future<File?> pickImageFromGallery() async {
    final XFile? picked = await picker.pickImage(source: ImageSource.gallery);

    if (picked != null) {
      image = File(picked.path);
      return image;
    }
    return null;
  }

  /// Pick Image From Camera
  Future<File?> pickImageFromCamera() async {
    final XFile? picked = await picker.pickImage(source: ImageSource.camera);

    if (picked != null) {
      image = File(picked.path);
      return image;
    }
    return null;
  }

  /// Upload Image To Cloudinary
  Future<String?> uploadImage(File? file) async {
    if (file == null) return null;

    try {
      final String url =
          'https://api.cloudinary.com/v1_1/$cloudName/image/upload';

      var request = http.MultipartRequest(
        "POST",
        Uri.parse(url),
      );

      // ✅ Unsigned preset
      request.fields['upload_preset'] = uploadPreset;

      // ✅ Attach image file
      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          file.path,
        ),
      );

      var response = await request.send();
      var res = await http.Response.fromStream(response);

      if (response.statusCode == 200) {
        var data = jsonDecode(res.body);

        // ✅ Final secure image URL
        final String imageUrl = data['secure_url'];
        return imageUrl;
      } else {
        print("Upload Failed: ${res.body}");
        return null;
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }
}
