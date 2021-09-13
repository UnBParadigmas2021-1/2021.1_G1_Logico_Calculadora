/* animais e suas caracteristicas  */

capivara :- mamifero, 
           herbivoro, 
           verify(ele_nada),
           verify(e_fofa).
macaco :- mamifero,  
         herbivoro,
         verify(ele_vive_em_arvores), 
         verify(pode_ser_domesticado).
jacare :- reptil,  
         carnivoro,
         verify(ele_nada), 
         verify(voce_se_torna_um_ao_ser_vacinado),
         verify(seu_apelido_popular_e_jare).
cobra :- reptil,  
         carnivoro,
         venenoso,
         verify(ele_pode_te_matar).
cavalo :- mamifero,  
         herbivoro,
         verify(ele_e_util_para_transporte),
         verify(ele_possui_crina).
golfinho :- mamifero,
            carnivoro,
            verify(ele_nada),
            verify(e_simpatico).
aguia :- ave,
        carnivoro,
        verify(e_simbolo_de_um_pais).
falcao :- ave,
        carnivoro,
        verify(e_a_ave_mais_rapida_do_mundo).
pinguim :- ave,
           carnivoro,
           verify(e_fofo),
           verify(um_exemplar_da_especie_sabe_sapatear_em_um_filme). 
tigre :- mamifero,
            carnivoro,
            verify(e_um_dos_maiores_predadores_do_mundo_animal),
            verify(e_basicamente_um_gato_gigante).
leao :- mamifero,
        carnivoro,
        verify(e_um_dos_maiores_predadores_do_mundo_animal),
        verify(um_exemplar_da_especie_cantou_hakuna_matata_em_um_filme).
urso-polar :- mamifero,
        carnivoro,
        verify(vive_no_artico),
        verify(ele_nada),
        verify(vive_no_artico),
        verify(bebe_coca_cola).
arara-azul :- ave,
        herbivoro,
        verify(e_muito_bonita),
        verify(e_encontrada_apenas_no_brasil).
