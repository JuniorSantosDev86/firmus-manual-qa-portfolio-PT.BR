# BUG-007 — Mensagem de validação obrigatória exibida em inglês

| Campo | Informação |
|---|---|
| ID | BUG-007 |
| Título | Mensagem de validação obrigatória exibida em inglês |
| Módulo | Perfil da Empresa |
| Ambiente | Desenvolvimento local |
| Navegador | Google Chrome 147.0.7727.116 |
| Sistema operacional | Ubuntu Linux 24.04 |
| Dispositivo/viewport | Desktop 1366x900 |
| Severidade | Baixa |
| Prioridade | Média |
| Status | Aberto |
| Reportado por | Ademir dos Santos Junior |
| Data | 2026-04-28 |

## Resumo

Ao tentar salvar o perfil da empresa com campos obrigatórios vazios, o sistema impede o salvamento, porém exibe a mensagem nativa do navegador em inglês: `Please fill out this field.`.

## Pré-condições

- Aplicação Firmus acessível em `http://localhost:3000/`.
- Usuário autenticado.
- Módulo Perfil da Empresa acessível.
- Formulário de criação ou edição disponível.

## Passos para Reprodução

1. Acessar `http://localhost:3000/`.
2. Autenticar com credenciais válidas.
3. Acessar Principal > Perfil da Empresa.
4. Manter os campos obrigatórios Nome da empresa e Nome profissional vazios.
5. Acionar o botão `Salvar perfil`.

## Resultado Atual

O sistema bloqueia o salvamento, mas a mensagem de validação exibida ao usuário aparece em inglês: `Please fill out this field.`.

## Resultado Esperado

O sistema deve bloquear o salvamento e exibir mensagem de validação em PT-BR, por exemplo: `Preencha este campo obrigatório.`

## Evidência

- Screenshot: `../evidences/screenshots/BUG-007-perfil-empresa-validacao-obrigatoria-ingles.png`

## Impacto

A inconsistência de idioma prejudica a experiência em PT-BR e reduz a percepção de acabamento do módulo, especialmente em um fluxo básico de cadastro do perfil da empresa.

## Observações adicionais

O bloqueio do salvamento ocorreu corretamente. O defeito está na comunicação da validação obrigatória ao usuário final.

## Critério de confirmação da correção

Reexecutar o fluxo de salvamento com campos obrigatórios vazios e confirmar que a mensagem exibida está em PT-BR e claramente associada ao campo obrigatório.

## Sugestão de regressão após correção

Reexecutar `TC-EMP-007` e validar novamente o fluxo de salvamento válido em `TC-EMP-006`.
