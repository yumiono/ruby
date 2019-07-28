puts "最初はグー、じゃんけん"

def janken 
    puts "[0]グー,[1]チョキ,[2]パー"
    my_hand = gets.to_i
    program_hand = rand(3)

    jankens = ["グー","チョキ","パー"]
    puts "私の手:#{jankens[my_hand]}, あなたの手:#{jankens[program_hand]}"

    if my_hand == program_hand
        puts "あいこでしょ"
        return true 
    elsif(my_hand == 0 && program_hand == 1) || (my_hand == 1 && program_hand == 2) || (my_hand == 2 && program_hand == 0) 
        puts "私の勝ちです"
        return false
    else
        puts "あなたの勝ちです"
        return false
    end
end

next_game = true

while next_game
    next_game = janken
end