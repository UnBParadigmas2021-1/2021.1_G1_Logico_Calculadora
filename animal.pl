/* Bem vindo ao mini jogo de descubra o animal! Para começar digite .init  */

init :- chute(Animal),
      write('** Bem vindo ao jogo do bicho! Iremos fazer algumas perguntas e tentar adivinhar qual animal você está pensando! **'), nl, nl,
      write('Eu acho que o seu animal é um(a): '),
      write(Animal),
      nl,
      undo.

/* Animais */
chute(capivara)   :- capivara, !.
chute(macaco)     :- macaco, !.
chute(jacare)     :- jacare, !.
chute(cobra)      :- cobra, !.
chute(cavalo)      :- cavalo, !.
chute(desconhecido).  /* não descobrimos seu animal */

/* animais e suas caracteristicas  */

capivara :- mamifero, 
           herbivoro, 
           verify(ele_nada),
           verify(é_fofa).
macaco :- mamifero,  
         herbivoro,
         verify(ele_vive_em_arvores), 
         verify(pode_ser_domesticado).
jacare :- reptil,  
         carnivoro,
         verify(ele_nada), 
         verify(voce_se_torna_um_ao_ser_vacinado),
         verify(seu_apelido_popular_é_jaré).
cobra :- reptil,  
         carnivoro,
         venenoso,
         verify(ele_pode_te_matar).
cavalo :- mamifero,  
         herbivoro,
         verify(ele_é_util_para_transporte),
         verify(ele_possui_crina).

/* classificacoes */
mamifero    :- verify(tem_pelo), !.
mamifero    :- verify(produz_leite).
reptil      :- verify(possui_pele_grossa), !.
reptil      :- verify(sao_conhecidos_por_serem_animais_pre_historicos).
venenoso    :- verify(possui_veneno), !.
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
