function handleComplete(event:Event):void {
  var data:Object = event.target.data;

  // Safe way to access userName using a null check
  var userName:String = data ? data.userName : "";  

  //Alternative using hasOwnProperty:
  var userName:String = data && data.hasOwnProperty("userName") ? data.userName : "";

  // ... rest of your code that uses userName ...
}

//Illustrative example to show the difference
function showUserName(data:Object):void {
  trace("User Name (Null check): "+ (data ? data.userName : "Not available"));
  trace("User Name (hasOwnProperty): "+ (data && data.hasOwnProperty("userName") ? data.userName : "Not available"));
}

var myData:Object = {userName: "John Doe"};
showUserName(myData);

var myData2:Object = {};
showUserName(myData2);

var myData3:Object = null;
showUserName(myData3); 
