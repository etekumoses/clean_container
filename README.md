
# clean_container

clean container package lets you add a beautiful gradient container to your Flutter app.

## Installation 

1. Add the latest version of the clean_container package to your pubspec.yaml (and run`dart pub get` or run `flutter pub get`):
```yaml
dependencies:
  clean_container: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:clean_container/clean_container.dart';
```

## Example
There are a number of properties that you can modify:

 - height
 - width
 - radius               
 - heading 
 - subheading
 - gradient (color1 and color2)

<hr>

<table>
<tr>
<td>

```dart
class CleanScreen extends StatelessWidget {  
  const CleanScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: const CleanContainer(  
          heading: 'Testing', 
          radius: 10, 
          color1: Colors.lightGreenAccent,  
          color2: Colors.lightBlue,  
          subheading: 'This is a new package',  
        ),  
      ),  
    );  
  }  
}
```

</td>
<td>
<img  src="https://user-images.githubusercontent.com/53579386/126896556-911d4778-04cd-49bf-b32a-01a6eb3b0155.jpeg"  alt="">
</td>
</tr>
</table>

## Next Goals
 - [x] Add background image.
 Changing the container background image.

 - [x] Add onTap for functions.
 Now, you can specify the onTap and specify a function.
 
 - [x] Change font and color style for text.
 Change color by specifying `textcolor` and `subheadingcolor` properties.
 
 - [ ] Add more containers to the package.