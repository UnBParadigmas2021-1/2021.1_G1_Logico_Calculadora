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