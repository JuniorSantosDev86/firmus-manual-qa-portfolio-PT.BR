# Ciclo de Execução 13 — Sugestões — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 13 |
| Módulo | Sugestões |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Sugestões com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, recomendações, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Sugestões.
- Identificação visual do módulo.
- Listagem de sugestões.
- Estado vazio.
- Cards de sugestão.
- Tipo/categoria da sugestão.
- Motivo ou contexto.
- Prioridade, impacto, confiança ou urgência, se disponível.
- Próxima ação recomendada.
- CTAs de ação, se disponíveis.
- Ação de ignorar/dispensar, se disponível.
- Feedback após ação sugerida.
- Persistência de sugestões dispensadas, se aplicável.
- Relação com módulos operacionais.
- Ordenação e filtros, se disponíveis.
- Ausência de duplicação.
- Navegação.
- Refresh.
- Responsividade.
- Usabilidade básica.
- Qualidade de conteúdo.
- Plano de evidências futuras.
- Checklist de pré-execução manual.

## Fora de escopo

- Execução manual via navegador.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Revisão de código com alteração.
- Validação visual real em runtime.
- Validação de IA externa, caso as sugestões sejam mockadas ou derivadas de regras locais.
- Avaliação definitiva de qualidade estratégica das sugestões fora das regras implementadas.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/assisted-charge-suggestions/page.tsx` | Identificação da rota e conteúdo do módulo |
| `firmus-app/components/assisted-charge-suggestions/suggestions-view.tsx` | Renderização da listagem, estado vazio, cards, CTAs e feedback |
| `firmus-app/lib/services/assisted-charge-suggestions.ts` | Regras de geração, critérios, labels e ações de aceitar/dispensar |
| `firmus-app/lib/storage/assisted-charge-suggestion-state.ts` | Persistência de sugestões dispensadas/aceitas |
| `firmus-app/lib/domain/assisted-charge-suggestion.ts` | Estrutura de domínio e tipos/status de sugestão |
| `firmus-app/lib/navigation.ts` | Label "Sugestões", rota e testId de navegação |
| `firmus-app/components/dashboard/top-navigation.tsx` | Presença da navegação para Sugestões |
| `firmus-app/cypress/e2e/assisted-charge-suggestions.cy.ts` | Comportamentos esperados de estado vazio, aceitação e dispensa |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Sugestões | Aprofundado |
| Casos de teste do módulo Sugestões | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum bug por inspeção estática neste ciclo |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-SUG-001 | Carregar a página de Sugestões com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-002 | Exibir identificação visual do módulo Sugestões | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-003 | Exibir listagem de sugestões quando houver dados | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-004 | Exibir estado vazio quando não houver sugestões | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-005 | Exibir card de sugestão com informações claras | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-006 | Exibir tipo ou categoria da sugestão quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-007 | Exibir motivo ou contexto da sugestão | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-008 | Exibir prioridade, impacto, confiança ou urgência quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-009 | Exibir próxima ação recomendada | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-010 | Validar CTA para executar ação sugerida quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-011 | Validar CTA para abrir módulo relacionado quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-012 | Validar CTA para ignorar ou dispensar sugestão quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-013 | Validar feedback após executar ação sugerida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-014 | Validar persistência de sugestão dispensada quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-015 | Validar relação com clientes, cobranças, orçamentos, DAS, NFSe, lembretes, radar ou automações | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-016 | Evitar duplicação indevida de sugestões | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-017 | Ordenar sugestões por prioridade, impacto ou urgência quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-018 | Filtrar sugestões por tipo ou categoria quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-019 | Manter Sugestões utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-020 | Navegar entre Sugestões e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-021 | Exibir Sugestões corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-022 | Exibir Sugestões corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-023 | Não exibir placeholders técnicos, dados quebrados ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SUG-024 | Comunicar claramente o valor operacional das sugestões para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

- Confirmar aplicação acessível.
- Confirmar usuário autenticado.
- Confirmar rota de Sugestões disponível.
- Confirmar massa de dados inicial.
- Confirmar se há sugestões existentes ou estado vazio.
- Confirmar quais módulos geram sugestões.
- Confirmar se existem sugestões com categorias diferentes.
- Confirmar se existem prioridades/impactos/urgências diferentes.
- Confirmar se há CTAs para módulos relacionados.
- Confirmar se há ação de ignorar/dispensar sugestão.
- Confirmar se há filtros ou ordenação.
- Confirmar viewports que serão usadas.
- Confirmar pasta de evidências.
- Confirmar próximo número de bug disponível.
- Confirmar padrão de nomenclatura das screenshots.
- Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências futuras

- `TC-SUG-001-sugestoes-carregamento.png`
- `TC-SUG-004-sugestoes-estado-vazio.png`
- `TC-SUG-005-sugestao-card-informacoes.png`
- `TC-SUG-007-sugestao-motivo-contexto.png`
- `TC-SUG-009-sugestao-proxima-acao.png`
- `TC-SUG-010-sugestao-executar-acao.png`
- `TC-SUG-012-sugestao-dispensar.png`
- `TC-SUG-016-sugestoes-sem-duplicacao.png`
- `TC-SUG-021-sugestoes-desktop.png`
- `TC-SUG-022-sugestoes-mobile-like.png`
- `BUG-008-sugestoes-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Sugestões agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Regras de geração de sugestões ainda precisam ser confirmadas em runtime.
- CTAs de ação ainda precisam ser confirmados manualmente.
- Sugestões dispensadas ainda precisam ser validadas em execução real.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.
- Valor operacional das sugestões depende da qualidade da massa de dados.

## Próximos passos

- Iniciar execução manual do módulo Sugestões em ciclo futuro.
- Executar TC-SUG-001 a TC-SUG-024.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.
