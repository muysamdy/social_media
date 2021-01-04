import 'package:flutter/material.dart';
import 'package:social_media_app/data.dart';
import 'package:social_media_app/screen/home.dart';
import 'package:social_media_app/screen/login.dart';
import 'package:social_media_app/screen/profile.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 4 / 5);
    final curvePoint = Offset(size.width / 4, size.height);
    final centerPoint = Offset(size.width / 2, size.height * 4 / 5);
    final curvePoint1 = Offset(size.width * 3 / 4, size.height * 3 / 5);
    final rightPoint = Offset(size.width, size.height * 4 / 5);

    path.quadraticBezierTo(
      curvePoint.dx,
      curvePoint.dy,
      centerPoint.dx,
      centerPoint.dy,
    );

    path.quadraticBezierTo(
      curvePoint1.dx,
      curvePoint1.dy,
      rightPoint.dx,
      rightPoint.dy,
    );
    path.lineTo(size.width, 0);

    path.close();

    return path;

    throw UnimplementedError();
  }

  // CurveClipper update
  //
  // Whenever that is an update to CurveClipper this function will invoke
  // so we set it to false to never run.
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class CustomDrawer extends StatelessWidget {
  _drawOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 20.0),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200.0,
                width: double.infinity,
                image: AssetImage(
                  currentUser.backgroundImageUrl,
                ),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            currentUser.profileImageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          _drawOption(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            ),
          ),
          _drawOption(Icon(Icons.chat), "Chat", () {}),
          _drawOption(Icon(Icons.location_on), "Map", () {}),
          _drawOption(
            Icon(Icons.account_circle),
            "Your Profile",
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => ProfileScreen(
                  user: currentUser,
                ),
              ),
            ),
          ),
          _drawOption(Icon(Icons.settings), "Setting", () {}),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _drawOption(
                Icon(Icons.directions_run),
                "Logout",
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 4 / 5);
    final curvePoint = Offset(size.width / 2, size.height);

    final endPoint = Offset(size.width, size.height * 4 / 5);
    path.quadraticBezierTo(
      curvePoint.dx,
      curvePoint.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
