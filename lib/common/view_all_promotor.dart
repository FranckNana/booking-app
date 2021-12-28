import 'package:booking_app/common/view_single_propotor.dart';
import 'package:booking_app/models/promoteur.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewAllPromotor extends StatefulWidget {
  const ViewAllPromotor({ Key? key }) : super(key: key);

  @override
  _ViewAllPromotor createState() => _ViewAllPromotor();
}

class _ViewAllPromotor extends State<ViewAllPromotor> {
  List<PromoteurModel>? ListPromoteurs;
  PromoteurModel promoteurModel = new PromoteurModel();
   PromoteurModel promoteurModel1 = new PromoteurModel();

  

  @override
  Widget build(BuildContext context) {

    promoteurModel.localName = 'Bar chez Franck';
    promoteurModel.description = 'chic bar à visiter on vous attend';
    promoteurModel.imgUrl = 'images/carousel1.jpg';

    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    
    return Container(
      margin: EdgeInsets.all(10),
      width: sizeX,
      height: sizeY*4/5,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 3,
        children: _createCardView(promoteurModel, context),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }

}

List<Widget> _createCardView(PromoteurModel promoteurModel, BuildContext context){
  List<Widget> images = [];
  Widget image;
  int i = 0;
  while(i<10){
    image = InkWell(
      onTap: () { 
        Get.to(ViewSinglePromotor()); 
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage(promoteurModel.imgUrl ?? ''),
            fit: BoxFit.fitHeight, 
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(3.0, 3.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ]
        ),
    
        child: SizedBox(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Text(
                promoteurModel.localName ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),
            ],
          )
        ),
      ),
    );
    images.add(image);
    i++;
  }
  return images;
}



/*List<Widget> _createSquares(int ListSize){
  int i = 0;
  double h = 2;
  double w = 2;
  List<Widget> squares = [];

  while(i<ListSize){
    Container square = Container(
      height: h,
      width: w,
      color: Colors.redAccent,
      child: Text(i.toString()),
    );
    i++;
    squares.add(square);
  }
  return squares;
}*/
