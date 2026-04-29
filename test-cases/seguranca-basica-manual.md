# Casos de Teste — Segurança básica manual

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Segurança básica manual |
| Tipo de documento | Casos de teste manuais (preparação) |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado / Não Executado |
| Base | Inspeção estática do projeto `firmus-app` |

## 2. Objetivo

Preparar cobertura profissional para validação manual futura de segurança básica do Firmus, com foco em autenticação, sessão, proteção de rotas, shell interno, rotas públicas, bloqueios por plano, validações e mensagens, sem execução invasiva.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rotas públicas/privadas, auth, proxy/middleware, guards, limites de plano, mensagens, validações e testes Cypress relacionados.
- Sem execução manual no navegador neste ciclo.
- Sem coleta de screenshots neste ciclo.

## 4. Regras e premissas de segurança básica

- Cobertura de QA manual básico, não pentest.
- Sem brute force, scanner, fuzzing agressivo ou exploração invasiva.
- Resultado real de UI depende de execução futura.
- Casos definidos para status inicial `Planejado` e `Não Executado`.

## 5. Escopo e limites da abordagem

- Login, logout, sessão, rotas públicas e privadas.
- Redirecionamento de acesso anônimo.
- Presença de shell interno apenas em área autenticada.
- Bloqueios de recurso por plano quando aplicável.
- Mensagens sem exposição técnica indevida.

## 6. Fora de escopo

- Pentest e auditoria formal de segurança.
- Testes invasivos e scanner automatizado de vulnerabilidade.
- Testes de infraestrutura, carga ou produção.

## 7. Massa de dados ou condições sugeridas

- Usuário válido de autenticação.
- Usuário/sessão inválida ou ausente.
- Credenciais inválidas para login negativo.
- Cenário com plano restrito para validação de bloqueios.
- Inputs vazios e inválidos para validações negativas.

## 8. Casos de teste detalhados

Base da definição (aplicável a todos os casos):
Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados.

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-SEC-001 | Segurança básica manual | Segurança / Acesso | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Aplicação acessível; usuário sem sessão | Acesso direto em `/` sem autenticação | 1. Abrir URL privada `/` sem login. 2. Observar comportamento de redirecionamento. | Usuário anônimo é impedido de acessar Dashboard e direcionado para login. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-002 | Segurança básica manual | Segurança / Acesso | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Aplicação acessível; usuário sem sessão | Acesso direto em `/clients` sem autenticação | 1. Abrir URL `/clients` sem login. 2. Verificar bloqueio/redirecionamento. | Usuário anônimo não acessa Clientes e é redirecionado/bloqueado conforme regra. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-003 | Segurança básica manual | Segurança / Acesso | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Aplicação acessível; usuário sem sessão | Acesso direto em `/quotes` sem autenticação | 1. Abrir URL `/quotes` sem login. 2. Verificar bloqueio/redirecionamento. | Usuário anônimo não acessa Orçamentos e é redirecionado/bloqueado conforme regra. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-004 | Segurança básica manual | Segurança / Acesso | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Aplicação acessível; usuário sem sessão | Acesso direto em `/charges` sem autenticação | 1. Abrir URL `/charges` sem login. 2. Verificar bloqueio/redirecionamento. | Usuário anônimo não acessa Cobranças e é redirecionado/bloqueado conforme regra. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-005 | Segurança básica manual | Segurança / Acesso | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Aplicação acessível; usuário sem sessão | Acesso direto em `/financial-overview` sem autenticação | 1. Abrir URL `/financial-overview` sem login. 2. Verificar bloqueio/redirecionamento. | Usuário anônimo não acessa Visão Financeira e é redirecionado/bloqueado conforme regra. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-006 | Segurança básica manual | Segurança / Auth | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário com credencial válida | Login válido | 1. Realizar login com credencial válida. 2. Navegar por módulos privados. | Usuário autenticado acessa rotas privadas permitidas. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-007 | Segurança básica manual | Segurança / UI | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário autenticado | Navegação interna | 1. Entrar com usuário válido. 2. Acessar rota privada. 3. Verificar shell interno. | Shell interno é exibido apenas em contexto autenticado. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-008 | Segurança básica manual | Segurança / UI | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário sem sessão | Acesso a `/public/bio` e `/public/quotes/{publicId}` | 1. Acessar rotas públicas sem autenticação. 2. Verificar ausência do shell interno. | Páginas públicas não exibem shell interno nem navegação privada. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-009 | Segurança básica manual | Segurança / Sessão | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário autenticado | Acionamento de logout | 1. Executar logout. 2. Tentar navegar em rota privada. | Sessão encerrada e acesso privado bloqueado após logout. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-010 | Segurança básica manual | Segurança / Sessão | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário recém-deslogado | Tentativa de retorno a rota privada | 1. Fazer logout. 2. Acessar URL privada por navegação direta. | Retorno é bloqueado e usuário é enviado para login. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-011 | Segurança básica manual | Segurança / Sessão | Média | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário autenticado em rota privada | Refresh de página | 1. Autenticar. 2. Abrir rota privada. 3. Atualizar a página. | Sessão válida permanece ativa e rota privada continua acessível. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-012 | Segurança básica manual | Segurança / Sessão | Média | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário sem sessão válida | Refresh em rota privada | 1. Estar desautenticado. 2. Abrir rota privada. 3. Atualizar a página. | Usuário desautenticado é redirecionado/bloqueado sem acesso a conteúdo interno. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-013 | Segurança básica manual | Segurança / Login Negativo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Tela de login acessível | Credenciais inválidas | 1. Informar usuário válido com senha inválida. 2. Submeter login. | Exibe erro compreensível sem detalhe técnico/sensível. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-014 | Segurança básica manual | Segurança / Validação | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Tela de login acessível | Campos obrigatórios vazios | 1. Manter usuário/senha vazios. 2. Tentar submeter. | Formulário sinaliza obrigatoriedade e impede submissão inválida. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-015 | Segurança básica manual | Segurança / URL Direta | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário sem sessão | URL direta de módulo interno | 1. Acessar URLs internas diretamente sem login. | Acesso direto anônimo é bloqueado/redirecionado ao login. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-016 | Segurança básica manual | Segurança / Rota Pública | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário sem sessão | Acesso a rota pública aplicável | 1. Abrir `/public/bio` sem autenticação. | Rota pública acessível sem exigir autenticação. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-017 | Segurança básica manual | Segurança / Exposição de Dados | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Acesso a páginas públicas | Observação de conteúdo público | 1. Acessar páginas públicas. 2. Revisar conteúdo visível. | Não exibe dados internos sensíveis do workspace. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-018 | Segurança básica manual | Segurança / Plano | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário autenticado com plano restrito | Acesso a recurso com guard de plano | 1. Definir condição de plano restrito. 2. Abrir recurso bloqueável. | Mensagem de bloqueio por plano é clara e orienta upgrade quando aplicável. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-019 | Segurança básica manual | Segurança / Plano | Média | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário autenticado com plano restrito | Tentativa de uso de recurso bloqueado | 1. Acessar recurso restrito. 2. Tentar executar ação principal. | Uso funcional é impedido enquanto o plano não permite. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-020 | Segurança básica manual | Segurança / Validação Negativa | Média | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Formulários internos acessíveis com usuário válido | Inputs inválidos e campos livres | 1. Inserir dados inválidos em inputs relevantes. 2. Tentar salvar/enviar. | Aplicação permanece estável e trata entrada inválida sem quebra. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-021 | Segurança básica manual | Segurança / Mensagens | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Fluxo com erro tratável | Mensagens de erro de login e operação | 1. Acionar erros tratáveis. 2. Revisar textos exibidos. | Mensagens não exibem stack trace, segredo, token ou detalhes técnicos indevidos. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-022 | Segurança básica manual | Segurança / Dados Sensíveis | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Navegação pública e autenticada | Revisão visual de labels e textos | 1. Percorrer páginas-chave. 2. Verificar ausência de token/secret em UI. | Não há exposição visível de credenciais, segredo ou token. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-023 | Segurança básica manual | Segurança / Mobile-like | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Execução em viewport mobile-like | Login/logout e navegação privada/pública | 1. Configurar viewport mobile-like. 2. Repetir cenários de acesso e logout. | Regras de segurança básica permanecem consistentes em mobile-like. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-024 | Segurança básica manual | Segurança / Sessão | Média | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário autenticado | Atualizações de páginas internas | 1. Navegar por páginas internas. 2. Atualizar páginas múltiplas. | Comportamento seguro é preservado em atualizações de páginas internas. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-025 | Segurança básica manual | Segurança / Rota Pública | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Usuário sem sessão | Rotas públicas de bio e orçamento público | 1. Acessar rotas públicas. 2. Verificar se menu/shell interno não é herdado. | Rotas públicas não exibem navegação interna indevida. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |
| TC-SEC-026 | Segurança básica manual | Segurança / Comunicação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de autenticação, proteção de rotas, shell interno, rotas públicas, guards, limites de plano, validações e testes Cypress relacionados. | Fluxos com bloqueio e limitação | Mensagens de bloqueio e limitação | 1. Acionar cenários com bloqueio por plano e falhas de auth. 2. Revisar clareza dos textos. | Limitações e bloqueios são comunicados de forma clara sem informação técnica sensível. | Não validado em navegador | Pendente de execução manual | Cenário preparado por análise estática. |

## 9. Checklist de pré-execução manual

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

## 10. Plano de evidências para execução futura

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

## 11. Critérios de aceite de segurança básica

- Rotas privadas inacessíveis a usuário anônimo.
- Rotas públicas acessíveis conforme desenho do produto.
- Sessão criada e encerrada de forma consistente.
- Logout bloqueando retorno anônimo ao conteúdo privado.
- Mensagens sem vazamento técnico visível.
- Bloqueios por plano comunicados com clareza.

## 12. Observação sobre execução

Documento de preparação por análise estática. Todos os casos permanecem com status de design `Planejado` e status de execução `Não Executado` até realização de ciclo manual futuro em navegador.
