import 'package:flutter/material.dart';
import 'package:parcial_crud03/pages/cliente_page.dart';
import 'package:parcial_crud03/pages/vuelos_page.dart';
//mport 'package:parcial03_crud/pages/viewclientes_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(              
        body: Stack(
          children: <Widget>[  
            banners(),
            body(),
            
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 220),
              padding: EdgeInsets.all(90.0),
              child: GridView.count(crossAxisCount: 2,
              children: <Widget>[
                Card(
                  color: Colors.teal.shade300,
                  margin: EdgeInsets.all(8.0) ,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ClientePage()));
                    },
                    splashColor: Colors.amber.shade100,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min ,
                        children: <Widget>[
                          Icon(Icons.calendar_today, size:100,),
                          Text("Clientes", style :new TextStyle(fontSize:25 ))
                        ],
                      ),
                    ),
                  ),
                ),
                 Card(
                  color: Colors.teal.shade300,
                  margin: EdgeInsets.all(8.0) ,
                  child: InkWell(
                    onTap: (){
                     //Navigator.push(context, MaterialPageRoute(builder: (context) => PerfilmedicoPage()));
                    },
                    splashColor: Colors.teal.shade400,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min ,
                        children: <Widget>[
                          Icon(Icons.person_search_rounded , size:100,),
                          Text("Reservas", style :new TextStyle(fontSize:25))
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.teal.shade300,
                  margin: EdgeInsets.all(8.0) ,
                  child: InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => HistoriacitaPage()));
                    },
                    splashColor: Colors.amber.shade100,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min ,
                        children: <Widget>[
                          Icon(Icons.update_rounded, size:100,),
                          Text("Avion", style :new TextStyle(fontSize:23.3 ))
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color:Colors.teal.shade300,
                  margin: EdgeInsets.all(8.0) ,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VuelosPage()));
                    },
                    splashColor: Colors.amber.shade100,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min ,
                        children: <Widget>[
                          Icon(Icons.date_range, size:100),
                          Text("Vuelos", style :new TextStyle(fontSize:23.2 ))
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.teal.shade300,
                  margin: EdgeInsets.all(8.0) ,
                  child: InkWell(
                    onTap: (){

                    },
                    splashColor: Colors.amber.shade100,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min ,
                        children: <Widget>[
                          Icon(Icons.groups, size:100,),
                          Text("destinos", style :new TextStyle(fontSize:25 ))
                        ],
                      ),
                    ),
                  ),
                ),
                 Card(
                  color: Colors.teal.shade300,
                  margin: EdgeInsets.all(8.0) ,
                  child: InkWell(
                    onTap: (){

                    },
                    splashColor: Colors.amber.shade100,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min ,
                        children: <Widget>[
                          Icon(Icons.announcement_rounded, size:100,),
                          Text("Horarios", style :new TextStyle(fontSize:25 ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],),
            ),
            
          ],
        ),
      );
  }
 

}


Widget banners(){
  return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade200,
                    Colors.amber.shade200,
                  ],
                ),
              ),
              child: Image.network("https://images.ecestaticos.com/6RHYRtvpFB4RICXxYOPZ4x40mAs=/115x0:2001x1410/1200x900/filters:fill(white):format(jpg)/https://f.elconfidencial.com/original/4a4/ab7/874/4a4ab78742743f3a85916eeee191cc18.jpg", height: 235, fit: BoxFit.cover,),
            );
}


Widget body(){
  
  return Container(
    
                  transform: Matrix4.translationValues(0, 200, 1),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade200,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                    )
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 15,),
                      
                      //Icon(Icons.person_add_alt_1),
                      
                      Text('Parcial 03: Aerolinea',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 15,),
                      
                      Text('Administrar una opción',style: TextStyle(fontSize: 20),)
                      
                    ],
                    )
                  ],
                  ),
                );
               
}