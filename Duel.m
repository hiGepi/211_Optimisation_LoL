function Char = Duel(Char)
% On fait s'affronter tous les Chars entre eux
    for i = 1:100
        for j = 1:100
            Char(1,i).fight_to_death(Char(1,j));
        end
    end
end