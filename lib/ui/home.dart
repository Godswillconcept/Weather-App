// ignore_for_file: deprecated_member_use, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'package:second_trial/widgets/responsive_button.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:second_trial/widgets/app_large_text.dart';
import 'package:second_trial/widgets/app_text.dart';



class GridViewList extends StatelessWidget {
  const GridViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view list'),
      ),
      // body: GridView(
      //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
      //   children: [
      //     Container(
      //       width: 150,
      //       height: 30,
      //       margin: EdgeInsets.all(20.0),
      //       padding: EdgeInsets.all(8.0),
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           color: Colors.grey.shade400,
      //           width: 2.0,
      //           style: BorderStyle.solid,
      //         ),
      //         borderRadius: BorderRadius.circular(14.0),
      //       ),
      //       child: Text(
      //         "Home",
      //         style: TextStyle(
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 150,
      //       height: 30,
      //       margin: EdgeInsets.all(20.0),
      //       padding: EdgeInsets.all(8.0),
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           color: Colors.grey.shade400,
      //           width: 2.0,
      //           style: BorderStyle.solid,
      //         ),
      //         borderRadius: BorderRadius.circular(14.0),
      //       ),
      //       child: Text(
      //         "Home",
      //         style: TextStyle(
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 150,
      //       height: 30,
      //       margin: EdgeInsets.all(20.0),
      //       padding: EdgeInsets.all(8.0),
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           color: Colors.grey.shade400,
      //           width: 2.0,
      //           style: BorderStyle.solid,
      //         ),
      //         borderRadius: BorderRadius.circular(14.0),
      //       ),
      //       child: Text(
      //         "Home",
      //         style: TextStyle(
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 150,
      //       height: 30,
      //       margin: EdgeInsets.all(20.0),
      //       padding: EdgeInsets.all(8.0),
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           color: Colors.grey.shade400,
      //           width: 2.0,
      //           style: BorderStyle.solid,
      //         ),
      //         borderRadius: BorderRadius.circular(14.0),
      //       ),
      //       child: Text(
      //         "Home",
      //         style: TextStyle(
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 150,
      //       height: 30,
      //       margin: EdgeInsets.all(20.0),
      //       padding: EdgeInsets.all(8.0),
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           color: Colors.grey.shade400,
      //           width: 2.0,
      //           style: BorderStyle.solid,
      //         ),
      //         borderRadius: BorderRadius.circular(14.0),
      //       ),
      //       child: Text(
      //         "Home",
      //         style: TextStyle(
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 150,
      //       height: 30,
      //       margin: EdgeInsets.all(20.0),
      //       padding: EdgeInsets.all(8.0),
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           color: Colors.grey.shade400,
      //           width: 2.0,
      //           style: BorderStyle.solid,
      //         ),
      //         borderRadius: BorderRadius.circular(14.0),
      //       ),
      //       child: Text(
      //         "Home",
      //         style: TextStyle(
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      body: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            padding: EdgeInsets.all(8.0),
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.grey.shade400,
            //     width: 2.0,
            //     style: BorderStyle.solid,
            //   ),
            //   borderRadius: BorderRadius.circular(14.0),
            // ),
              color: Colors.blue,
           
          );
        },
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['ad1.png', 'ad2.png', 'ad3.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/${images[index]}'),
                  // fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //App Reusable text
                            AppLargeText(
                              text: 'Trip',
                              color: Colors.white,
                              size: 32.0,
                            ),
                            AppText(
                              text: 'Mountain',
                              color: Colors.white70,
                              size: 32.0,
                            ),

                            //space
                            SizedBox(
                              height: 20.0,
                            ),

                            //App Reusable text
                            SizedBox(
                              width: 220,
                              child: AppText(
                                text:
                                    'lorem ipsum',
                                color: Colors.white38,
                              ),
                            ),

                            //Space
                            SizedBox(
                              height: 40.0,
                            ),

                            //Responsive button
                            // ResponsiveButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(images.length, (indexSlider) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 3.0),
                        height: 8.0,
                        width: (index == indexSlider) ? 25.0 : 8.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: (index == indexSlider)
                                ? Colors.blue.shade800
                                : Colors.grey),
                      );
                    }),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple List'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('AppTile'),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(
                '100+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomForm extends StatefulWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final dateController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Form'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Olatunji Abass'),
              accountEmail: Text('olatunjiabass01@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Name',
                    hintText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: 'Phone',
                    hintText: 'Enter a phone number',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    hintText: 'Enter a email address',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Enter a password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: TextFormField(
                  // keyboardType: TextInputType.datetime,
                  controller: dateController,

                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_month_outlined),
                    labelText: 'Dob',
                    hintText: 'Enter your date of birth',
                  ),
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1888),
                      lastDate: DateTime(2101),
                    );
                    if (pickeddate != null) {
                      setState(() {
                        dateController.text =
                            DateFormat('dd-MM-yyyy').format(pickeddate);
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid date';
                    }
                    return null;
                  },
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Alert Message'),
                              content: Text(
                                  'Name: ${nameController.text} \nEmail: ${emailController.text} \nPhone Number: ${phoneController.text} \nDOB: ${dateController.text} '),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('OK'))
                              ],
                            );
                          });
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Field Sample'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: surnameController,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Surname',
                      hintText: 'Enter Surname',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: lastNameController,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                      hintText: 'Enter Last Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: emailController,
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                      hintText: 'Enter Email Address',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    autofocus: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Sign in'),
                  onPressed: () {
                    debugPrint(
                        "Surname: ${surnameController.text} Last Name: ${lastNameController.text} \n Email: ${emailController.text} Password: ${passwordController.text}");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tutorial extends StatelessWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffff9a96),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child:
                      const Icon(Icons.timer, color: Colors.white, size: 140.0),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade900,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: const Icon(Icons.edit_note,
                      color: Colors.white, size: 140.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffff9a96),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child:
                      const Icon(Icons.timer, color: Colors.white, size: 140.0),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade900,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: const Icon(Icons.edit_note,
                      color: Colors.white, size: 140.0),
                ),
              ],
            ),
          ],
        ),
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       padding: const EdgeInsets.all(10.0),
      //       margin: const EdgeInsets.all(20.0),
      //       decoration: BoxDecoration(
      //         color: const Color(0xffb483ff),
      //         borderRadius: BorderRadius.circular(20.0),
      //       ),
      //       child: const Text('HTML'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(10.0),
      //       margin: const EdgeInsets.all(20.0),
      //       decoration: BoxDecoration(
      //         color: const Color(0xffb483ff),
      //         borderRadius: BorderRadius.circular(20.0),
      //       ),
      //       child: const Text('HTML'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(10.0),
      //       margin: const EdgeInsets.all(20.0),
      //       decoration: BoxDecoration(
      //         color: const Color(0xffb483ff),
      //         borderRadius: BorderRadius.circular(20.0),
      //       ),
      //       child: const Text('HTML'),
      //     ),
      //   ],
      // ),
      // body: Container(
      //   padding: const EdgeInsets.all(32.0),
      //   margin: const EdgeInsets.all(20.0),
      //   color: Colors.blueAccent,
      //   alignment: Alignment.centerLeft,
      //   width: double.infinity,
      //   height: 120,
      //   constraints: const BoxConstraints.expand(
      //     width: 500,
      //   ),
      //   transform: Matrix4.rotationZ(0.1),
      //   decoration: BoxDecoration(
      //     color: Colors.amber,
      //     border: Border.all(color: Colors.black, width: 3.0),
      //     borderRadius: BorderRadius.circular(16.0),
      //     boxShadow: const [
      //       BoxShadow(color: Colors.redAccent, offset: Offset(6.0, 6.0))
      //     ],
      //   ),
      //   child: const Text(
      //     'Hello Flutter',
      //     style: TextStyle(fontSize: 18.0),
      //   ),
      // ),
    );
  }
}
