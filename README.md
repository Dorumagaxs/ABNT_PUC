# PUC ABNT LaTeX

Um simples template LaTeX para gerar documentos formatados de acordo com o padrão ABNT PUC Minas.

## Modo de uso
1. Substitua no arquivo _variaveis.tex_ as informações básicas exemplo pelas do seu trabalho (título, autor, orientador, etc).
1. Substitua no arquivo _referencias.bib_ as fontes exemplo pelas consultadas para seu trabalho.
1. Na pasta _content/resumos_ escreva nos arquivos _portugues.tex_ e _ingles.tex_ seus resumos nas respectivas línguas.
1. No arquivo _content/introducao.tex_ escreva sua introdução.
1. Na pasta _content/capitulos_ crie seus capítulos, cada um em um arquivo chamado _[meucapitulo].tex_. Cada arquivo desse deve começar com *\chapter{[meu capítulo]}*.
1. No arquivo _content/conclusao.tex_ escreva sua conclusão.
1. No arquivo _content/desenvolvimento.tex_ escreva linhas do tipo *\input{content/capitulos/[meu_capitulo].tex}* para incluir seus capítulos no trabalho. Escreva na ordem em que desejar que os capítulos apareçam.
1. Compile com *make build*

## Instruções para leigos em LaTeX
### Citações
No decorrer de seu trabalho, as citações devem ser feitas com os comandos *\cite{[fonte]}*, *\textcite{[fonte]}* e *\footcite{[fonte]}* onde *[fonte]* é a chave definida para aquela fonte no seu arquivo _referencias.bib_  
Desse modo, a citação aparecerá segundo o padrão PUC e a página de referências será montada automaticamente. Para especificar informação adicional na citação, como página do livro, ela deve ser adicionada entre colchetes antes das chaves. Exemplo: *\cite[p. 50]{[fonte]}*

### Como compilar
Acesse ou crie sua conta no [Overleaf], crie um novo projeto e faça upload do arquivo .zip baixado deste repositório. Após isso, basta clicar no botão "Recompile" e o [Overleaf] fará todo o trabalho.


[Overleaf]: https://pt.overleaf.com
