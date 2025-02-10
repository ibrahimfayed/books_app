import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/features/splash/presentaion/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin
//SingleTickerProviderStateMixin بيحدد الانسيابية
//single because i use here one animation
{
  
  late AnimationController animationcontroller;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {

    super.initState();
    animationcontroller = AnimationController(
      vsync:this,duration:const Duration(
        seconds: 1),//the animation will run for 1 minute
         );
    slidingAnimation =
      Tween<Offset>(
        begin:const Offset(0, 10),
        end:Offset.zero 
        ).animate(animationcontroller);//<here i put the type of values i want to return to me>     
   
   
  //  slidingAnimation.addListener((){
  //   setState(() {
      
  //   });
  //  });
   animationcontroller.forward();//You need to call animationcontroller.forward() to start the animation. 
  }
  @override
  void dispose() //to not operate all time
  {
    
    super.dispose();
    animationcontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        
        Center(
          child: Image.asset(
          width: 190,
          AssetsData.logo,
          fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}

