import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/colors.dart';
import 'package:real_islami/modelsura.dart';
import 'package:real_islami/my_theme_data.dart';

class sura_details extends StatefulWidget {
  static const  String routeName="suraDetails";
  sura_details({super.key});

  @override
  State<sura_details> createState() => _sura_detailsState();
}

class _sura_detailsState extends State<sura_details> {
  List<String>verse=[];

  @override
  Widget build(BuildContext context) {
     var model = ModalRoute.of(context)?.settings.arguments as modelsura;
     if(verse.isEmpty){

       getFileData(model.index);
     }

    return Container(
      decoration: BoxDecoration(
        image:
        DecorationImage(
            image:AssetImage(myThemeData.getBackgroundImage(context)),),
      ),
     child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("اسلامي",
              style:
              GoogleFonts.elMessiri(
                color:  Theme.of(context).textTheme.bodyLarge?.color,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),

          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
       body: Container(
         padding: const EdgeInsets.all(15.0),
         margin: EdgeInsets.only(bottom: 30, left: 15,right:15 ,top: 20),
         child: Card(
           color: Theme.of(context).cardColor.withOpacity(0.8),
           elevation: 0,
           shape: OutlineInputBorder(
             borderRadius: BorderRadius.circular(50),
             borderSide: BorderSide.none,
           ),
           child:
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left:16.0, right: 50, top:20, bottom: 0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,

                   children: [

                     Text(
                       "سورة البقرة",
                       //textAlign: TextAlign.right,
                       style: GoogleFonts.inter(
                         fontSize: 25,
                         fontWeight: FontWeight.w400,
                         color: Theme.of(context).textTheme.bodySmall?.color,
                       ),
                     ),
                     const SizedBox(width: 18),
                     IconButton(
                       onPressed: () {
                       },
                       icon: Icon(
                         Icons.play_circle_fill,
                         color: Theme.of(context).iconTheme.color,
                         size: 30,
                       ),
                     ),
                   ],
                 ),
               ),
                Container(
                  padding: EdgeInsets.only(left: 50,right:50,),
                  child: Divider(
                   color: AppColor.primaryColor,
                   thickness: 1,

               ),
                ),
               Expanded(
                 child: ListView.builder(
                   padding: EdgeInsets.all(10),
                   itemBuilder: (context, index) {
                     return Padding(
                       padding: const EdgeInsets.symmetric(vertical: 8.0),
                       child: Text(
                         verse[index],
                         textAlign: TextAlign.center,
                         style: GoogleFonts.inter(
                           fontSize: 20,
                           fontWeight: FontWeight.w400,
                           color: Theme.of(context).textTheme.bodySmall?.color,

                         ),
                       ),
                     );
                   },
                   itemCount: verse.length,
                 ),
               ),
             ],
           ),
         ),
       ),
      ),

    );
  }

  getFileData(int index) async {

    String sura=await rootBundle.loadString('assets/files/sura.txt');
    List<String> suralines= sura.split("\n");
    verse=suralines;
    print(suralines);
    setState(() {

    });
     }
}
