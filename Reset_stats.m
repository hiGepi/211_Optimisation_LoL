function Char = Reset_stats(Char)
% On réinitialise les statistiques en vu de les racheter avec les nouveaux
% coefficients de l'enjambement
    for i = 1:100
        Char(1,i).HP = 500;
        Char(1,i).AD = 70;
        Char(1,i).AP = 0;
        Char(1,i).Armor = 50;
        Char(1,i).AS = 0.7;
        Char(1,i).Gold = 1000;
        Char(1,i).Win_count = 0;
    end
end

