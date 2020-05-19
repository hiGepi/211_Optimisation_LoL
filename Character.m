%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vid�o League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% D�finition d'un personnage
%  Toutes les statistiques pr�sentes ne seront pas forc�ment utilis�es
classdef Character 
    
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
        
        % Coefficients pour l'algo g�n�tique
        C_HP            
        C_Armor
        C_AD
        C_AP
        C_AS
        
        Win_count       % Nombre de fois o� il a gagn�
    end
    
    methods
       % D�finition de ses interaction avec les objets
       function self = Character(LVL, HP, Resource, HeatlhRegen, ResourceRegen, AD, AP, Armor, MagicResist, AS, AS_Ratio, CritD, CritC, LifeSteal, SpellVamp, CDR, Gold, ArmorPen, MagicPen, Q_spell, W_spell, E_spell, R_spell, Inventory, C_HP, C_Armo, C_AD, C_AP, C_AS, Win_count);
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
            self.W_Spell            % Deuxi�me sort
            self.E_Spell            % Troisieme sort
            self.R_Spell            % Sort ultime
            self.Inventory          % Inventaire
            % Coefficients pour l'algo g�n�tique
            self.C_HP            
            self.C_Armor
            self.C_AD
            self.C_AP
            self.C_AS
            
            self.Win_count
       end
       
       function self = trade_auto(self, other)
       % Combat simple avec des attaques basiques
          self.HP = self.HP - (other.AD* 100/(100+self.Armor))*other.AS;
          other.HP = other.HP - (self.AD * 100/(100+other.Armor))*self.AS;
       end
       
       function self = fight_to_death(self, other)
           HP_mem = other.HP;
           HP_mem2 = self.HP;
           while (self.HP > 0) && (other.HP > 0)
              self.trade_auto(other); 
           end
           if self.HP > 0 
               self.Win_count = self.Win_count+1;
           else
               self.Win_count = self.Win_count;
           end
           other.HP = HP_mem;
           self.HP = HP_mem2;
       end
       
       function self = buy_stats(self)
           self.HP = self.HP + self.C_HP*self.Gold/2.67;
           self.Armor = self.Armor + self.C_Armor*self.Gold/20;
           self.AD = self.AD + self.C_AD*self.Gold/35;
           self.AP = self.AP + self.C_AP*self.Gold/21.75;
           self.AS = self.AS + self.C_AS*self.Gold/2500;
       end
    end
end