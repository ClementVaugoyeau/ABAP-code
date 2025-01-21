LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity_set>).
    IF line_exists( lt_quantite_appro_rayon[ produit = <fs_entity_set>-article_id ] ).
      <fs_entity_set>-quantite_reappro_rayon = lt_quantite_appro_rayon[ produit = <fs_entity_set>-article_id ]-sum_dispo - lt_quantite_appro_rayon[ produit = <fs_entity_set>-article_id ]-sum_preparee.
    ENDIF.
ENDLOOP.
