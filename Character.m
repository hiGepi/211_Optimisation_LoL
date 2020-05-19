%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vidéo League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Définition d'un personnage
%  Toutes les statistiques présentes ne seront pas forcément utilisées
classdef Character 
    
    properties
        % Définition de ses caractéristique
        LVL             % Niveau du personnage
        HP              % Points de vie
        Resource        % Ressource utilisée pour l'activation de ses compétences (Mana ou énergie)
        HealthRegen     % Régénération de points de vie par seconde
        ResourceRegen   % Régénération des ressources par seconde
        AD              % Dégats physiques
        AP              % Dégats magiques
        Armor           % Défense contre les dégats physiques
        MagicResist     % Défense contre les dégats magiques
        AS              % Vitesse d'attaque (ratio)
        AS_Ratio        % Coefficient de bonus de vitesse d'attaque avec les objets
        CritD           % Dégats des coup critique (ratio)
        CritC           % Chance de coup critique (ratio)
        LifeSteal       % Récupération de points de vie après avoir infligés des dégats avec une attaque de base (ratio)
        SpellVamp       % Récupération de points de vie après avoir infligés des dégats avec un sort (ratio)
        CDR             % Réduction des délais sur les sorts
        Gold            % Pièces d'or en sa possession
        ArmorPen        % Pénétration de la défense physique (ratio)
        MagicPen        % Pénétration de la défense magique (ratio)
        Q_spell         % Premier sort du personnage
        W_Spell         % Deuxième sort
        E_Spell         % Troisieme sort
        R_Spell         % Sort ultime
        Inventory       % Inventaire
        
        % Coefficients pour l'algo génétique
        C_HP            
        C_Armor
        C_AD
        C_AP
        C_AS
        
        Win_count       % Nombre de fois où il a gagné
    end
    
    methods
       % Définition de ses interaction avec les objets
       function self = Character(LVL, HP, Resource, HeatlhRegen, ResourceRegen, AD, AP, Armor, MagicResist, AS, AS_Ratio, CritD, CritC, LifeSteal, SpellVamp, CDR, Gold, ArmorPen, MagicPen, Q_spell, W_spell, E_spell, R_spell, Inventory, C_HP, C_Armo, C_AD, C_AP, C_AS, Win_count);
            self.LVL                % Niveau du personnage
            self.HP                 % Points de vie
            self.Resource           % Ressource utilisée pour l'activation de ses compétences (Mana ou énergie)
            self.HealthRegen        % Régénération de points de vie par seconde
            self.ResourceRegen      % Régénération des ressources par seconde
            self.AD                 % Dégats physiques
            self.AP                 % Dégats magiques
            self.Armor              % Défense contre les dégats physiques
            self.MagicResist        % Défense contre les dégats magiques
            self.AS                 % Vitesse d'attaque (ratio)
            self.AS_Ratio           % Coefficient de bonus de vitesse d'attaque avec les objets
            self.CritD              % Dégats des coup critique (ratio)
            self.CritC              % Chance de coup critique (ratio)
            self.LifeSteal          % Récupération de points de vie après avoir infligés des dégats avec une attaque de base (ratio)
            self.SpellVamp          % Récupération de points de vie après avoir infligés des dégats avec un sort (ratio)
            self.CDR                % Réduction des délais sur les sorts
            self.Gold               % Pièces d'or en sa possession
            self.ArmorPen           % Pénétration de la défense physique (ratio)
            self.MagicPen           % Pénétration de la défense magique (ratio)
            self.Q_spell            % Premier sort du personnage
            self.W_Spell            % Deuxième sort
            self.E_Spell            % Troisieme sort
            self.R_Spell            % Sort ultime
            self.Inventory          % Inventaire
            % Coefficients pour l'algo génétique
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