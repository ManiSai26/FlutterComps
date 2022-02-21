import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_comps/Screens/screens.dart';
import 'widgets.dart';
class PreviewBox extends StatelessWidget {
  final int index;
  const  PreviewBox({Key? key,required this.index}) : super(key: key);
  static List<Widget> components=[CircularInputContainer(label: 'Example')];
  static List<String> labels=['Circular Input Container'];
  @override
  Widget build(BuildContext context) {
    return
        InkWell(
          focusColor: Colors.white,
          hoverColor: Colors.white,
          onTap: ()=>{
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              CodeScreen(),
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
                  index <= 0 ? components[index] : const Text('Coming soon'),
                  const SizedBox(height: 10,),
                  Text(index<=0? labels[index]:'Coming Soon'),
                ],),

              ),
          );

  }
}
