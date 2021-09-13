/* Bem vindo ao mini jogo de descubra o animal! Para começar digite .init  */

init :- chute(Animal),
      write('Eu acho que o seu animal é um: '),
      write(Animal),
      nl,
      undo.

/* Animais */

chute(capivara)   :- capivara, !.
chute(macaco)     :- macaco, !.
chute(desconhecido).  /* não descobrimos seu animal */

/* animais e suas caracteristicas  */

capivara :- mamifero, 
           herbivoro, 
           verify(ele_nada),
           verify(e_fofa).
macaco :- mamifero,  
         herbivoro,
         verify(ele_vive_em_arvores), 
         verify(pode_ser_domesticado).

/* classificacoes */
mamifero    :- verify(tem_pelo), !.
mamifero    :- verify(produz_leite).
ave      :- verify(possui_penas), !.
ave      :- verify(voa), 
             verify(bota_ovos).
herbivoro :- verify(come_planta), !.
carnivoro :- verify(come_carne), !.
carnivoro :- verify(possui_caninos), 
             verify(possui_olhos_frontais).

/* perguntas */
ask(Question) :-
    write('O seu animal possui: '),
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
