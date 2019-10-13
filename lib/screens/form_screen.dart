import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: PageView(
              controller: pageController,
              onPageChanged: (selectedPage) {
                currentPage = selectedPage;
              },
              children: <Widget>[
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.deepOrangeAccent,
                          ),
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          hintText: 'Enter your username',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          filled: true,
                          fillColor: Colors.amberAccent[100],
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.deepOrangeAccent,
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          filled: true,
                          fillColor: Colors.amberAccent[100],
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Colors.deepOrangeAccent,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          filled: true,
                          fillColor: Colors.amberAccent[100],
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Colors.deepOrangeAccent,
                          ),
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          hintText: 'Enter your confirm password',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          filled: true,
                          fillColor: Colors.amberAccent[100],
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          MaterialButton(
                            color: Colors.deepPurpleAccent,
                            minWidth: 100,
                            height: 40,
                            elevation: 9,
                            onPressed: () {
                              pageController.jumpToPage(1);
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.blueAccent[700],
                          ),
                          labelText: 'Facebook',
                          labelStyle: TextStyle(color: Colors.blueAccent[700]),
                          hintText: 'Enter your facebook handle',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          filled: true,
                          fillColor: Colors.amberAccent[100],
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                          labelText: 'Twitter',
                          labelStyle: TextStyle(color: Colors.black54),
                          hintText: 'Enter your twitter handle',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          filled: true,
                          fillColor: Colors.amberAccent[100],
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.deepOrangeAccent,
                          ),
                          labelText: 'Instagram',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          hintText: 'Enter your instagram handle',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent),
                          ),
                          filled: true,
                          fillColor: Colors.amberAccent[100],
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          MaterialButton(
                            color: Colors.deepPurpleAccent,
                            minWidth: 100,
                            height: 40,
                            elevation: 9,
                            onPressed: () {
                              pageController.jumpToPage(0);
                            },
                            child: Text(
                              'Previous',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          MaterialButton(
                            color: Colors.deepPurpleAccent,
                            minWidth: 100,
                            height: 40,
                            elevation: 9,
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 25),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '1. Basic Info',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
                Text(
                  '2. Bio',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
