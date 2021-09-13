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