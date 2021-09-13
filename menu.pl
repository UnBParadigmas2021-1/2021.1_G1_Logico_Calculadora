/* Menu de seleção de jogos, começa com ?- menu.  */

/* menu. (1). init.  */

menu :- repeat, nl, nl,
        write(' ** Bem vindo(a) ao menu de seleção de mini jogos do grupo 1! Selecione abaixo sua opcao: **'), nl, nl,
        write('1 - Jogo do bicho'), nl,
        write('0 - Sair'), nl,
        write(' ** ----------------------------------------- **'), nl, nl,
        read(Option),
        run(Option).

run(Option) :- 
                    Option == 1, [animal];
                    Option == 0, true.