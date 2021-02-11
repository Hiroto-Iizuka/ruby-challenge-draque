require './character'

class Brave < Character

  def attack(monster)
    puts "#{@name}の攻撃!"
    damage = @offense - monster.defense / 2
    damage = 0 if damage < 0
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
    puts "#{monster.name}に#{damage}のダメージを与えた！"
  end
end