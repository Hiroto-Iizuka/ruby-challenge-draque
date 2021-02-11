require './brave'
require './monster'

# インスタンス生成
brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
# monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)

puts "#{monster.name}があらわれた！"


loop do
  brave.attack(monster) if monster.hp > 0
  monster.attack(brave) if brave.hp > 0
  
  puts <<~EOS
  *=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*
  EOS
  break if monster.hp <= 0
  break if brave.hp <= 0
end

if brave.hp == 0
  puts "#{brave.name}はしんでしまった！"
else
  puts "#{monster.name}をやっつけた！"
end