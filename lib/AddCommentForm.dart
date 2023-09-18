import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddCommentForm extends StatefulWidget {
  @override
  _AddCommentFormState createState() => _AddCommentFormState();
}

class _AddCommentFormState extends State<AddCommentForm> {
  final TextEditingController _commentController = TextEditingController();

  void _addComment() {
    final comment = _commentController.text;
    if (comment.isNotEmpty) {
      FirebaseFirestore.instance.collection('comments').add({'text': comment});
      _commentController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _commentController,
          decoration: InputDecoration(
            labelText: 'Add a comment',
          ),
        ),
        ElevatedButton(
          onPressed: _addComment,
          child: Text('Add Comment'),
        ),
      ],
    );
  }
}
