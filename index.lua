print("Please type 'p' for 'paper', 'r' for 'rock' or 's' for 'scissors'")
user_choice = ""

-- Returns a complete string of a choice based on a character
-- of a choice
function get_complete_string_choice(choice)
    if (choice == 'p') then
        return 'paper'
    elseif (choice == 'r') then
        return 'rock'
    end
    return 'scissors'
end

-- Provides one random computer choice
function get_computer_choice()
    math.randomseed(os.time())
    random = math.random()
    random_choice = math.floor(random * 3) + 1
    
    if (random_choice == 1) then
        return 'p'
    elseif (random_choice == 2) then
        return 'r'
    end
    return 's'
end

while (user_choice ~= "p" and user_choice ~= "r" and user_choice ~= "s")
do
    user_choice = io.read(1)
end

computer_choice = get_computer_choice()

if ((user_choice == 'p' and computer_choice == 'r') or (user_choice == 'r' and computer_choice == 's') or (user_choice == 's' and computer_choice == 'p')) then
    print("User win!")
elseif (user_choice == computer_choice) then
    print("Draw!");
else
    print("Computer win");
end

print("User selected: " .. get_complete_string_choice(user_choice))
print("Computer selected: " .. get_complete_string_choice(computer_choice))
