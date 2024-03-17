def janken(shout_count)
    if shout_count == 0
        puts "じゃんけん..."
        puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
        my_hand = gets.chomp.strip.to_i
        puts "ポイ"
        shout_count += 1
    else
        puts "あいこで〜"
        puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
        my_hand = gets.chomp.strip.to_i
        puts "ショ"
    end

    if my_hand == 3
        puts "戦わないことにしました"
        exit
    elsif my_hand < 0 || my_hand > 3
        puts "よくない値です。もう一度入力してください。"
        return janken(shout_count)  
    end

    enemy_hand = rand(3)

    case my_hand
    when 0
        puts "あなたは：グーを出しました"
    when 1
        puts "あなたは：チョキを出しました"
    when 2
        puts "あなたは：パーを出しました"
    when 3
        puts "あなたは：戦わないことにしました"
    end

    case enemy_hand
    when 0
        puts "相手:グーを出しました"
    when 1
        puts "相手:チョキを出しました"
    when 2
        puts "相手:パーを出しました"
    end

    if my_hand == enemy_hand
        return janken(shout_count)  
    elsif (my_hand == 0 && enemy_hand == 1) || (my_hand == 1 && enemy_hand == 2) || (my_hand == 2 && enemy_hand == 0)
        shout_count = 0
        direction_win(shout_count)
    else
        shout_count = 0
        direction_lose(shout_count)
    end
end

def direction_win(shout_count)
    puts "あっち向いて~"
    puts "0(上)1(下)2(左)3(右)"
    my_direction = gets.chomp.strip.to_i

    if my_direction < 0 || my_direction > 3
        puts "よくない値です。もう一度入力してください。"
        return direction(shout_count)
    end

    enemy_direction = rand(4)

    case my_direction
    when 0
        puts "あなたは：上"
    when 1
        puts "あなたは：下"
    when 2
        puts "あなたは：右"
    when 3
        puts "あなたは：左"
    end

    case enemy_direction
    when 0
        puts "相手:上"
    when 1
        puts "相手:下"
    when 2
        puts "相手:右"
    when 3
        puts "相手:左"
    end

    if my_direction == enemy_direction
        puts "あなたの勝ちです "
    else
        return janken(shout_count)
    end
end

def direction_lose(shout_count)
    puts "あっち向いて~"
    puts "0(上)1(下)2(左)3(右)"
    my_direction = gets.chomp.strip.to_i

    if my_direction < 0 || my_direction > 3
        puts "よくない値です。もう一度入力してください。"
        return direction(shout_count)
    end

    enemy_direction = rand(4)

    case my_direction
    when 0
        puts "あなたは：上"
    when 1
        puts "あなたは：下"
    when 2
        puts "あなたは：右"
    when 3
        puts "あなたは：左"
    end

    case enemy_direction
    when 0
        puts "相手:上"
    when 1
        puts "相手:下"
    when 2
        puts "相手:右"
    when 3
        puts "相手:左"
    end

    if my_direction == enemy_direction
        puts "あなたの負けです "
    else
        return janken(shout_count)
    end
end


shout_count = 0
janken(shout_count)