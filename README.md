# MAC Address Changer

Este é um pequeno script Bash para alterar o endereço MAC de uma interface de rede de forma aleatória. Ele utiliza a ferramenta `macchanger` para gerar e aplicar um novo endereço MAC.

## Funcionalidades 

- Verifica se a interface de rede especificada existe.
- Desativa a interface de rede antes de alterar o endereço MAC.
- Gera e aplica um novo endereço MAC aleatório.
- Reativa a interface de rede após a alteração.
- Exibe o novo endereço MAC aplicado.

## Requisitos

- Sistema operacional Linux.
- Ferramenta `macchanger` instalada.
- Permissões de superusuário (sudo).

## Como Usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/f50kdev/Macchanger.git
