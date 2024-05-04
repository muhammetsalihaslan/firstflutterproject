import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? name;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  Future<void> _addItemService(PostModel postModel) async {
    final response = await _dio.post("post", data: postModel);

    if (response.statusCode == HttpStatus.ok) {
      name = 'Başarılı';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'body'),
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'UserId'),
          ),
          TextButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty &&
                    _bodyController.text.isNotEmpty &&
                    _userIdController.text.isNotEmpty) {
                  final model = PostModel(
                      body: _bodyController.text,
                      title: _titleController.text,
                      userId: int.tryParse(_userIdController.text));

                  _addItemService(model);
                }
              },
              child: const Text("Send")),
        ],
      ),
    );
  }
}
