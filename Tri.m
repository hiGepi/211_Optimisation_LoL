function Char = Tri(Char)
% Tri à bulle pour réorganiser le tableau en fonction du nombre de victoire
% de duels
    for i = 1:99           
        for j = 1:99
            if Char(1,j+1).Win_count > Char(1,j).Win_count
                Bulle = Char(1,j);
                Char(1,j) = Char(1,j+1);
                Char(1,j+1) = Bulle;
            end
        end
    end
end