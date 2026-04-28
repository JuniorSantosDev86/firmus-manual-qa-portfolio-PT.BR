# Evidências — Firmus QA Manual

Esta pasta armazena evidências reais de execução manual, como screenshots e vídeos.

## Estrutura

```txt
evidences/
├── screenshots/
└── videos/
```

## Regras

- Não criar imagens ou vídeos fictícios.
- Cada evidência deve estar associada a um caso de teste ou bug.
- O nome do arquivo deve iniciar pelo ID relacionado.
- Evidências de bugs devem ser citadas no bug report correspondente.
- Evidências de casos aprovados podem ser citadas na execução manual.

## Padrão de nomeação

- `TC-AUTH-001-login-sucesso.png`
- `BUG-001-cliente-apenas-nome.png`
- `BUG-006-layout-orcamento-mobile.png`

## Evidências reais preservadas

| Arquivo | Relacionamento |
|---|---|
| `screenshots/TC-AUTH-001-login-success.png` | TC-AUTH-001 |
| `screenshots/BUG-001-client-created-with-only-name.png` | BUG-001 |
| `screenshots/BUG-002-client-invalid-contact-accepted.png` | BUG-002 |
| `screenshots/BUG-003-delete-client-not-working.png` | BUG-003 |
| `screenshots/BUG-004-quote-created-with-empty-or-invalid-fields.png` | BUG-004 |
| `screenshots/BUG-005-quote-value-accepts-text.png` | BUG-005 |
| `screenshots/BUG-006-quote-mobile-layout-overflow.png` | BUG-006 |

## Observação

Os nomes existentes foram preservados para não quebrar referências históricas. Novas evidências podem usar nomes em PT-BR desde que mantenham o ID no início.
