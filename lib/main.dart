import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math' as math;import 'dart:math' as math;
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adega Mendes',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF65FF78,
          <int, Color>{
            50: Color(0xFF65FF78),
            100: Color(0xFF65FF78),
            200: Color(0xFF65FF78),
            300: Color(0xFF65FF78),
            400: Color(0xFF65FF78),
            500: Color(0xFF65FF78),
            600: Color(0xFF65FF78),
            700: Color(0xFF65FF78),
            800: Color(0xFF65FF78),
            900: Color(0xFF65FF78),
          },
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadScreen();
  }

  Future<void> _loadScreen() async {
    // Simulando algum trabalho assíncrono
    await Future.delayed(Duration(seconds: 2));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF65FF78),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/logo.png', // Substitua pelo caminho real do seu logotipo
            width: 200,
            height: 200,
          ),
          SizedBox(height: 200), // Ajuste o espaçamento conforme necessário
          SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _loginButtonPressed() {
    // Aqui você pode adicionar lógica de autenticação, se necessário.

    // Após a autenticação bem-sucedida, redirecione para a página Home.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Altura desejada da AppBar
        child: AppBar(
          title: Image.asset(
            'assets/logo.png',
            width: 40,
            height: 40,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            16.0, MediaQuery.of(context).padding.top + 80.0, 16.0, 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width *
                  0.5, // 50% da largura da tela
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF65FF78),
                    ),
                  ),
                  SizedBox(height: 150),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Usuário ou E-mail',
                      filled: true,
                      fillColor: Color(0xFFF1F5F4), // Background color
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15.0), // BorderRadius
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      filled: true,
                      fillColor: Color(0xFFF1F5F4), // Background color
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15.0), // BorderRadius
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: _loginButtonPressed,
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF65FF78),
                    ),
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 357.0),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Color(0xFF65FF78), // Cor da linha
            ),
            SizedBox(height: 8.0),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  // Adicione aqui a navegação para a página de cadastro
                },
                style: TextButton.styleFrom(
                  primary: Color(0xFF65FF78),
                ),
                child: Text("Não tem uma conta? CADASTRE-SE"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator HomeWidget - FRAME
            return Container(
      width: 390,
      height: 844,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 28,
        left: 0,
        child: Container(
      width: 390.03204345703125,
      height: 120,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 73,
        child: Container(
      width: 243,
      height: 99.42153930664062,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 35,
        left: 66,
        child: Container(
        width: 120,
        height: 90,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/vapo.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 60,
        height: 99.42153930664062,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/teste.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 120,
        left: 0,
        child: Transform.rotate(
        angle: -9.93923337957349e-17 * (math.pi / 180),
        child: Divider(
        color: Color.fromRGBO(81, 232, 142, 1),
        thickness: 1
      )
      ,
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 781,
        left: 0,
        child: Container(
      width: 390.03204345703125,
      height: 54,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Transform.rotate(
        angle: -9.93923337957349e-17 * (math.pi / 180),
        child: Divider(
        color: Color.fromRGBO(81, 232, 142, 1),
        thickness: 1
      )
      ,
      )
      ),Positioned(
        top: 4,
        left: 23,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/Home1.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 4,
        left: 122,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/Search1.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 4,
        left: 219,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/Cart1.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 4,
        left: 316,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/Profile1.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 169,
        left: 51,
        child: Text('Escolha a marca', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 28,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 251,
        left: 23,
        child: Container(
      width: 90,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 4,
        left: 5,
        child: Container(
        width: 80,
        height: 82,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/elfbar.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 3,
        child: Text('ELFBAR', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 251,
        left: 152,
        child: Container(
      width: 90,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 0.7500057220458984,
        left: 0.75,
        child: Container(
        width: 89.25,
        height: 89.25,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/ignite.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 3,
        child: Text('IGNITE', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 422,
        left: 20,
        child: Container(
      width: 90,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 27.749996185302734,
        left: 3,
        child: Container(
        width: 84.70584869384766,
        height: 36,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/zomo.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 6,
        child: Text('ZOMO ', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 251,
        left: 275,
        child: Container(
      width: 90,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 3.9999847412109375,
        child: Container(
        width: 80,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 16.499996185302734,
        left: 2.2737367544323206e-13,
        child: Container(
        width: 90,
        height: 57.66039276123047,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/podmate.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 2,
        child: Text('NASTY ', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 595,
        left: 22,
        child: Container(
      width: 90,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 3.7499942779541016,
        left: 6,
        child: Container(
        width: 82.5,
        height: 82.5,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/veiik.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 3,
        child: Text('VEIIK', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 422,
        left: 266,
        child: Container(
      width: 115,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 12,
        child: Container(
        width: 90,
        height: 84.375,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 8,
        left: 24,
        child: Container(
        width: 74,
        height: 68,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/waka.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 0,
        child: Text('WAKA', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 422,
        left: 139,
        child: Container(
      width: 115,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 10,
        child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 21,
        child: Container(
        width: 70,
        height: 85,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/lostvape.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 0,
        child: Text('LOST VAPE', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 595,
        left: 269,
        child: Container(
      width: 109,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 11,
        child: Container(
        width: 89.2562026977539,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 15,
        child: Container(
        width: 79,
        height: 93,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/vapesoul.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 0,
        child: Text('VAPESOUL', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 595,
        left: 150,
        child: Container(
      width: 89.9999771118164,
      height: 111,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0.7437744140625,
        child: Container(
        width: 89.2562026977539,
        height: 90,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(81, 232, 142, 1),
  )
      )
      ),Positioned(
        top: 0.7500057220458984,
        left: 0,
        child: Container(
        width: 87.76859283447266,
        height: 88.5,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/maxbar.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 93,
        left: 0,
        child: Text('MAXBAR', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(160, 160, 160, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),
        ]
      )
    );
          }
        }
        
