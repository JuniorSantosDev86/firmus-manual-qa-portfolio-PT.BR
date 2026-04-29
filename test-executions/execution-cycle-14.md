# Ciclo de Execução 14 — Regras de automação — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 14 |
| Módulo | Regras de automação |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Regras de automação com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, regras, gatilhos, ações e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Regras de automação.
- Identificação visual do módulo.
- Listagem de regras.
- Estado vazio.
- Criação de regra, se disponível.
- Gatilhos, condições e ações.
- Validações de campos.
- Status ativo/inativo.
- Edição, ativação, inativação e exclusão, se disponíveis.
- Limites de plano, se aplicáveis.
- Feedback de sucesso, erro ou bloqueio.
- Relação com módulos operacionais.
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
- Execução real de automações externas.
- Envio real de mensagens, cobranças ou notificações externas.
- Integração real com WhatsApp, e-mail, gateway de pagamento ou sistemas fiscais.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/automation-rules/page.tsx` | Identificação da rota, título, descrição e guarda por plano |
| `firmus-app/components/automation-rules-manager.tsx` | Formulário, listagem, estado vazio, botões, status e feedback do módulo |
| `firmus-app/lib/navigation.ts` | Label de menu e href do módulo |
| `firmus-app/lib/domain/automation-rule.ts` | Domínio de gatilhos, condições, ações e estrutura da regra |
| `firmus-app/lib/services/automation-rule-service.ts` | Criação/listagem/ativação-inativação de regras |
| `firmus-app/lib/automation-rule-storage.ts` | Persistência e normalização em localStorage |
| `firmus-app/lib/services/automation-rule-evaluator.ts` | Regras de avaliação de correspondências por evento e condição |
| `firmus-app/lib/services/automation-rule-executor.ts` | Regras de execução, deduplicação e criação de lembretes |
| `firmus-app/lib/services/plan-entitlements.ts` | Regra de acesso por plano ao recurso de automação |
| `firmus-app/components/plan/plan-blocked-state.tsx` | Estado bloqueado de recurso por plano |
| `firmus-app/cypress/e2e/automation-rules.cy.ts` | Referência de fluxos esperados e test IDs do módulo |
| `firmus-app/cypress/e2e/automation-reminder-creation.cy.ts` | Referência de integração entre automação e lembretes |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Regras de automação | Aprofundado |
| Casos de teste do módulo Regras de automação | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática neste ciclo |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-AUTO-001 | Carregar a página de Regras de automação com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-002 | Exibir identificação visual do módulo Regras de automação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-003 | Exibir listagem de regras quando houver registros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-004 | Exibir estado vazio quando não houver regras | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-005 | Exibir regra com nome, gatilho, ação e status claros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-006 | Exibir ação de criação de regra quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-007 | Abrir formulário de criação de regra quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-008 | Criar regra com dados válidos quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-009 | Impedir criação de regra com campos obrigatórios vazios | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-010 | Impedir criação com gatilho inválido | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-011 | Impedir criação com ação inválida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-012 | Editar regra existente quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-013 | Impedir edição de regra com dados inválidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-014 | Ativar regra quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-015 | Inativar regra quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-016 | Excluir regra após confirmação quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-017 | Cancelar exclusão de regra quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-018 | Respeitar limite de plano para automações quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-019 | Exibir feedback de sucesso, erro ou bloqueio de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-020 | Validar relação da regra com módulos operacionais | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-021 | Manter Regras de automação utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-022 | Navegar entre Regras de automação e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-023 | Exibir Regras de automação corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-024 | Exibir Regras de automação corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-025 | Não exibir placeholders técnicos, dados quebrados ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-AUTO-026 | Comunicar claramente o valor operacional das automações para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Regras de automação disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há regras existentes ou estado vazio.
- [ ] Confirmar se criação manual de regra está disponível.
- [ ] Confirmar gatilhos disponíveis.
- [ ] Confirmar ações disponíveis.
- [ ] Confirmar se há status ativo/inativo.
- [ ] Confirmar se há limite de plano relacionado.
- [ ] Confirmar se há edição/exclusão/ativação/inativação.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências futuras

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

- `TC-AUTO-001-regras-automacao-carregamento.png`
- `TC-AUTO-004-regras-automacao-estado-vazio.png`
- `TC-AUTO-005-regra-nome-gatilho-acao-status.png`
- `TC-AUTO-008-regra-criada-com-dados-validos.png`
- `TC-AUTO-009-regra-validacao-campos-obrigatorios.png`
- `TC-AUTO-014-regra-ativada.png`
- `TC-AUTO-015-regra-inativada.png`
- `TC-AUTO-018-limite-plano-automacoes.png`
- `TC-AUTO-023-regras-automacao-desktop.png`
- `TC-AUTO-024-regras-automacao-mobile-like.png`
- `BUG-008-regras-automacao-[descricao-curta].png`, se bug for encontrado no futuro.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Regras de automação agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Criação/edição/ativação/inativação ainda precisam ser confirmadas em runtime.
- Execução real das automações ainda precisa ser validada em ambiente controlado.
- Limites de plano ainda precisam ser confirmados manualmente.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.

## Próximos passos

- Iniciar execução manual do módulo Regras de automação em ciclo futuro.
- Executar TC-AUTO-001 a TC-AUTO-026.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.
