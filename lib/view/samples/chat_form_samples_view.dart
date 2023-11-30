import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/organism/chat_form/chat_form.dart';
import 'sample_wrapper.dart';

class ChatFormSamplesView extends StatefulWidget {
  const ChatFormSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-chat-form-samples';

  @override
  State<ChatFormSamplesView> createState() => _ChatFormSamplesViewState();
}

class _ChatFormSamplesViewState extends State<ChatFormSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChatForm Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            chatForm(),
          ],
        ),
      ),
    );
  }

  Widget chatForm() {
    return SampleWrapper(
      title: 'Chat Form',
      widget: ChatForm(
        hintText: 'Type a message ....',
        onTapAddButton: () {
          // TODO
        },
        onTapImageButton: () {
          // TODO
        },
        onTapSendButton: () {
          // TODO
        },
      ),
    );
  }
}
