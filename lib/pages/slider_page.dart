import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 150;
  bool _checkValue = false;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              value: _sliderValue,
              min: 100,
              max: 500,
              activeColor: AppTheme.primary,
              onChanged: _checkValue
                  ? (value) {
                    _sliderValue = value;
                    setState(() {});
              }
              :null
          ),
        /*  Checkbox(
              value: _checkValue ,
              onChanged: (value) {
                _checkValue = !_checkValue;
                setState(() {});
              }
          ),
          CheckboxListTile(
              title: Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _checkValue ,
              onChanged: (value) {
                _checkValue = !_checkValue;
                setState(() {});
              }
          ),
          Switch(
              activeColor: AppTheme.primary,
              value: _checkValue,
              onChanged: (value) {
                  _checkValue = !_checkValue;
                  setState(() {});
                }
              ), */
          SwitchListTile.adaptive(
              title: Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _checkValue,
              onChanged: (value) {
                _checkValue = !_checkValue;
                setState(() {});
              }
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(image: NetworkImage('https://w7.pngwing.com/pngs/791/718/png-transparent-batman-superman-diana-prince-dc-animated-universe-drawing-batman-comics-heroes-superhero.png'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
              ),
            ),
          ),
        ],
      )
    );
  }
}