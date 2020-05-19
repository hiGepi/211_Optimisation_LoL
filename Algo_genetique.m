%%%%%%%%%%%%%%%%%%%%%%%%%%%%%**%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vid�o League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

import Character
import Spell

%% Algorithme g�n�tique
% Cr�ation de l'algorithme d'�volution g�n�tique en fonction des r�sultats
% des combats

Personnage(1,1:100) = Character;

% Cr�ation d'une population de 100 personnage ayant chacun 1000 pi�ces d'or
% r�parties al�atoirement en statistiques
for i = 1:100
    Personnage(1,i).HP = 500;
    Personnage(1,i).AD = 70;
    Personnage(1,i).AP = 0;
    Personnage(1,i).Armor = 50;
    Personnage(1,i).AS = 0.7;
    Personnage(1,i).Gold = 1000;
    Personnage(1,i).Win_count = 0;
    
    Personnage(1,i).C_HP = rand();
    Personnage(1,i).C_Armor = (1-Personnage(1,i).C_HP)*rand();
    Personnage(1,i).C_AD = (1-Personnage(1,i).C_HP-Personnage(1,i).C_Armor)*rand();
    Personnage(1,i).C_AP = (1-Personnage(1,i).C_HP-Personnage(1,i).C_Armor-Personnage(1,i).C_AD)*rand();
    Personnage(1,i).C_AS = 1-Personnage(1,i).C_HP-Personnage(1,i).C_Armor-Personnage(1,i).C_AD-Personnage(1,i).C_AP;
    
    Personnage(1,i).buy_stats;
end

for i = 1:1
    Personnage = Duel(Personnage);
    Personnage = Tri(Personnage);
    Personnage = Duplication(Personnage);
    Personnage = Reset_stats(Personnage);
    Personnage = Enjambement(Personnage);
    for j = 1:100
        Personnage(1,j).buy_stats;
    end
end

% Personnage = Duel(Personnage);
% Personnage = Tri(Personnage);
