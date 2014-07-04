# language: pt
Funcionalidade: Busca FIESC
  Como um visitante anônimo do Portal FIESC
  Eu quero encontrar informações facilmente
  Para me beneficiar dos documentos armazenados.

  Esquema do Cenario: Quantidades adequadas de resultados
    Dado que eu estou na página inicial do Portal FIESC
    Quando eu busco por <Termo>
    Então eu deveria ver <Termo> em primeiro lugar nos resultados
    Exemplos:
      | Termo                              |
      | 'Teste automático da notícia fsi4' |
