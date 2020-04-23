%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vid�o League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% D�finition d'un objet
%  Toutes les statistiques pr�sentes ne seront pas forc�ment utilis�es
classdef Object < Character
    
    properties
        % D�finitions de ses propri�t�s
        HP              % Points de vie
        Resource        % Ressource utilis�e pour l'activation de ses comp�tences (Mana ou �nergie)
        HealthRegen     % R�g�n�ration de points de vie par seconde
        ResourceRegen   % R�g�n�ration des ressources par seconde
        AD              % D�gats physiques
        AP              % D�gats magiques
        Armor           % D�fense contre les d�gats physiques
        MagicResist     % D�fense contre les d�gats magiques
        AS              % Vitesse d'attaque (ratio)
        CritD           % D�gats des coup critique (ratio)
        CritC           % Chance de coup critique (ratio)
        LifeSteal       % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec une attaque de base (ratio)
        SpellVamp       % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec un sort (ratio)
        CDR             % R�duction des d�lais sur les sorts
        Cost            % Prix de l'objet
        ArmorPen        % P�n�tration de la d�fense physique (ratio)
        MagicPen        % P�n�tration de la d�fense magique (ratio)
    end
    
    methods
        % Int�ractions avec le personnage
        function obj = Object(HP, Resource, HealthRegen, ResourceRegen, AD, AP, Armor, MagicResist, AS, CritD, CritC, LifeSteal, SpellVamp, CDR, Cost, ArmorPen, MagicPen);  
            self.HP              % Points de vie
            self.Resource        % Ressource utilis�e pour l'activation de ses comp�tences (Mana ou �nergie)
            self.HealthRegen     % R�g�n�ration de points de vie par seconde
            self.ResourceRegen   % R�g�n�ration des ressources par seconde
            self.AD              % D�gats physiques
            self.AP              % D�gats magiques
            self.Armor           % D�fense contre les d�gats physiques
            self.MagicResist     % D�fense contre les d�gats magiques
            self.AS              % Vitesse d'attaque (ratio)
            self.CritD           % D�gats des coup critique (ratio)
            self.CritC           % Chance de coup critique (ratio)
            self.LifeSteal       % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec une attaque de base (ratio)
            self.SpellVamp       % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec un sort (ratio)
            self.CDR             % R�duction des d�lais sur les sorts
            self.Cost            % Prix de l'objet
            self.ArmorPen        % P�n�tration de la d�fense physique (ratio)
            self.MagicPen        % P�n�tration de la d�fense magique (ratio)
        end
    end
end