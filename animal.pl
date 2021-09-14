/* Bem vindo ao mini jogo de descubra o animal! Para começar digite .init  */

:- consult(databases/animais_db).
:- consult(databases/caracteristicas_db).
:- consult(databases/classificacoes_db).

init :- chute(Animal),
      write('** Bem vindo ao jogo do bicho! Iremos fazer algumas perguntas e tentar adivinhar qual animal você está pensando! **'), nl, nl,
      write('Eu acho que o seu animal é um(a): '),
      write(Animal),
      nl,
      undo.

/* perguntas */
ask(Question) :-
    write('O seu animal: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == sim ; Response == s; Response == yes; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* verificacoes */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* desfazer */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.
