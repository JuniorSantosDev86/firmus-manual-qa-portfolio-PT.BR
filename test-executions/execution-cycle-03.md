# Ciclo de Execução 03 — Plano — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 03 |
| Módulo | Plano |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Plano com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Plano.
- Identificação visual do módulo.
- Exibição do plano atual.
- Benefícios e limites.
- Bloqueios ou recursos indisponíveis.
- CTA de upgrade ou ação equivalente, se disponível.
- Navegação.
- Refresh.
- Responsividade.
- Usabilidade básica.
- Qualidade de conteúdo.

## Fora de escopo

- Execução manual via navegador.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Revisão de código com alteração.
- Validação de billing real.
- Integração com gateway de pagamento.
- Compra real ou troca real de plano em ambiente externo.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/plan/page.tsx` | Identificação da rota e do conteúdo principal do módulo |
| `firmus-app/components/plan/plan-manager.tsx` | Levantamento de estados, textos, cards, tiers, limites e mensagens |
| `firmus-app/components/plan/plan-blocked-state.tsx` | Levantamento de mensagens de bloqueio e CTA para `/plan` |
| `firmus-app/lib/domain/plan.ts` | Mapeamento de tiers, features, labels e limites de plano |
| `firmus-app/lib/services/plan-entitlements.ts` | Regras de entitlement, mensagens de bloqueio e cálculo de limites |
| `firmus-app/lib/navigation.ts` | Confirmação do label `Plano` e rota `/plan` na navegação |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Plano | Aprofundado |
| Casos de teste do módulo Plano | Aprofundados |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-PLAN-001 | Carregar a página de Plano com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-002 | Exibir identificação visual do módulo Plano | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-003 | Exibir informações do plano atual quando disponíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-004 | Exibir benefícios do plano de forma clara | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-005 | Exibir limites do plano quando disponíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-006 | Exibir recursos bloqueados ou indisponíveis de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-007 | Exibir CTA de upgrade, alteração de plano ou ação equivalente quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-008 | Validar comportamento esperado do CTA de upgrade ou ação equivalente | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-009 | Exibir estado indisponível sem quebrar a experiência | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-010 | Não exibir placeholders, dados técnicos ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-011 | Navegar entre Plano e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-012 | Manter Plano utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-013 | Exibir Plano corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-014 | Exibir Plano corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-PLAN-015 | Comunicar claramente valor, benefícios e limitações do plano ao usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Plano agora possui cenários BDD e casos de teste aprofundados para suportar um ciclo real posterior de validação funcional em UI.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- CTAs ainda precisam ser acionados em execução manual.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.

## Próximos passos

- Executar o módulo Plano manualmente em navegador em ciclo futuro.
- Coletar screenshots reais.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.
