  // readData is to read user count db and update depending on passed val
  static void readData(String operation) async {
    // int val = 0;
    await FirebaseDatabase(databaseURL: "https://usercount31j3.firebaseio.com/")
        .reference()
        .once()
        .then((DataSnapshot snapshot) {
      // print('Data: ===== ${snapshot.value["count"]["count"]}');
      int val = snapshot.value["count"]["count"];
      if (operation == "add") {
        Globals.updateCount(val + 1);
      } else {
        Globals.updateCount(val - 1);
      }
    });
  }


  static void updateCount(int users) {
    FirebaseDatabase(databaseURL: "https://usercount31j3.firebaseio.com/")
        .reference()
        .child('count')
        .update({
          "count": users,
        });
      }
    }
