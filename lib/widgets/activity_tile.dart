import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  final bool isImage;
  final String text;
  const ActivityTile({
    Key? key,
    this.isImage = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const CircleAvatar(radius: 30),title: Text(text,style: TextStyle(fontSize: 14),),trailing:isImage?Image.network('https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg') :ElevatedButton(onPressed: (){},style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )
          )
      ), child: const Text('Follow'),),),
    );
  }
}