import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Card(
        color: Colors.indigo,
        elevation: 5,
        child: AnimSearchBar(
          prefixIcon:Icon(Icons.search),
          width: 400,
          textController: textEditingController,
          onSuffixTap: (){
            setState( 
              (){
                textEditingController.clear();
              }
            );
          },
          autoFocus: true,
        ),
      ),
    );
  }
}