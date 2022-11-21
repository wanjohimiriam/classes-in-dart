
// init
List <Animal> animals = <Animal>[];

void main(){
  // init variables
  var name1= 'Harry';
  var kind1= AnimalKind.Dog;
  var name2 = "Ian";
  var kind2 = AnimalKind.Cat;
  var name3 = "Brunoh";
  var kind3 = AnimalKind.Bird;

  // code functional

  try{
    registerAnimal(name1, kind1);
  } catch(e){
    print(e);
  }

  try{
    registerAnimal(name2, kind2);
  } catch(e){
    print(e);
  }

  try{
    registerAnimal(name3, kind3);
  } catch(e){
    print(e);
  }

  animals.forEach((animal){
    animal.makeSound();
    
  });
  
  // conclusion
  print(animals);
}

void registerAnimal(String name, AnimalKind kind){
  
  Animal animal = new Animal(name, kind);
  print(animal.kindString);
  animals.add(animal);
  print("Animal Registered");
}

class Animal {
  final String name;
  late AnimalKind _kind;
  late final String _sound;

//getter
  AnimalKind get kind {
    return _kind;
  }
//setter  
  set kind(AnimalKind value){

    if(value == null)
  {
    throw new ArgumentError("This Kind is empty, please provide the kind");
  }

    this._kind= value;
  }
// arrow/ lambda function
  String get kindString => this._kind.toString().split('.')[1];


// constructor
  Animal(this.name, AnimalKind kind){
    if( name == "")
  {
    throw new ArgumentError("The name was empty, please provide the name");
  }
  this.kind= kind;
  this._determineSound(this.kind);

  }
//methods
  void _determineSound (AnimalKind kind,){
    if(kind== AnimalKind.Dog){
      _sound= "wooef";
    }
    else if(kind == AnimalKind.Cat){
      _sound= "mew mew";
   }
    else
    {
      _sound= "Unknown";
    }
  }
 // method 
  void makeSound()
  {
    print(_sound);
  }
// override methods
  @override
  String toString() {
    return '$name the $kindString';
  }

}
//enumerators

enum AnimalKind{
  Dog,
  Cat,
  Bird,
}