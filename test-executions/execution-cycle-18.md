# Ciclo de Execução 18 — Segurança básica manual — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 18 |
| Módulo | Segurança básica manual |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes de Segurança básica manual com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual não invasiva.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de autenticação, rotas públicas/privadas, shell interno, guards, limites de plano, mensagens, validações e testes existentes
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Teste invasivo: Não realizado
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Autenticação.
- Logout.
- Sessão.
- Rotas privadas.
- Rotas públicas.
- Redirecionamentos.
- Shell interno.
- Proteção de acesso anônimo.
- Páginas públicas sem navegação interna indevida.
- Bloqueio por plano, se aplicável.
- Mensagens de erro sem detalhes técnicos.
- Inputs inválidos sem quebra da aplicação.
- Ausência de exposição visual de tokens, secrets ou dados sensíveis.
- Segurança básica em mobile-like.
- Plano de evidências futuras.
- Checklist de pré-execução manual.

## Fora de escopo

- Pentest.
- Teste invasivo.
- Scanner automatizado de vulnerabilidades.
- Brute force.
- Fuzzing agressivo.
- Exploração real de falhas.
- Testes de API reais.
- Testes de carga.
- Testes em infraestrutura de produção.
- Auditoria formal de segurança.
- Correção de código da aplicação.
- Alteração de arquivos dentro de `firmus-app`.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/proxy.ts` | Proteção de rotas privadas e redirecionamentos |
| `firmus-app/lib/auth/route-boundary.ts` | Definição de rotas públicas, privadas e APIs internas |
| `firmus-app/lib/auth/guards.ts` | Guardas de sessão para páginas/API |
| `firmus-app/lib/auth/session.ts` | Leitura/escrita e limpeza de sessão em cookie |
| `firmus-app/app/api/auth/login/route.ts` | Fluxo de login e retorno de erro seguro |
| `firmus-app/app/api/auth/logout/route.ts` | Encerramento de sessão e redirecionamento |
| `firmus-app/components/auth/login-form.tsx` | Validação de campos e mensagens de erro de login |
| `firmus-app/components/layout/app-shell.tsx` | Presença/ausência de shell interno em rotas públicas e privadas |
| `firmus-app/lib/services/plan-entitlements.ts` | Regras de entitlements e mensagens de bloqueio por plano |
| `firmus-app/components/plan/plan-feature-guard.tsx` | Bloqueio visual/funcional por plano |
| `firmus-app/cypress/support/commands.ts` | Comandos de login/logout usados na base automatizada |
| `firmus-app/cypress/e2e/security-foundation.cy.ts` | Referência de comportamento esperado de segurança |
| `firmus-app/cypress/e2e/home.cy.ts` | Referência de shell interno autenticado |
| `firmus-app/cypress/e2e/public-bio.cy.ts` | Referência de superfície pública sem shell |
| `firmus-app/cypress/e2e/public-quote.cy.ts` | Referência de superfície pública de orçamento sem shell |
| `firmus-app/cypress/e2e/plan-entitlements.cy.ts` | Referência de comportamento para limites e plano |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD de Segurança básica manual | Aprofundado |
| Casos de teste de Segurança básica manual | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Testes invasivos | Não realizados |
| Bugs reais reportados | Nenhum |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-SEC-001 | Impedir acesso anônimo ao Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-002 | Impedir acesso anônimo a Clientes | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-003 | Impedir acesso anônimo a Orçamentos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-004 | Impedir acesso anônimo a Cobranças | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-005 | Impedir acesso anônimo a Visão Financeira | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-006 | Permitir acesso autenticado às rotas privadas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-007 | Exibir shell interno apenas para usuário autenticado | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-008 | Não exibir shell interno em páginas públicas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-009 | Encerrar sessão ao executar logout | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-010 | Impedir retorno a rota privada após logout | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-011 | Manter sessão válida após refresh em rota privada autenticada | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-012 | Redirecionar/bloquear refresh em rota privada sem sessão válida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-013 | Tratar login com credenciais inválidas sem expor detalhe técnico | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-014 | Validar campos obrigatórios de login | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-015 | Validar acesso direto por URL a módulo interno sem autenticação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-016 | Validar acesso a rota pública sem autenticação quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-017 | Garantir que páginas públicas não exponham dados internos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-018 | Exibir bloqueio de plano de forma clara quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-019 | Impedir acesso funcional a recurso bloqueado por plano quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-020 | Tratar inputs inválidos sem quebrar aplicação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-021 | Evitar mensagens de erro com stack trace ou detalhes técnicos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-022 | Evitar exposição visível de tokens, secrets ou dados sensíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-023 | Validar segurança básica da navegação mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-024 | Preservar comportamento seguro ao atualizar páginas internas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-025 | Validar que rotas públicas não herdam navegação interna indevida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-SEC-026 | Comunicar claramente limitações e bloqueios sem vazamento técnico | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

- Confirmar aplicação acessível.
- Confirmar usuário válido para autenticação.
- Confirmar usuário/situação sem autenticação.
- Confirmar rota de login.
- Confirmar rota de logout.
- Confirmar lista de rotas privadas.
- Confirmar lista de rotas públicas.
- Confirmar módulos que possuem bloqueio por plano.
- Confirmar cenário de plano restrito, se disponível.
- Confirmar mensagens esperadas de bloqueio.
- Confirmar dados de login inválidos para teste.
- Confirmar inputs/formulários que serão usados para validação negativa.
- Confirmar que não serão feitos testes invasivos.
- Confirmar que não serão usados scanners.
- Confirmar pasta de evidências.
- Confirmar próximo número de bug disponível.
- Confirmar padrão de nomenclatura das screenshots.
- Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências futuras

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

- `TC-SEC-001-acesso-anonimo-dashboard-bloqueado.png`
- `TC-SEC-002-acesso-anonimo-clientes-bloqueado.png`
- `TC-SEC-006-acesso-autenticado-rota-privada.png`
- `TC-SEC-008-pagina-publica-sem-shell-interno.png`
- `TC-SEC-009-logout-sessao-encerrada.png`
- `TC-SEC-010-rota-privada-apos-logout-bloqueada.png`
- `TC-SEC-013-login-invalido-sem-detalhe-tecnico.png`
- `TC-SEC-018-bloqueio-plano-claro.png`
- `TC-SEC-021-erro-sem-stack-trace.png`
- `TC-SEC-023-seguranca-mobile-like.png`
- `BUG-008-seguranca-[descricao-curta].png`, se bug for encontrado no futuro.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais/de segurança básica deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

A cobertura de Segurança básica manual agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento real de autenticação ainda não validado em navegador.
- Redirecionamentos ainda precisam ser confirmados em runtime.
- Logout ainda precisa ser validado manualmente.
- Bloqueios por plano ainda precisam ser confirmados em execução real.
- Mensagens de erro ainda precisam ser avaliadas visualmente.
- Segurança básica mobile-like ainda precisa ser confirmada.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.
- Esta cobertura não substitui pentest ou auditoria formal de segurança.

## Próximos passos

- Iniciar execução manual de Segurança básica manual em ciclo futuro.
- Executar TC-SEC-001 a TC-SEC-026.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais/de segurança básica se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go da segurança básica após validação em UI.
