---
name: brainstorm
context: fork
allowed-tools: ["Read", "Grep", "Glob"]
argument-hint: "Provide a feature description or codebase area to explore"
---

# Codebase Analysis Brainstorm

## Objetivo
Realizar uma análise detalhada da codebase com saída verbosa.

## Instruções

1. **Entenda o contexto**: Use o argumento fornecido para entender o foco da análise
2. **Explore a codebase**:
   - Use `Glob` para identificar arquivos relevantes
   - Use `Grep` para buscar padrões específicos
   - Use `Read` para analisar arquivos-chave
3. **Estruture a saída**:
   - Resumo executivo
   - Análise detalhada por módulo/área
   - Pontos de atenção e recomendações
   - Próximos passos sugeridos

## Formato de Saída
Produza uma análise em markdown com:
- Título e data
- Seções claramente divididas
- Citações de código quando relevante
- Recomendações acionáveis

## Importante
- Seja **verboso** e detalhado
- Inclua exemplos de código encontrados
- Destaque padrões arquiteturais identificados