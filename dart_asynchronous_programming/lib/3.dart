import "dart:async";

Future<void> fetchItem(list, index) async {
  var requiredValue = "No matches";
  Future.delayed(const Duration(seconds: 1), (){
    for(int i = 0; i < list.length; i++){
      if(i == index){
        requiredValue = list[i];
      }
    }
    print(requiredValue);
  });
}

Future<void> getItemStream(list) async{
  for(int i = 0; i < list.length; i++){
    await fetchItem(list, i);
  }
}

Future<void> main() async {
  const items = [
    "Async",
    "Yield",
    "Generator",
    "Await",
    "Method",
  ];

  //await fetchItem(items, 3);
  await getItemStream(items);
}