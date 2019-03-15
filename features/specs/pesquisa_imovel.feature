# language: pt
# encode: UTF-8
Funcionalidade: Pesquisar Imovel no Site Quinto Andar
  Eu como usuário
  Desejo acessar o site quinto andar
  Para pesquisar um Imovel

 Cenário: pesquisar um imovel aplicando filtros
    Dado que eu acesso o site quinto andar
    Quando faço uma pesquisa aplicando os filtros
    Então valido que os filtros foram aplicados:
    |  filtro   |
    |  1 vagas  |
    | Mobiliado |
    |Metrô próx.|
    |  2 dorms  |
    |Apartamento|
    |Não aceita |