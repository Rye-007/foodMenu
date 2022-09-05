
import 'package:flutter/material.dart';

class Manu1 extends StatefulWidget {
  

  @override
  State<Manu1> createState() => _Mamu1State();
}

class _Mamu1State extends State<Manu1> {

List<List<dynamic>> foodLists =[
  [
    "https://image.bestreview.asia/wp-content/uploads/2021/03/Stir-Fried-Basil-Original.jpg",
    "กระเพราไก่ไขดาว",
    60
  ],
  [
    "https://f.ptcdn.info/498/071/000/qjaltv5ysvrEcYaNBrb-o.jpg",
    "ไก่ทอดกระเทียม",
    60
  ],
  [
    "https://img.kapook.com/u/surauch/cook1/ThaiFood-7.jpg",
    "ไก่ผัดช่า",
    70
  ],
  [
    "https://menuforeat.com/wp-content/uploads/2021/09/3-8.jpg",
    "แกงเขียวหวาน",
    70
  ],
  [
    "https://www.maephorncurry.com/wp-content/uploads/2018/03/yellow-curry-chicken-massaman-maephorn-curry.jpg",
    "แกงมัสมั่นไก่",
    80
  ],
  [
    "https://img.wongnai.com/p/1920x0/2019/12/06/e053d875a93844ce91ef0c2d9a376143.jpg",
    "แกงส้มน่อไม้",
    80
  ]

];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index){

        return Card(
          elevation: 1,
          child: Container(
            height: 100,
            width:double.infinity,
            child: Stack(
              children: [

                Row(
                  children: [
                    Image.network(foodLists[index][0],
                    fit: BoxFit.cover,
                    width: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${foodLists[index][1]}฿",
                            style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 5,),
                            Text("${foodLists[index][2]}฿",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                            ),
                            )
                          ],
                        ),
                      ),
                    )
                    
                  ],
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical:5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    label: Text("สั่ง"),
                  ),
                ),
                
              ],
            ),
           
         ),
        );
      },
    );
  }
}

