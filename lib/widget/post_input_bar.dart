import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostInputBar extends StatefulWidget {
  const PostInputBar({required this.onSubmitted, super.key});

  final void Function(String) onSubmitted;

  @override
  State<PostInputBar> createState() => PostInputBarState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      ObjectFlagProperty<void Function(String p1)>.has(
        'onSubmitted',
        onSubmitted,
      ),
    );
  }
}

class PostInputBarState extends State<PostInputBar> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  var _isCtrlPressed = false;

  void submit() {
    final text = _textController.text.trim();
    if (text.isNotEmpty) {
      widget.onSubmitted(text);
      _textController.clear();
    }
  }

  @override
  Widget build(final BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border(
          top: BorderSide(color: Theme.of(context).dividerColor, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: KeyboardListener(
              focusNode: _focusNode,
              onKeyEvent: (final event) {
                if (event.logicalKey == LogicalKeyboardKey.controlLeft ||
                    event.logicalKey == LogicalKeyboardKey.controlRight ||
                    event.logicalKey == LogicalKeyboardKey.meta) {
                  if (event is KeyDownEvent) {
                    _isCtrlPressed = true;
                  } else if (event is KeyUpEvent) {
                    _isCtrlPressed = false;
                  }
                } else if (event.logicalKey == LogicalKeyboardKey.enter) {
                  if (event is KeyDownEvent && _isCtrlPressed) {
                    submit();
                  }
                }
              },
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'いま何してる？',
                  border: InputBorder.none,
                ),
                onSubmitted: (_) => submit(),
              ),
            ),
          ),
          IconButton(icon: const Icon(Icons.send), onPressed: submit),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
