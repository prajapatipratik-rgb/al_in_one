import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../constants/cloudinary_constants.dart';

class CloudinaryService {
  Future<String?> uploadImage(File imageFile) async {
    try {
      final url = Uri.parse(
        "https://api.cloudinary.com/v1_1/${CloudinaryConstants.cloudName}/image/upload",
      );

      var request = http.MultipartRequest('POST', url);

      // Add image file
      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          imageFile.path,
        ),
      );

      // Add unsigned upload preset
      request.fields['upload_preset'] = CloudinaryConstants.uploadPreset;

      // Optional: specify folder
      request.fields['folder'] = "ecommerce/products";

      var response = await request.send();

      if (response.statusCode == 200) {
        final responseData = await response.stream.bytesToString();
        final jsonData = json.decode(responseData);

        return jsonData['secure_url']; // ✅ Image URL
      } else {
        print("Upload failed: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error uploading image: $e");
      return null;
    }
  }
}
