import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 25.0,
        horizontal: 30.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: const Color(0xff6750a4).withOpacity(.08),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextField(
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              //
            },
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextButton(
            style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(0, 50.0)),
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
            ),
            onPressed: () {},
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
