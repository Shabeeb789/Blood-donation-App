import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final bloodGroups = ['A+','A-','B+','B-','AB+','AB-','O+','O-'];
  String ? selectedGroup;

    CollectionReference donor = FirebaseFirestore.instance.collection('donor');

   TextEditingController donorName = TextEditingController();
  TextEditingController donorPhone = TextEditingController();

addDonor(){
  final data = {'name':donorName.text, 'phone': donorPhone.text, 'group':selectedGroup};
  donor.add(data);
}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Add Donors'),
        backgroundColor: Colors.red,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(

          children: [

             Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller:donorName, 
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Donor Name'),
                ),
              ),
            ),

              Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: donorPhone,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Phone Number'),
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('select your blood group'),
                ),
                items: bloodGroups.map((e) => DropdownMenuItem(child: Text(e.toUpperCase()),value: e,)).toList(),
                 onChanged: (val){
                selectedGroup = val as String?;
              }),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                addDonor();
                Navigator.pop(context);
              }, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 50))
              ),
              
              child: Text('Submit',style: TextStyle(fontSize: 20),)),
            ),


          ],
        ),
      ),


    );
  }
}