# Ciclo de Execução 08 — Lembretes — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 08 |
| Módulo | Lembretes |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Lembretes com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Lembretes.
- Identificação visual do módulo.
- Listagem de lembretes.
- Estado vazio.
- Criação de lembrete, se disponível.
- Validação de campos.
- Validação de data.
- Exibição de lembrete cadastrado.
- Status de lembrete.
- Marcação como concluído, se disponível.
- Reabertura de lembrete, se disponível.
- Edição de lembrete, se disponível.
- Exclusão de lembrete, se disponível.
- Cancelamento de exclusão, se disponível.
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
- Disparo real de notificações externas.
- Integração real com calendário externo.
- Validação de envio real por e-mail, WhatsApp ou push notification.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/lib/navigation.ts` | Identificação do label/rota de Lembretes no menu principal |
| `firmus-app/app/reminders/page.tsx` | Identificação da rota e conteúdo textual principal da página |
| `firmus-app/components/reminders/reminders-manager.tsx` | Fluxo de criação, estados vazios, listagem, marcação de concluído e regras de UI |
| `firmus-app/lib/domain/reminder.ts` | Modelo de domínio e status suportados para lembretes |
| `firmus-app/lib/services/reminders.ts` | Regras de estado derivado (atrasado/hoje/futuro), agrupamento e eventos |
| `firmus-app/lib/reminder-storage.ts` | Persistência local, normalização, criação e atualização de lembretes |
| `firmus-app/cypress/e2e/automation-reminder-creation.cy.ts` | Referência de comportamento esperado para criação e persistência de lembretes |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Lembretes | Aprofundado |
| Casos de teste do módulo Lembretes | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-LEM-001 | Carregar a página de Lembretes com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-002 | Exibir identificação visual do módulo Lembretes | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-003 | Exibir listagem de lembretes quando houver registros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-004 | Exibir estado vazio quando não houver lembretes cadastrados | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-005 | Exibir ação de criação de lembrete quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-006 | Abrir formulário de criação de lembrete quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-007 | Cadastrar lembrete com dados válidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-008 | Impedir cadastro de lembrete com campos obrigatórios vazios | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-009 | Impedir cadastro de lembrete com data inválida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-010 | Exibir lembrete cadastrado com dados claros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-011 | Exibir status do lembrete de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-012 | Identificar lembrete pendente quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-013 | Identificar lembrete concluído quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-014 | Identificar lembrete vencido quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-015 | Marcar lembrete como concluído quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-016 | Reabrir lembrete quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-017 | Editar lembrete existente quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-018 | Impedir edição de lembrete com dados inválidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-019 | Excluir lembrete após confirmação quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-020 | Cancelar exclusão de lembrete quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-021 | Manter Lembretes utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-022 | Navegar entre Lembretes e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-023 | Exibir Lembretes corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-024 | Exibir Lembretes corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-025 | Não exibir placeholders, dados técnicos ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-LEM-026 | Comunicar claramente o valor operacional dos lembretes para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Lembretes disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há ou não lembretes existentes.
- [ ] Confirmar se o módulo possui criação manual de lembrete.
- [ ] Confirmar se ações de edição/exclusão/conclusão estão disponíveis.
- [ ] Confirmar se existe status pendente/concluído/vencido.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências futuras

- `TC-LEM-001-lembretes-carregamento.png`
- `TC-LEM-004-lembretes-estado-vazio.png`
- `TC-LEM-007-lembrete-criado-com-dados-validos.png`
- `TC-LEM-009-lembrete-data-invalida.png`
- `TC-LEM-011-lembrete-status-visivel.png`
- `TC-LEM-015-lembrete-marcado-concluido.png`
- `TC-LEM-017-lembrete-editado.png`
- `TC-LEM-019-lembrete-exclusao-confirmada.png`
- `TC-LEM-023-lembretes-desktop.png`
- `TC-LEM-024-lembretes-mobile-like.png`
- `BUG-008-lembretes-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Lembretes agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Formulários ainda precisam ser executados manualmente.
- Validação de datas ainda precisa ser confirmada em runtime.
- Fluxos de edição/exclusão/conclusão ainda precisam ser confirmados em execução real.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.
- Integrações externas de notificação, se existirem, não foram validadas.

## Próximos passos

- Iniciar execução manual do módulo Lembretes em ciclo futuro.
- Executar TC-LEM-001 a TC-LEM-026.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.
