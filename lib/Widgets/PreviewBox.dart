import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_comps/Screens/screens.dart';
import 'widgets.dart';
class PreviewBox extends StatelessWidget {
  final int index;
  const  PreviewBox({Key? key,required this.index}) : super(key: key);
  static List<Widget> components=[CircularInputContainer(label: 'Example'),CircularButton(label: 'Button', onPressed: ()=>{

  })];
  static List<String> labels=['Circular Input Container','Circular Button'];
  @override
  Widget build(BuildContext context) {
    return
        InkWell(
          focusColor: Colors.white,
          hoverColor: Colors.white,
          onTap: ()=>{
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              CodeScreen(widget: components[index],),
          )),
          },

           child:   Container(
                margin:const  EdgeInsets.all(15),
                padding:const  EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey[200],
                  borderRadius:const BorderRadius.all(Radius.circular(20.0)),
                ),
                child:Column(children: [
                  Container(
                    alignment: Alignment.center,
                    width: 500,
                    child:
                      index <= 1 ? components[index] : const Text('Coming soon'),
                  ),
                  const SizedBox(height: 10,),
                  Text(index<=1? labels[index]:'Coming Soon'),
                ],),

              ),
          );

  }
}
