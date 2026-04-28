# BUG-006 — Layout de orçamento quebra em viewport mobile

| Campo | Informação |
|---|---|
| ID | BUG-006 |
| Título | Layout de orçamento quebra em viewport mobile |
| Módulo | Orçamentos |
| Ambiente | Desenvolvimento local |
| Navegador | Google Chrome / Chromium-based |
| Sistema operacional | Ubuntu Linux |
| Dispositivo/viewport | Mobile-like viewport |
| Severidade | Média |
| Prioridade | Média |
| Status | Aberto |
| Reportado por | Ademir dos Santos Junior |
| Data | 2026-04-24 |

## Resumo

A página de orçamentos apresenta overflow ou quebra visual em viewport mobile-like.

## Pré-condições

- A aplicação está em execução localmente.
- O usuário está autenticado no Firmus.
- O módulo **Orçamentos** está acessível.
- Existem dados ou ações suficientes para reproduzir o fluxo descrito.

## Passos para Reprodução

1. Abrir a aplicação Firmus.
2. Realizar login com credenciais válidas.
3. Acessar a área de Orçamentos.
4. Redimensionar o navegador ou usar DevTools em viewport mobile-like.
5. Observar cards, caixas, listas e ações da página.

## Resultado Atual

Um elemento extrapola ou quebra o layout no viewport mobile-like.

## Resultado Esperado

A página deve adaptar o conteúdo ao viewport, mantendo cards, textos e ações legíveis e contidos na tela.

## Evidência

- Screenshot: `../evidences/screenshots/BUG-006-quote-mobile-layout-overflow.png`

## Impacto

Afeta usabilidade em telas menores e reduz confiabilidade visual do módulo de orçamentos.

## Observações adicionais

Bug real preservado do ciclo de execução 01. O sentido original do defeito foi mantido e o texto foi padronizado em PT-BR.

## Critério de confirmação da correção

A correção será considerada confirmada quando o comportamento esperado for reproduzido no mesmo fluxo, sem regressão visual, sem erro inesperado e com feedback claro ao usuário.

## Sugestão de regressão após correção

Reexecutar em mobile-like, tablet-like e desktop, verificando ausência de overflow horizontal.
