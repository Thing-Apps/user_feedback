import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_feedback/user_feedback.dart';

class SupabaseService extends FeedbackService {
  final supabase = Supabase.instance.client;

  @override
  Future<void> addFeedback(AddUserFeedbackRequest feedback) async {
    await supabase.from('user_feedbacks').upsert(feedback.toJson());
  }

  @override
  Future<List<String>> addFeedbackImages({
    required String path,
    required List<File> fileList,
  }) async {
    var index = 0;
    List<String> imageUrls = [];
    for (final file in fileList) {
      const storage = 'feedbacks';
      String fileExt = file.path.split('.').last;
      await supabase.storage.from(storage).uploadBinary(
            '$path$index.$fileExt',
            await file.readAsBytes(),
            fileOptions: const FileOptions(
              upsert: true,
            ),
          );
      final url = supabase.storage.from(storage).getPublicUrl(path);
      imageUrls.add(url);
      index++;
    }
    return imageUrls;
  }
}
