q16 - marquei errado na prova. desatencao.
q18 -  long multi-issue conversations near the context limit. solution: progressive summarization to keep context
q20 - eita, eu pensei que tava errado pq a letra A ainda nao escalou e tenta resolver como uma terceira tentativa. ok, entao pedir para o usuario explicar em uma questao. 
q31 - entao mantenho a sessao, aviso que os arquivos mudaram e rodo reanalise quando um commit eh feito de um colega .
q42 - fiquei na duvida nessa. achei que precisaria de todo tipo de analise, por isso o free text. entao evitar free text se precisa consistencia. transforma a tool que recebe free text para 3 tools de analise especificas, com outputs bem definidos.
q45 - mesmo da q31. mantenho a sessao e informo as mudancas e releio. 
q49 - comecar duas novas sessoes eh muito gasto desnecessario, e tem risco de perder o raciocinio, ter uma conclusao diferente da conversa anterior. crio um fork para cada estrategia que quero investigar com o historico anterior da conversa, sem precisar reanalise.
q50 - usar grep para ir mais especifico, achar os arquivos e entao seguir imports para mapear apenas o feature investigado, e nao o projeto inteiro.
q53 - nao usar retries inside tool para nao mascarar a latencia. informar o modelo desse tipo de erro e ele toma decisao para continuar. informar no output da tool se pode dar retry. 
q57 - aqui ele perdeu o contexto por causa da conversa longa. comecou a ser generalista, esqueceu coisas aprendidas na conversa. degrading context. sumarizar para criar um agente novo com o prompt contendo o sumario da conversa. preserva o aprendido e supera o contexto degradado. nao voltar para a conversa com contexto degradado com mais informacao.
q60 - coordinator pode responder sumario da conversa. prompt cache seria overengineering. mandar todo historico para um agente sumarizador seria um gasto desnecessario.