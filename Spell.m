%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vid�o League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% D�finition d'un sort

classdef Spell < Character
   % D�finition des sorts des personnages
   properties
        CD                % Temps de r�cup�ration du sort
        AD_Flat_Damage    % D�gats physiques basiques
        AP_Flat_Damage    % D�gats magiques basiques
        AD_Ratio          % Ratio d'augmentation des d�gats physiques
        AP_Ratio          % Ratio d'augmentation des d�gats magiques
        Armor_Ratio       % Ratio d'augmentation des d�gats avec l'armure
        MR_Ratio          % Ratio d'augmentation des d�gats avec la r�sistance magique
        HP_Ratio          % Ratio d'augmentation des d�gats avec les points de vie
        Resource_Ratio    % Ratio d'augmentation des d�gats avec la ressource
        Resource_Cost     % Co�t en ressource du sort
   end
   
   methods
        function self = Spell(CD, AD_Flat_Damage, AP_Flat_Damage, AD_Ratio, AP_Ratio, Armor_Ratio, MR_Ratio, HP_Ratio, Resource_Ratio)
            self.CD                % Temps de r�cup�ration du sort
            self.AD_Flat_Damage    % D�gats physiques basiques
            self.AP_Flat_Damage    % D�gats magiques basiques
            self.AD_Ratio          % Ratio d'augmentation des d�gats physiques
            self.AP_Ratio          % Ratio d'augmentation des d�gats magiques
            self.Armor_Ratio       % Ratio d'augmentation des d�gats avec l'armure
            self.MR_Ratio          % Ratio d'augmentation des d�gats avec la r�sistance magique
            self.HP_Ratio          % Ratio d'augmentation des d�gats avec les points de vie
            self.Resource_Ratio    % Ratio d'augmentation des d�gats avec la ressource
            self.Resource_Cost     % Co�t en ressource du sort
        end
   end
end

