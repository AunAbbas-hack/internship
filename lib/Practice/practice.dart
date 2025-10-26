void main(){
var cultus=Car("civic", "Honda");

print(cultus.CapitalName());
print(cultus.company);

var name=List.filled(3, "",growable: true);
name[0]="aun";


print(name);
name.add("abbas");
print(name);

String a="aun Abbas";
print(a);
print(a.length);
print(a.length-1);
print(a.substring(0,a.length-1));
}

class Car{

  String name="";
  String company="";
  Car(String name,String company){
    this.name=name;
    this.company=company;
  }
//Method   method must have a return type method name and bodyand argument if needed
  String CapitalName(){
    return name[0].toUpperCase()+name.substring(1);
  }
}
