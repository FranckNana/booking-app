import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: AppBar(
        centerTitle: true,
        title: Text(
          'Reserve ta place',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.white,
          ),
        ),
        bottom: PreferredSize(
          child: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.3),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: ElevatedButton.icon(
                  label: Text('Rest.'),
                  icon: Icon(
                    Icons.restaurant_sharp,
                    color: Colors.pink,
                    size: 40.0,
                  ),
                  onPressed: () {
                    // Restau
                  },
                ),
              ),
    
              Tab(
                child: ElevatedButton.icon(
                  label: Text('Bar'),
                  icon: FaIcon(
                    FontAwesomeIcons.glassCheers,
                    color: Colors.orange,
                    size: 40.0,
                  ),
                  onPressed: () {
                    // Bar
                  },
                ),
              ),
    
              Tab(
                child: ElevatedButton.icon(
                  label: Text('NightClub'),
                  icon: Icon(
                    Icons.speaker_group_sharp,
                    color: Colors.green,
                    size: 40.0,
                  ),
                  onPressed: () {
                    // boite
                  },
                )
              ),
    
              Tab(
                child: ElevatedButton.icon(
                  label: Text('Bar'),
                  icon: FaIcon(
                    FontAwesomeIcons.music,
                    color: Colors.yellowAccent,
                    size: 40.0,
                  ),
                  onPressed: () {
                    // Bar
                  },
                ),
              ), 
            ],
          ),
          preferredSize: Size.fromHeight(30.0),
        ),
      ),
    );
  }
}