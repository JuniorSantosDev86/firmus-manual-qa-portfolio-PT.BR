# Ciclo de Execução 05 — Serviços — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 05 |
| Módulo | Serviços |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Serviços com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Serviços.
- Identificação visual do módulo.
- Listagem de serviços.
- Estado vazio.
- Criação de serviço.
- Validação de campos.
- Validação de valor/preço.
- Exibição de serviço cadastrado.
- Edição de serviço, se disponível.
- Exclusão de serviço, se disponível.
- Cancelamento de exclusão, se disponível.
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
- Validação visual real em runtime.
- Validação financeira profunda.
- Integração real com orçamentos, salvo se a relação estiver claramente implementada e documentada no código.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/services/page.tsx` | Identificação da rota e conteúdo do módulo |
| `firmus-app/components/services-manager.tsx` | Estrutura da tela, formulário, listagem, CTAs, estados e mensagens |
| `firmus-app/lib/service-storage.ts` | Regras de persistência local, normalização de preço e operações de criar/editar/excluir |
| `firmus-app/lib/navigation.ts` | Confirmação de label e rota `Serviços` na navegação principal |
| `firmus-app/lib/domain/service.ts` | Modelo de dados esperado para entidade de serviço |
| `firmus-app/cypress/e2e/services.cy.ts` | Referência adicional de fluxo esperado de criação, edição, refresh e exclusão |
| `firmus-app/cypress/e2e/home.cy.ts` | Referência de navegação entre Dashboard e Serviços |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Serviços | Aprofundado |
| Casos de teste do módulo Serviços | Aprofundados |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-SRV-001 | Carregar a página de Serviços com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-002 | Exibir identificação visual do módulo Serviços | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-003 | Exibir listagem de serviços quando houver registros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-004 | Exibir estado vazio quando não houver serviços cadastrados | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-005 | Exibir ação de criação de serviço | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-006 | Abrir formulário de criação de serviço | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-007 | Cadastrar serviço com dados válidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-008 | Impedir cadastro de serviço com campos obrigatórios vazios | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-009 | Impedir cadastro de serviço com valor/preço inválido | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-010 | Impedir cadastro de serviço com texto inválido ou inconsistente | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-011 | Exibir serviço cadastrado com dados claros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-012 | Editar serviço existente quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-013 | Impedir edição de serviço com dados inválidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-014 | Excluir serviço após confirmação quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-015 | Cancelar exclusão de serviço quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-016 | Manter Serviços utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-017 | Navegar entre Serviços e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-018 | Exibir Serviços corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-019 | Exibir Serviços corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-020 | Não exibir placeholders, dados técnicos ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SRV-021 | Comunicar claramente o valor operacional dos serviços para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Serviços agora possui BDD e casos de teste prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Formulários ainda precisam ser executados manualmente.
- Validação de campos ainda precisa ser confirmada em runtime.
- Fluxos de edição/exclusão ainda precisam ser confirmados em execução real.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.

## Próximos passos

- Executar o módulo Serviços manualmente em navegador em ciclo futuro.
- Coletar screenshots reais.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.
