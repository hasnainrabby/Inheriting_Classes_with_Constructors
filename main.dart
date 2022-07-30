class Location{                                                             //All classes inherit the Object class.
 late  num alt,lng;
 //Constructor
Location(this.alt,this.lng);
} 

class ElevationLocation extends Location
{
  num elevation;
  ElevationLocation(num alt, num lng,this.elevation) : super(alt, lng);      //Call Location() Constructor from super/Parent Class.Because Constructor cann't inherit sub class.

@override
  String toString() {                                                       // override toString() method because of this method using in Object class.

   var result = '$alt,$lng,$elevation';
    return result;
  }
}

main()
{
   var elevation = new ElevationLocation(240.25, -190.96,250);

   print(elevation.toString());
  // print('Location = ${elevation.alt},${elevation.lng},${elevation.elevation}');
}