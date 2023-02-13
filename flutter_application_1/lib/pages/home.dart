import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/register.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
            child: SizedBox(
                width: 250,
                height: 250,
                child: Image.asset('assets/images/logo_color.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 350,
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Login()));
                    },
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      'Google',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: MaterialButton(
                    color: Colors.blueAccent,
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Login()));
                    },
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 3, color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      'Facebook',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: MaterialButton(
                    color: Colors.white,
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Register()));
                    },
                    textColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Entrar como invitado',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Entrar como vendedor',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¿Ya tienes una cuenta? ',
                        style: TextStyle(fontSize: 16),
                      ),
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Login()));
                        },
                        child: const Text(
                          'Iniciar sesion',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
