%fatos

atleta(gabriel, goleiro).
atleta(joão, pivô).
atleta(caio, ala_esquerdo).
atleta(jordan, ala_direito).
atleta(miguel, ala_direito).
atleta(felipe, pivô).
atleta(gustavo, goleiro).
atleta(milton, ala_esquerdo).
atleta(bernardo, fixo).
atleta(felix, fixo).

peso(gabriel, 70).
peso(joão, 60.5).
peso(caio, 69).
peso(jordan, 63).
peso(miguel, 61.7).
peso(felipe, 64.2).
peso(gustavo, 67.1).
peso(milton, 72).
peso(bernardo, 68.1).
peso(felix, 70).

idade(gabriel, 21).
idade(joão, 20).
idade(caio, 21).
idade(jordan, 19).
idade(miguel, 21).
idade(felipe, 21).
idade(gustavo, 23).
idade(milton, 18).
idade(bernardo, 20).
idade(felix, 21).

habilidade(gabriel, agilidade).
habilidade(joão, chute).
habilidade(caio, passe).
habilidade(jordan, drible).
habilidade(miguel, velocidade).
habilidade(felipe, chute).
habilidade(gustavo, flexibilidade).
habilidade(milton, drible).
habilidade(bernardo, passe).
habilidade(felix, passe).

timeSub21(sub, Time) :-
    atleta(Goleiro, goleiro), idade(Goleiro, Y),
    atleta(Pivo, pivô), idade(Pivo, Y),
    atleta(AlaEsquerdo, ala_esquerdo), idade(AlaEsquerdo, Y),
    atleta(AlaDireito, ala_direito), idade(AlaDireito, Y),
    atleta(Fixo, fixo), idade(Fixo, Y), Y == 21,
Time = [Goleiro, Pivo, AlaEsquerdo, AlaDireito, Fixo].

escalação(ofensiva, Time) :-
    atleta(Goleiro, goleiro), habilidade(Goleiro, agilidade),
    atleta(Pivo, pivô), habilidade(Pivo, chute),
    atleta(AlaEsquerdo, ala_esquerdo), habilidade(AlaEsquerdo, drible),
    atleta(AlaDireito, ala_direito), habilidade(AlaDireito, velocidade),
    atleta(Fixo, fixo), habilidade(Fixo, passe),
Time = [Goleiro, Pivo, AlaEsquerdo, AlaDireito, Fixo].

% Base case: A média de peso de uma lista vazia é 0.
media_peso([], 0).

% Regra recursiva: Calcula a média de peso.
media_peso([Atleta|Resto], Media) :-
    peso(Atleta, Peso),
    media_peso(Resto, MediaResto),
    length([Atleta|Resto], NumAtletas),
    Media is (MediaResto * (NumAtletas - 1) + Peso) / NumAtletas.

%questão 1:	Liste todos os jogadores.
%findall(Jogador, atleta(Jogador, _), ListaJogadores).

%questão2:	Quem são os atletas que têm a habilidade de drible?
%findall(Atleta, habilidade(Atleta, drible), ListaAtletas).

%questão 3: Monte uma escalação de atletas de 21 anos
%timeSub21(sub, Time).

%questão 4: Qual a média dos pesos?
% media_peso([gabriel, joão, caio, jordan, miguel, felipe, gustavo, milton, bernardo, felix], Media).

%questão 5: Monte uma escalação que seja ofensiva.
%escalação(ofensiva, Time).