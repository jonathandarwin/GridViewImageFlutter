import 'package:display_image/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:display_image/main_model.dart';
import 'package:display_image/detail/detail.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeLayout extends StatelessWidget{  

  @override
  Widget build(BuildContext context) {
    HomeBloc _bloc = HomeBloc();
    List<MainModel> listModel = _bloc.getListModel();

    return Scaffold(
      appBar: AppBar(
        title: Text('Display Image'),
      ),
      body: GridView.count(           
          crossAxisCount: 2,
          children: List.generate(listModel.length, (i) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => DetailLayout(listModel[i])
                  ));
              },
              child: Padding(                                            
                padding: EdgeInsets.all(10.0),                              
                  child: Material(                       
                    color: Colors.white,
                    elevation: 20.0,                                    
                      child: Column(                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(listModel[i].getImage()),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: AutoSizeText(listModel[i].getTitle(),       
                              overflow: TextOverflow.ellipsis, 
                              maxLines: 1,                          
                              style : TextStyle(
                                fontWeight: FontWeight.bold
                              )),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Click here >> ',
                              style : TextStyle(
                                color: Colors.grey
                              )),
                            ),
                          )
                        ],
                      ),
                    )              
              ),
            );
          })
        ),      
    );    
  }
}