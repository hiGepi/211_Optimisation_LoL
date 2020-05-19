function Char = Enjambement(Char)
% On modifie alors les coefficients d'achats de statistiques des 50
% nouveaux spécimens entre eux
    for i = 1:25
        random_stat = ceil(5*rand());
        switch random_stat
            case 1
                C_out = Char(1,2*i).C_HP;
                Char(1,2*i).C_HP = Char(1,2*i-1).C_HP;
                Char(1,2*i-1).C_HP = C_out;
            case 2
                C_out = Char(1,2*i).C_AD;
                Char(1,2*i).C_AD = Char(1,2*i-1).C_AD;
                Char(1,2*i-1).C_AD = C_out;
            case 3
                C_out = Char(1,2*i).C_AP;
                Char(1,2*i).C_AP = Char(1,2*i-1).C_AP;
                Char(1,2*i-1).C_AP = C_out;
            case 4
                C_out = Char(1,2*i).C_Armor;
                Char(1,2*i).C_Armor = Char(1,2*i-1).C_Armor;
                Char(1,2*i-1).C_Armor = C_out;
            case 5
                C_out = Char(1,2*i).C_AS;
                Char(1,2*i).C_AS = Char(1,2*i-1).C_AS;
                Char(1,2*i-1).C_AS = C_out;
                
        end
        
        sum_in = Char(1,2*i-1).C_HP + Char(1,2*i-1).C_AD + Char(1,2*i-1).C_AP + Char(1,2*i-1).C_Armor + Char(1,2*i-1).C_AS;
        sum_out = Char(1,2*i).C_HP + Char(1,2*i).C_AD + Char(1,2*i).C_AP + Char(1,2*i).C_Armor + Char(1,2*i).C_AS;
        
%         Char(1,2*i).C_HP = Char(1,2*i).C_HP - (sum_out-1)/5;
%         Char(1,2*i).C_AD = Char(1,2*i).C_AD - (sum_out-1)/5;
%         Char(1,2*i).C_AP = Char(1,2*i).C_AP - (sum_out-1)/5;
%         Char(1,2*i).C_Armor = Char(1,2*i).C_Armor - (sum_out-1)/5;
%         Char(1,2*i).C_AS = Char(1,2*i).C_AS - (sum_out-1)/5;
%         
%         Char(1,2*i-1).C_HP = Char(1,2*i-1).C_HP - (sum_in-1)/5;
%         Char(1,2*i-1).C_AD = Char(1,2*i-1).C_AD - (sum_in-1)/5;
%         Char(1,2*i-1).C_AP = Char(1,2*i-1).C_AP - (sum_in-1)/5;
%         Char(1,2*i-1).C_Armor = Char(1,2*i-1).C_Armor - (sum_in-1)/5;
%         Char(1,2*i-1).C_AS = Char(1,2*i-1).C_AS - (sum_in-1)/5;

        Char(1,2*i).C_HP = Char(1,2*i).C_HP/sum_out;
        Char(1,2*i).C_AD = Char(1,2*i).C_AD/sum_out;
        Char(1,2*i).C_AP = Char(1,2*i).C_AP/sum_out;
        Char(1,2*i).C_Armor = Char(1,2*i).C_Armor/sum_out;
        Char(1,2*i).C_AS = Char(1,2*i).C_AS/sum_out;
        
        Char(1,2*i-1).C_HP = Char(1,2*i-1).C_HP/sum_in;
        Char(1,2*i-1).C_AD = Char(1,2*i-1).C_AD/sum_in;
        Char(1,2*i-1).C_AP = Char(1,2*i-1).C_AP/sum_in;
        Char(1,2*i-1).C_Armor = Char(1,2*i-1).C_Armor/sum_in;
        Char(1,2*i-1).C_AS = Char(1,2*i-1).C_AS/sum_in;
    end
end

