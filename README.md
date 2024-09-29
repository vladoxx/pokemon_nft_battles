# PokeDIO - Contrato inteligente de Batalhas de Pokémon na Blockchain


Este contrato foi desenvolvido utilizando a tecnologia de blockchain e visa criar uma plataforma de batalhas entre Pokémons tokenizados como NFTs (Non-Fungible Tokens). O contrato permite que o proprietário do jogo crie novos Pokémons e os associe a jogadores. Cada jogador pode ter até dois Pokémons, e as batalhas entre eles são baseadas nos níveis e experiência de cada Pokémon.

Os Pokémons são representados como tokens ERC721, o que significa que são únicos e podem ser negociados como ativos digitais. Além disso, cada Pokémon tem atributos como nome, nível, imagem, experiência e tipo (por exemplo, fogo, água).



## Pokemon imagem

- Pikachu: **https://m.media-amazon.com/images/I/51vz77lUS8L.jpg**;
- Bulbasaur: **https://static.wikia.nocookie.net/legendsofthemultiuniverse/images/4/4c/001_bulbasaur_by_pklucario-d5z1g10.png/revision/latest?cb=20170701131534**

### Funcionalidades principais:
- **Criação de novos Pokémons**: Apenas o dono do jogo pode criar novos Pokémons e distribuí-los aos jogadores. Cada jogador pode ter no máximo dois Pokémons.
- **Batalha entre Pokémons**: Os jogadores podem fazer seus Pokémons batalharem. O resultado da batalha depende do nível e da experiência dos Pokémons envolvidos. Com base nos resultados, os Pokémons podem ganhar experiência e evoluir.
- **Evolução**: Após cada batalha, o Pokémon atacante pode ganhar experiência e, ao atingir 10 pontos, evolui para o próximo nível.

## Tecnologias Utilizadas

### 1. **Solidity**
O contrato foi escrito em Solidity, uma linguagem de programação voltada para o desenvolvimento de contratos inteligentes na blockchain Ethereum. A versão utilizada neste contrato é `^0.8.0`.

### 2. **Remix IDE**
O Remix foi utilizado para desenvolver e compilar o contrato. Remix é uma IDE baseada em navegador que permite escrever, compilar e implantar contratos Solidity de maneira simples.

### Remix
![image](https://github.com/user-attachments/assets/dd3f57a1-43a6-463d-9451-c1ec3aee16fc)

### 3. **OpenZeppelin**
A biblioteca OpenZeppelin foi utilizada para herdar as funcionalidades do padrão ERC721, permitindo que os Pokémons sejam tratados como NFTs. O contrato `ERC721` foi importado da biblioteca para garantir segurança e conformidade com os padrões Ethereum.

### 4. **Metamask**
O Metamask foi utilizado como uma carteira digital para conectar o navegador ao Remix e interagir com o contrato. Através do Metamask, o dono do jogo pode criar Pokémons e os jogadores podem realizar batalhas, sem necessidade de configurações complexas.

### Metamask
![image](https://github.com/user-attachments/assets/f782a2bd-5993-4b4b-9059-534dcc551d03) ![image](https://github.com/user-attachments/assets/723dc152-566a-4b60-8a47-876d869b3c66)

### 5. **Ganache**
Para testar e desenvolver o contrato localmente, o Ganache foi utilizado para simular uma blockchain Ethereum local. Ele permite a execução de transações sem custo, fornecendo um ambiente seguro para depuração e desenvolvimento de contratos.

### Ganache
![image](https://github.com/user-attachments/assets/3dee9231-1684-4d2f-9e5f-3e26286c283c) ![image](https://github.com/user-attachments/assets/d23bceda-cad9-467e-8174-bf686308607a)



---
