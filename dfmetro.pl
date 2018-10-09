:- include('data/lines.pl').

menu :- repeat,
    write('                          '),nl,
	write('1. Adicionar nova conexão '),nl,
	write('2. Remover uma conexão    '),nl,
    write('3. Encontrar caminho'),nl,
    write('4. Sair                           '),nl,
    write('Escolha uma opção:'),nl,
    read(Choice), Choice>0, Choice =<4,
    doit(Choice), Choice=4, !.

doit(1):-
	write('Qual nome da estação?'), nl,
	read(NewStation),
	write('Qual linha da estação?'), nl,
	read(LineOfNewStation),
	write('A qual o nome estação ela esta conectada?'), nl,
	read(ConnectedStation),
	write('A qual a linha da estação que ela esta conectada?'), nl,
	read(LineOfConnectedStation),
	write('Qual a distância média em minutos?'), nl,
	read(Time),
	assertz(
		connects(
			station(
				NewStation, 
				LineOfNewStation
			), 
			station(
				ConnectedStation, 
				LineOfConnectedStation
			), 
			Time
		)
	),
	assertz(
		connects(
			station(
				ConnectedStation, 
				LineOfConnectedStation
			), 
			station(
				NewStation, 
				LineOfNewStation
			), 
			Time
		)
	).

doit(2) :-
    write('Qual nome da estação?'), nl,
	read(Station),
	write('A qual o nome estação ela esta conectada?'), nl,
	read(ConnectedStation),
	retract(
		connects(
			station(
				Station, 
				_
			), 
			station(
				ConnectedStation, 
				_
			), 
			Time
		)
	),
	retract(
		connects(
			station(
				ConnectedStation, 
				_
			), 
			station(
				Station, 
				_
			), 
			Time
		)
	).
	

doit(3):-
    write('Qual nome da estação origem?'), nl,
	read(Origin),
	write('A qual o nome estação destino?'), nl,
	read(Destination),
	goes_to(station(Origin,_), station(Destination,_), Path, Duration),
	write('Caminho: '), writePath(Path), nl,
	write('Duração: '), write(Duration),!, write(' minutos'), nl.

doit(4):-
    abort.

writePath([]).
writePath([station(StationName,Line)|[]]) :-
	write(StationName),write('('),write(Line),write(')').
writePath([station(StationName,Line)|Path]) :-
	write(StationName),!,write('('),write(Line),write(')'), write(' -> '),
	writePath(Path).

goes_to(From, To, Path, Duration) :-
	travel(From, To, [From], AccPath, Duration),
	reverse(AccPath, Path).

travel(From, To, PathSoFar, [To|PathSoFar], Time) :-
	connects(From, To, Time).

travel(From, To, PathSoFar, Path, Time) :-
	connects(From, NextStation, TravelTime),
	NextStation \== To,
	\+member(NextStation, PathSoFar),
	travel(NextStation, To, [NextStation|PathSoFar], Path, AccTime),
	Time is TravelTime + AccTime.
