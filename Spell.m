%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vidéo League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Définition d'un sort

classdef Spell < Character
   % Définition des sorts des personnages
   properties
        CD                % Temps de récupération du sort
        AD_Flat_Damage    % Dégats physiques basiques
        AP_Flat_Damage    % Dégats magiques basiques
        AD_Ratio          % Ratio d'augmentation des dégats physiques
        AP_Ratio          % Ratio d'augmentation des dégats magiques
        Armor_Ratio       % Ratio d'augmentation des dégats avec l'armure
        MR_Ratio          % Ratio d'augmentation des dégats avec la résistance magique
        HP_Ratio          % Ratio d'augmentation des dégats avec les points de vie
        Resource_Ratio    % Ratio d'augmentation des dégats avec la ressource
        Resource_Cost     % Coût en ressource du sort
   end
   
   methods
        function self = Spell(CD, AD_Flat_Damage, AP_Flat_Damage, AD_Ratio, AP_Ratio, Armor_Ratio, MR_Ratio, HP_Ratio, Resource_Ratio)
            self.CD                % Temps de récupération du sort
            self.AD_Flat_Damage    % Dégats physiques basiques
            self.AP_Flat_Damage    % Dégats magiques basiques
            self.AD_Ratio          % Ratio d'augmentation des dégats physiques
            self.AP_Ratio          % Ratio d'augmentation des dégats magiques
            self.Armor_Ratio       % Ratio d'augmentation des dégats avec l'armure
            self.MR_Ratio          % Ratio d'augmentation des dégats avec la résistance magique
            self.HP_Ratio          % Ratio d'augmentation des dégats avec les points de vie
            self.Resource_Ratio    % Ratio d'augmentation des dégats avec la ressource
            self.Resource_Cost     % Coût en ressource du sort
        end
   end
end

