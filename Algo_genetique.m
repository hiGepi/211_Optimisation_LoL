%%%%%%%%%%%%%%%%%%%%%%%%%%%%%**%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vidéo League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

import Character
import Spell

%% Algorithme génétique
% Création de l'algorithme d'évolution génétique en fonction des résultats
% des combats

Personnage(1,1:100) = Character;

% Création d'une population de 100 personnage ayant chacun 1000 pièces d'or
% réparties aléatoirement en statistiques
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
