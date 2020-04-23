%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                     %%%
%%% Projet de 211 sur l'optimisation des objets sur le jeu vidéo League %%% 
%%% of Legends                                                          %%%
%%%                                                                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

import Character
import Spell

%% Création de deux personnages avec des statistiques basiques
Yasuo = Character;
Yasuo.HP = 500*ones(30,30);
Yasuo.Armor = [0:10:290].*ones(30,1);
Yasuo.AD = [0:10:290].'*ones(1,30);
Yasuo.Q_spell = Spell;

Irelia = Character;
Irelia.HP = 500*ones(30,30);
Irelia.Armor = [0:10:290].*ones(30,1);
Irelia.AD = [0:10:290].'*ones(1,30);

%% Création de la base de temps
Sample = [1:1:30];

%% Optimisation de l'armure
Damages = zeros(30,30);
Damages = Irelia.AD.*100./(100 + Yasuo.Armor);
Rapport = zeros(1,30);
Rapport = Damages(30,:)./Yasuo.Armor(1,:);

figure
plot(Yasuo.Armor(1,:),Rapport);
xlabel('Armure');
ylabel('Dégats/Armure');

figure
mesh(Irelia.AD(:,1), Yasuo.Armor(1,:), Damages.');
xlabel('AD');
ylabel('Armure');
zlabel('Dégats');
title('Optimisation de l''armure');
%plot(Damages, Irelia.AD(:,1), Yasuo.Armor(1,:));

