function handleComplete(event:Event):void {
  // Assuming 'data' is a dynamic object containing your data
  var data:Object = event.target.data;

  // Accessing a property that might not exist
  var userName:String = data.userName; // Potential error here

  // ... rest of your code that uses userName ...
}