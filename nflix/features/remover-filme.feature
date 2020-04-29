#language: pt

@login
Funcionalidade: Remover filme
    Pra que eu possa manter o catálogo atualizado
    Sendo um gesto de catálogo que encontrou um título cancelado/indesejado
    Posso remover este item

    @delete_movie
    Cenario: Confirmar exclusão

        Dado que "dbz" está no catálogo
        Quando eu solicito a exclusão
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo

    @cancel_delete_movie
    Cenario: Cancelar exclusão

        Dado que "dez" está no catálogo
        Quando eu solicito a exclusão
        E cancelo a solicitação
        Então este item deve permanecer no catálogo
