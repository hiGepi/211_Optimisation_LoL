%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vidéo League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Définition d'un objet
%  Toutes les statistiques présentes ne seront pas forcément utilisées
classdef Object < Character
    
    properties
        % Définitions de ses propriétés
        HP              % Points de vie
        Resource        % Ressource utilisée pour l'activation de ses compétences (Mana ou énergie)
        HealthRegen     % Régénération de points de vie par seconde
        ResourceRegen   % Régénération des ressources par seconde
        AD              % Dégats physiques
        AP              % Dégats magiques
        Armor           % Défense contre les dégats physiques
        MagicResist     % Défense contre les dégats magiques
        AS              % Vitesse d'attaque (ratio)
        CritD           % Dégats des coup critique (ratio)
        CritC           % Chance de coup critique (ratio)
        LifeSteal       % Récupération de points de vie après avoir infligés des dégats avec une attaque de base (ratio)
        SpellVamp       % Récupération de points de vie après avoir infligés des dégats avec un sort (ratio)
        CDR             % Réduction des délais sur les sorts
        Cost            % Prix de l'objet
        ArmorPen        % Pénétration de la défense physique (ratio)
        MagicPen        % Pénétration de la défense magique (ratio)
    end
    
    methods
        % Intéractions avec le personnage
        function obj = Object(HP, Resource, HealthRegen, ResourceRegen, AD, AP, Armor, MagicResist, AS, CritD, CritC, LifeSteal, SpellVamp, CDR, Cost, ArmorPen, MagicPen);  
            self.HP              % Points de vie
            self.Resource        % Ressource utilisée pour l'activation de ses compétences (Mana ou énergie)
            self.HealthRegen     % Régénération de points de vie par seconde
            self.ResourceRegen   % Régénération des ressources par seconde
            self.AD              % Dégats physiques
            self.AP              % Dégats magiques
            self.Armor           % Défense contre les dégats physiques
            self.MagicResist     % Défense contre les dégats magiques
            self.AS              % Vitesse d'attaque (ratio)
            self.CritD           % Dégats des coup critique (ratio)
            self.CritC           % Chance de coup critique (ratio)
            self.LifeSteal       % Récupération de points de vie après avoir infligés des dégats avec une attaque de base (ratio)
            self.SpellVamp       % Récupération de points de vie après avoir infligés des dégats avec un sort (ratio)
            self.CDR             % Réduction des délais sur les sorts
            self.Cost            % Prix de l'objet
            self.ArmorPen        % Pénétration de la défense physique (ratio)
            self.MagicPen        % Pénétration de la défense magique (ratio)
        end
    end
end