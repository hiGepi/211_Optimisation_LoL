%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vid�o League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% D�finition d'un personnage
%  Toutes les statistiques pr�sentes ne seront pas forc�ment utilis�es
classdef Character < handle
    
    properties
        % D�finition de ses caract�ristique
        LVL             % Niveau du personnage
        HP              % Points de vie
        Resource        % Ressource utilis�e pour l'activation de ses comp�tences (Mana ou �nergie)
        HealthRegen     % R�g�n�ration de points de vie par seconde
        ResourceRegen   % R�g�n�ration des ressources par seconde
        AD              % D�gats physiques
        AP              % D�gats magiques
        Armor           % D�fense contre les d�gats physiques
        MagicResist     % D�fense contre les d�gats magiques
        AS              % Vitesse d'attaque (ratio)
        AS_Ratio        % Coefficient de bonus de vitesse d'attaque avec les objets
        CritD           % D�gats des coup critique (ratio)
        CritC           % Chance de coup critique (ratio)
        LifeSteal       % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec une attaque de base (ratio)
        SpellVamp       % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec un sort (ratio)
        CDR             % R�duction des d�lais sur les sorts
        Gold            % Pi�ces d'or en sa possession
        ArmorPen        % P�n�tration de la d�fense physique (ratio)
        MagicPen        % P�n�tration de la d�fense magique (ratio)
        Q_spell         % Premier sort du personnage
        W_Spell         % Deuxi�me sort
        E_Spell         % Troisieme sort
        R_Spell         % Sort ultime
        Inventory       % Inventaire
    end
    
    methods
       % D�finition de ses interaction avec les objets
       function self = Character(LVL, HP, Resource, HeatlhRegen, ResourceRegen, AD, AP, Armor, MagicResist, AS, AS_Ratio, CritD, CritC, LifeSteal, SpellVamp, CDR, Gold, ArmorPen, MagicPen, Q_spell, Inventory);
            self.LVL                % Niveau du personnage
            self.HP                 % Points de vie
            self.Resource           % Ressource utilis�e pour l'activation de ses comp�tences (Mana ou �nergie)
            self.HealthRegen        % R�g�n�ration de points de vie par seconde
            self.ResourceRegen      % R�g�n�ration des ressources par seconde
            self.AD                 % D�gats physiques
            self.AP                 % D�gats magiques
            self.Armor              % D�fense contre les d�gats physiques
            self.MagicResist        % D�fense contre les d�gats magiques
            self.AS                 % Vitesse d'attaque (ratio)
            self.AS_Ratio           % Coefficient de bonus de vitesse d'attaque avec les objets
            self.CritD              % D�gats des coup critique (ratio)
            self.CritC              % Chance de coup critique (ratio)
            self.LifeSteal          % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec une attaque de base (ratio)
            self.SpellVamp          % R�cup�ration de points de vie apr�s avoir inflig�s des d�gats avec un sort (ratio)
            self.CDR                % R�duction des d�lais sur les sorts
            self.Gold               % Pi�ces d'or en sa possession
            self.ArmorPen           % P�n�tration de la d�fense physique (ratio)
            self.MagicPen           % P�n�tration de la d�fense magique (ratio)
            self.Q_spell            % Premier sort du personnage
            self.Inventory          % Inventaire
       end
       
       function self = trade_auto(self, other)
       % Combat simple avec des attaques basiques
          self.HP = self.HP - other.AD .* 100/(100+self.Armor);
          other.HP = other.HP - self.AD .* 100/(100+other.Armor);
       end
    end
end