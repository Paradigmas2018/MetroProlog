:- dynamic connects/3.
% Which station goes to which station
%% connected lines Verde-Laranja
connects(station(central, laranja), station(central, verde), 7).
connects(station(galeria, laranja), station(galeria, verde), 7).
connects(station(sul102, laranja), station(sul102, verde), 7).
connects(station(sul108, laranja), station(sul108, verde), 7).
connects(station(sul112, laranja), station(sul112, verde), 7).
connects(station(sul114, laranja), station(sul114, verde), 7).
connects(station(terminal_asa_sul, laranja), station(terminal_asa_sul, verde), 7).
connects(station(shopping, laranja), station(shopping, verde), 7).
connects(station(feira, laranja), station(feira, verde), 7).
connects(station(guara, laranja), station(guara, verde), 7).
connects(station(arniqueiras, laranja), station(arniqueiras, verde), 7).
connects(station(aguas_claras, laranja), station(aguas_claras, verde), 7).

connects(station(central, verde), station(central, laranja), 7).
connects(station(galeria, verde), station(galeria, laranja), 7).
connects(station(sul102, verde), station(sul102, laranja), 7).
connects(station(sul108, verde), station(sul108, laranja), 7).
connects(station(sul112, verde), station(sul112, laranja), 7).
connects(station(sul114, verde), station(sul114, laranja), 7).
connects(station(terminal_asa_sul, verde), station(terminal_asa_sul, laranja), 7).
connects(station(shopping, verde), station(shopping, laranja), 7).
connects(station(feira, verde), station(feira, laranja), 7).
connects(station(guara, verde), station(guara, laranja), 7).
connects(station(arniqueiras, verde), station(arniqueiras, laranja), 7).
connects(station(aguas_claras, verde), station(aguas_claras, laranja), 7).

%% Line 1 - Verde
connects(station(central, verde),station(galeria, verde), 2).
connects(station(galeria, verde),station(sul102, verde), 2).
connects(station(sul102, verde),station(sul108, verde), 6).
connects(station(sul108, verde),station(sul112, verde), 5).
connects(station(sul112, verde),station(sul114, verde), 2).
connects(station(sul114, verde),station(terminal_asa_sul, verde), 5).
connects(station(terminal_asa_sul, verde),station(shopping, verde), 6).
connects(station(shopping, verde),station(feira, verde), 9).
connects(station(feira, verde),station(guara, verde), 3).
connects(station(guara, verde),station(arniqueiras, verde), 12).
connects(station(arniqueiras, verde),station(aguas_claras, verde), 4).
connects(station(aguas_claras, verde),station(concessionarias, verde), 4).
connects(station(concessionarias, verde),station(praca_do_relogio, verde), 6).
connects(station(praca_do_relogio, verde),station(centro_metropolitano, verde), 9).
connects(station(centro_metropolitano, verde),station(ceilandia_sul, verde), 7).
connects(station(ceilandia_sul, verde),station(guariroba, verde), 3).
connects(station(guariroba, verde),station(ceilandia_centro, verde), 3).
connects(station(ceilandia_centro, verde),station(ceilandia_norte, verde), 3).
connects(station(ceilandia_norte, verde),station(ceilandia, verde), 3).

connects(station(galeria, verde), station(central, verde), 2).
connects(station(sul102, verde), station(galeria, verde), 2).
connects(station(sul108, verde), station(sul102, verde), 6).
connects(station(sul112, verde), station(sul108, verde), 5).
connects(station(sul114, verde), station(sul112, verde), 2).
connects(station(terminal_asa_sul, verde), station(sul114, verde), 5).
connects(station(shopping, verde), station(terminal_asa_sul, verde), 6).
connects(station(feira, verde), station(shopping, verde), 9).
connects(station(guara, verde), station(feira, verde), 3).
connects(station(arniqueiras, verde), station(guara, verde), 12).
connects(station(aguas_claras, verde), station(arniqueiras, verde), 4).
connects(station(concessionarias, verde), station(aguas_claras, verde), 4).
connects(station(praca_do_relogio, verde), station(concessionarias, verde), 6).
connects(station(centro_metropolitano, verde), station(praca_do_relogio, verde), 9).
connects(station(ceilandia_sul, verde), station(centro_metropolitano, verde), 7).
connects(station(guariroba, verde), station(ceilandia_sul, verde), 3).
connects(station(ceilandia_centro, verde), station(guariroba, verde), 3).
connects(station(ceilandia_norte, verde), station(ceilandia_centro, verde), 3).
connects(station(ceilandia, verde), station(ceilandia_norte, verde), 3).

%% Line 2 - Laranja
connects(station(central, laranja),station(galeria, laranja), 2).
connects(station(galeria, laranja),station(sul102, laranja), 2).
connects(station(sul102, laranja),station(sul108, laranja), 6).
connects(station(sul108, laranja),station(sul112, laranja), 5).
connects(station(sul112, laranja),station(sul114, laranja), 2).
connects(station(sul114, laranja),station(terminal_asa_sul, laranja), 5).
connects(station(terminal_asa_sul, laranja),station(shopping, laranja), 6).
connects(station(shopping, laranja),station(feira, laranja), 9).
connects(station(feira, laranja),station(guara, laranja), 3).
connects(station(guara, laranja),station(arniqueiras, laranja), 12).
connects(station(arniqueiras, laranja),station(aguas_claras, laranja), 4).
connects(station(aguas_claras, laranja), station(taguatinga_sul, laranja), 6).
connects(station(taguatinga_sul, laranja), station(furnas, laranja), 7).
connects(station(furnas, laranja), station(samambaia_sul, laranja), 4).
connects(station(samambaia_sul, laranja), station(samambaia, laranja), 4).

connects(station(galeria, laranja), station(central, laranja), 2).
connects(station(sul102, laranja), station(galeria, laranja), 2).
connects(station(sul108, laranja), station(sul102, laranja), 6).
connects(station(sul112, laranja), station(sul108, laranja), 5).
connects(station(sul114, laranja), station(sul112, laranja), 2).
connects(station(terminal_asa_sul, laranja), station(sul114, laranja), 5).
connects(station(shopping, laranja), station(terminal_asa_sul, laranja), 6).
connects(station(feira, laranja), station(shopping, laranja), 9).
connects(station(guara, laranja), station(feira, laranja), 3).
connects(station(arniqueiras, laranja), station(guara, laranja), 12).
connects(station(aguas_claras, laranja), station(arniqueiras, laranja), 4).
connects(station(taguatinga_sul, laranja), station(aguas_claras, laranja), 6).
connects(station(furnas, laranja), station(taguatinga_sul, laranja), 7).
connects(station(samambaia_sul, laranja), station(furnas, laranja), 4).
connects(station(samambaia, laranja), station(samambaia_sul, laranja), 4).

