import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/colors.dart';
import 'package:real_islami/modelhadeth.dart';
import 'package:real_islami/my_theme_data.dart';

class hadeth_details extends StatefulWidget {
  static const  String routeName="hadethDetails";
  hadeth_details({super.key});

  @override
  State<hadeth_details> createState() => hadeth_detailsState();
}

class hadeth_detailsState extends State<hadeth_details> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var modell = ModalRoute.of(context)?.settings.arguments as modelhadeth;
    if(verses.isEmpty){

      getFileDataa(modell.index);
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
              color:Theme.of(context).textTheme.bodyLarge?.color,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),

          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color:Theme.of(context).textTheme.bodyLarge?.color,),
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
                  padding: const EdgeInsets.only(left:60.0, right: 50, top:20, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [

                      Text(
                        "الحديث الأول",
                        style: GoogleFonts.inter(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50,right:50,),
                  child: Divider(
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
                          verses[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).textTheme.bodySmall?.color,

                          ),
                        ),
                      );
                    },
                    itemCount: verses.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }

  getFileDataa(int index) async {

    String hadeth=await rootBundle.loadString('assets/files/firsthadeth');
    List<String> hadethlines= hadeth.split("\n");
    verses=hadethlines;
    print(hadethlines);
    setState(() {

    });
  }
}
