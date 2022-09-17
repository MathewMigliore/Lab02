void main(){
  Player p = Player(name: "Hero", hp: 100, defense: 100, magicDamage: 10, mana: 10);
  
  Enemy e = Enemy(name: "Boss", hp: 100, defense: 100, attackPower: 12, stamina: 10);
 
  print("${p.mana}");
  print("${p.name} does ${p.castSpell(p, e)} points of magic damage!");
  print("${e.name} does ${e.attack(p, e)} points of attack damage!");
  print("${p.mana}");

}
class Character {
  String? name;
  int hp = 0;
  int defense = 0;
  
  Character({this.name, this.hp=0, this.defense=0});
}

class Player extends Character with Magic {
  Player({name, hp, magicDamage, mana, defense}) 
            : super(name: name, hp: hp, defense: defense) {
    this.mana = mana;
    this.magicDamage = magicDamage;
  }
  
  
}

class Enemy extends Character with Melee {
  Enemy({name, hp, attackPower, stamina, defense}) 
           : super(name: name, hp: hp, defense: defense) {
    this.stamina = stamina;
    this.attackPower = attackPower;
  }
}

class Magic{
  int mana = 0;
  int magicDamage = 0;
  
  
  int castSpell(Character characterAttacker, Character characterDefender){
    
    mana-=10;
    characterDefender.hp -= (characterDefender.defense - magicDamage);
    return magicDamage;
    
  }
}

class Melee{
  int stamina = 0;
  int attackPower = 0;
  int attack(Character characterAttacker, Character characterDefender){
    
    stamina-=10;
    characterDefender.hp -= (characterDefender.defense - attackPower);
    return (attackPower);
    
  }
}