import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Gallery/album_post.dart';
import 'package:tyamo/Views/Reusability/gallery_header.dart';

class MyAlbum extends StatelessWidget {
  const MyAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            context: context,
            isEditable: true,
            timeOpenedValue: "0",
            totalUploadValue: "7",
            name: "Anas",
            description: "Tell your partner what this album means to you",
          ),
          SizedBox(height: 10,),
          Container(
            
              child: StaggeredGridView.countBuilder(
                
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            crossAxisCount: 4,
            itemCount: 7,
            itemBuilder: (context, index) {
              
              return FocusedMenuHolder(
                menuWidth: MediaQuery.of(context).size.width * 0.50,
                blurSize: 2.0,
                menuItemExtent: 45,
                menuBoxDecoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                duration: Duration(milliseconds: 100),
                animateMenuItems: true,
                blurBackgroundColor: Colors.black54,
                menuOffset: 10.0,
                bottomOffsetHeight: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, PageTransition(child: AlbumPost(), type: PageTransitionType.fade));
                    },
                    child: Hero(
                      tag: "assets/images/T.jpg",
                      child: Image.asset(
                        // "assets/images/sea.jpg",
                        "assets/images/wallpaper.jpg",
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                menuItems: <FocusedMenuItem>[
                  FocusedMenuItem(
                      title: Text("Open"),
                      trailingIcon: Icon(Icons.open_in_new),
                      onPressed: () {}),
                  FocusedMenuItem(
                    backgroundColor: Colors.red,
                    title: Text(
                      "Delete",
                      textScaleFactor: 1,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailingIcon: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      
                    },
                  ),
                ],
              );
            },
            
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 3),
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
          ))
        ],
      ),
    );
  }
}

