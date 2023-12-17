import 'package:flutter/material.dart';
import 'package:cat_motion/design/colors.dart';
import 'package:cat_motion/design/dimensions.dart';
import 'package:cat_motion/design/images.dart';
import 'package:cat_motion/pages/end_button.dart';
import 'package:cat_motion/design/widgets/return_button.dart';
import 'package:cat_motion/pages/second_page.dart';


class BildTextPage extends StatelessWidget {
  const BildTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_bildText(), _returnButton(context), _endButton(context)]);
  }
  Widget _bildText(){
    return Scaffold(
      appBar: AppBar(
        title: const Text('result of test',
            style: TextStyle(
              color: primaryColor,
              fontSize: fontSize25,
              fontWeight: FontWeight.w500,
            )),
        centerTitle: true,
        elevation: elevation0,
        backgroundColor: surfaceColor,
      ),
      body: Stack(
        children: [
          Center (child: angryImage),

          const Text("Your cat is angry ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: fontSize35,
                    fontWeight: FontWeight.w500,
                    fontFamily: AutofillHints.familyName,
                  )),
          
          
        ],
      )
          //children: [
          //Center (child: chirpImage),

          //const Text ("your cat is interested in a bird", textAlign: TextAlign.center,
          //style: TextStyle(
            //color: secondaryTextColor,
            //fontSize: fontSize25,
            //fontWeight: FontWeight.w500,
            //fontFamily: AutofillHints.familyName,
          //)),]


          //children: [
          //Center (child: happyImage),

          //const Text ("your cat is happy and will play", textAlign: TextAlign.center,
          //style: TextStyle(
            //color: secondaryTextColor,
            //fontSize: fontSize25,
            //fontWeight: FontWeight.w500,
            //fontFamily: AutofillHints.familyName,
          //)),]


          //children: [
          //Center (child: hissImage),

          //const Text ("your cat is ready to attack", textAlign: TextAlign.center,
          //style: TextStyle(
            //color: secondaryTextColor,
            //fontSize: fontSize25,
            //fontWeight: FontWeight.w500,
            //fontFamily: AutofillHints.familyName,
          //)),]


         //children: [
          //Center (child: purrImage),

          //const Text ("your cat relaxx now", textAlign: TextAlign.center,
          //style: TextStyle(
            //color: secondaryTextColor,
            //fontSize: fontSize25,
            //fontWeight: FontWeight.w500,
            //fontFamily: AutofillHints.familyName,
          //)),]



          //children: [
          //Center (child: sadImage),

          //const Text ("your cat is sad now", textAlign: TextAlign.center,
          //style: TextStyle(
            //color: secondaryTextColor,
            //fontSize: fontSize25,
            //fontWeight: FontWeight.w500,
            //fontFamily: AutofillHints.familyName,
          //)),]



          //children: [
          //Center (child: scaredImage),

          //const Text ("your cat is scared now", textAlign: TextAlign.center,
          //style: TextStyle(
            //color: secondaryTextColor,
            //fontSize: fontSize25,
            //fontWeight: FontWeight.w500,
            //fontFamily: AutofillHints.familyName,
          //)),]


    );
  }
  Widget _endButton(context){
      return Align(alignment: Alignment.bottomRight, 
      child: EndButton(title: 'Exit', onTap:() {
        Navigator.pop(context);
      }));
    }
  Widget _returnButton(context){
      return Align(alignment: Alignment.bottomLeft, 
      child: ReturnButton(title: 'Try again', onTap:() {
        Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
      }));
    }
}
