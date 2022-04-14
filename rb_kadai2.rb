$game_over_flag = 0

#あっちむいてホイメソッド
def attcimuite_hoi(winner)
  typo_flag = 1

  while typo_flag === 1 do
    puts "あっちむいて、、"
    puts "0.「上」  1.「右」  2.「下」  3.「左」"
    my_choice = gets.to_i
    opponent_choice = Random.rand(4)
    if my_choice === 0
      my_direction = "上"
    elsif my_choice === 1
      my_direction = "右"
    elsif my_choice === 2
      my_direction = "下"
    elsif my_choice === 3
      my_direction = "左"
    else
     my_direction = "-"
    end

    if opponent_choice === 0
      opponent_direction = "上"
    elsif opponent_choice === 1
      opponent_direction = "右"
    elsif opponent_choice === 2
      opponent_direction = "下"
    elsif opponent_choice === 3
     opponent_direction = "左"
    end

    puts "----------------------"
    puts "ホイ！"
    puts "自分『#{my_direction}』"
    puts "相手『#{opponent_direction}』"
    puts "----------------------"

    if my_choice === opponent_choice
     puts "[#{winner}の勝ち！!]"
      typo_flag = 0
      $game_over_flag = 1
    elsif my_direction === "-"
      puts "正しい値を入力してください"
    else
      typo_flag = 0
      puts "ジャンケン、、、"
    end
  end
end
# ____________________________

#ここからスタート
puts "最初はグー、ジャンケン、、"

while $game_over_flag === 0 do
  puts "0.「グー」  1.「チョキ」  2.「パー」  3.「勝負しない」"
  my_choice = gets.to_i
  opponent_choice = Random.rand(3)
  if my_choice === 0
    my_result = "グー"
  elsif my_choice === 1
    my_result = "チョキ"
  elsif my_choice === 2
    my_result = "パー"
  elsif my_choice === 3
    puts "終了します"
    break
  else
    my_result = "-"
  end

  if opponent_choice === 0
    opponent_result = "グー"
  elsif opponent_choice === 1
    opponent_result = "チョキ"
  elsif opponent_choice === 2
    opponent_result = "パー"
  end

  puts "----------------------"
  puts "ホイ！"
  puts "自分『#{my_result}』"
  puts "相手『#{opponent_result}』"
  puts "----------------------"
  if my_choice === 0 && opponent_choice === 1
    attcimuite_hoi("自分")
  elsif my_choice === 0 && opponent_choice === 2
    attcimuite_hoi("相手")
  elsif my_choice === 1 && opponent_choice === 0
    attcimuite_hoi("相手")
  elsif my_choice === 1 && opponent_choice === 2
    attcimuite_hoi("自分")
  elsif my_choice === 2 && opponent_choice === 0
    attcimuite_hoi("自分")
  elsif my_choice === 2 && opponent_choice === 1
    attcimuite_hoi("相手")
  elsif my_choice === opponent_choice
    puts "あいこで、、"
  else
    puts "正しい値を入力してください"
  end
end