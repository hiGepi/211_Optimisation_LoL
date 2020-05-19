function Char = Duplication(Char)
% On duplique alors les 50 Chars aux meilleurs statistiques
    for i = 1:50
        Char(1,50+i) = Char(1,i);
    end
end