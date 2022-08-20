import 'package:flutter/material.dart'  ;
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'neu_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,

              ),
              //back button and menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(
                      child:Icon(Icons.arrow_back) ,
                    ),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(
                      child:Icon(Icons.menu) ,
                    ),
                  ),


                ],
              ),
              const SizedBox(
                height: 25,
              ),



              //cover art  artist name  song name
             NeuBox(child: 
             Column(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(8),
                   child: Image.asset('images/music.jpg'),
                 ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Fly me to the moon',
                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                         color: Colors.grey[700]),),
                         const SizedBox(height:6),
                         const Text('Qays',
                           style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold), ),
                       ],

                     ),
                     const Icon(Icons.favorite,
                     color: Colors.red,
                       size: 32,
                     )
                   ],
                 ),
               )
               ],
             ),
             ),
              const SizedBox(height: 40,),
              //start time  shuffle button  repeat button  end time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22')
                  ,

                ],
              ),
              const SizedBox(height: 40,),

              //liner progress par
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.5,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 40,

              ),

              //previous song  pause play  skip to the next song
              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                      child: NeuBox(
                        child: Icon(Icons.skip_previous,
                        size: 32,),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: NeuBox(
                          child: Icon(Icons.play_arrow,size: 32,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeuBox(
                        child: Icon(Icons.skip_next,size: 32,),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
