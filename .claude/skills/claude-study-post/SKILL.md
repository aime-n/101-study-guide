---
name: claude-study-post
description: Gera um post HTML de estudo (tip/resumo) sobre um tópico de Claude, no padrão visual do site em docs/ (GitHub Pages), e adiciona o card correspondente em docs/index.html. Use quando o usuário pedir um post, tip, resumo ou material de revisão sobre um tópico relacionado a Claude, agentes, prompting, tool use, RAG, segurança/guardrails, avaliação, etc. — especialmente no contexto de estudo para a certificação Claude Certification Architect Foundations.
---

# claude-study-post — gerar post de estudo em HTML para GitHub Pages

Use quando o usuário pedir um **post, tip, resumo ou material de revisão** sobre um tópico de
estudo de Claude (ex.: "cria um post sobre hooks", "resume tool use pra eu revisar", "gera um tip
sobre RAG com Claude"). O resultado é **um arquivo HTML novo em `docs/posts/`**, mais uma entrada
nova em `docs/index.html`.

Antes de escrever, **leia `docs/assets/style.css`** e **1 post existente em `docs/posts/`** (se
houver) para casar tom e classes CSS — a estrutura abaixo é a definida para este projeto.

**Postura:** conteúdo em **pt-BR**, voltado para quem estuda para a prova **Claude Certification
Architect Foundations** · prioriza revisão rápida (quick reference) sobre prosa longa · sem
inventar fatos sobre a prova — se não tiver certeza de um detalhe, avise o usuário em vez de
inventar.

## Convenções (não negociáveis)

- **Arquivo:** `docs/posts/AAAA-MM-DD-slug-kebab.html`. `AAAA-MM-DD` = data atual do sistema. Slug
  curto derivado do tópico (ex.: `2026-07-21-tool-use-basico.html`).
- **CSS compartilhado:** sempre referenciar `<link rel="stylesheet" href="../assets/style.css">`.
  **Nunca** duplicar o `<style>` inteiro dentro do post, nem inventar cores fora das custom
  properties já definidas em `docs/assets/style.css` (`--pink`, `--purple`, `--blue`, `--ink`,
  `--cream`, `--border`, etc.).
- **Esqueleto:** partir de `post-template.html` (nesta mesma pasta) e preencher os placeholders —
  não reconstruir o HTML do zero.
- **Idioma:** pt-BR no corpo do post.

## Estrutura obrigatória do post

1. **Hero**: tag categoria curta (ex. "Fundamentos", "Prompt Engineering", "Segurança"), H1 com
   `<span>` destacando a palavra-chave do tópico, subtítulo de 1-2 frases, meta-row com tempo de
   leitura estimado e número de conceitos cobertos.
2. **2 a 5 seções** (`.section-label` com ícone emoji + `<h2>` + subtítulo), cada uma separada por
   `<hr class="divider">`. Dentro de cada seção, usar `.card-grid` (`.cols-1/2/3`) com:
   - `.card` simples para listas/definições;
   - `.card.callout` para um insight/dica importante;
   - `.card.dark-card` para destacar um conceito-chave;
   - `.card.code-card` + `.code-block` quando o tópico envolver sintaxe/exemplo de comando.
3. **Pelo menos uma seção "quick reference"**: `.compare-table` (tabela) ou lista
   bold-label+descrição, pensada para revisão de véspera de prova — não decorativa.
4. **Footer**: atribuição curta ("Post de estudo gerado com a skill claude-study-post") + link
   `← Voltar para todos os posts` apontando para `../index.html`.

## Passos

1. **Confirmar o tópico e escopo** com o usuário se estiver vago (ex.: "tool use" pode significar
   fundamentos ou uso avançado — perguntar se não estiver claro pelo contexto da conversa).
2. **Definir slug e data** (data atual do sistema, formato `AAAA-MM-DD`).
3. **Checar duplicidade:** `ls docs/posts/` — se já existir um post muito próximo do mesmo tópico,
   avisar o usuário antes de criar um novo (não sobrescrever sem confirmação).
4. **Gerar o HTML** a partir de `post-template.html`, preenchendo hero, seções, quick reference e
   footer conforme a estrutura acima. Estimar `{{READ_TIME}}` e `{{CONCEPT_COUNT}}` de forma
   realista a partir do conteúdo gerado.
5. **Adicionar o card em `docs/index.html`**: inserir um novo bloco `.post-card` **logo após** o
   comentário `<!-- POST_CARDS_START -->` (post mais recente primeiro). Se o post for o primeiro,
   remover o `.empty-state`. Formato do card:
   ```html
   <a class="post-card" href="posts/AAAA-MM-DD-slug.html">
     <div class="accent-bar"></div>
     <div class="post-card-body">
       <span class="tag">{{TAG}}</span>
       <h2>{{TITLE}}</h2>
       <p class="excerpt">{{EXCERPT}}</p>
       <div class="meta-row">
         <span>{{DATA_POR_EXTENSO}}</span>
         <span class="dot"></span>
         <span>{{READ_TIME}} min de leitura</span>
       </div>
     </div>
   </a>
   ```
6. **Avisar o usuário** do caminho do arquivo gerado e sugerir que revise o conteúdo antes de
   commitar/publicar — esta skill **não** faz `git add`/`commit`/`push` automaticamente.

## Anti-padrões (rejeitar)

- Duplicar o `<style>` inteiro dentro de um post em vez de usar `docs/assets/style.css`.
- Inventar cores/paleta fora das custom properties já definidas.
- Post sem nenhuma seção de "quick reference" (o objetivo é revisão para a prova, não só leitura).
- Sobrescrever um post existente sem avisar o usuário.
- Fazer commit/push automaticamente — isso é decisão do usuário.
- Afirmar como fato algo sobre o conteúdo da prova sem ter certeza — melhor marcar como "a
  confirmar" e perguntar ao usuário.

> Esqueleto pronto (carregar sob demanda): `post-template.html` nesta mesma pasta.
> Tema visual compartilhado: `docs/assets/style.css` na raiz do projeto.
