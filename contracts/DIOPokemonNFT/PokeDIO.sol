// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract PokeDIO is ERC721 {

    // Estrutura que representa um Pokémon
    struct Pokemon {
        string name; // Nome do Pokémon
        uint level;  // Nível do Pokémon
        string img;  // Imagem do Pokémon
        uint experience; // Experiência do Pokémon
        string tipo; // Tipo do Pokémon (fogo, água, etc.)
    }

    // Array que armazena todos os Pokémons criados
    Pokemon[] public pokemons;

    // Armazena o endereço do dono do jogo
    address public gameOwner;

    // Contador de Pokémon por jogador
    mapping(address => uint) public playerPokemonCount; 

    // Construtor que inicializa o contrato ERC721 e define o dono do jogo
    constructor() ERC721("PokeDIO", "PKD") {
        gameOwner = msg.sender; // Define o criador do contrato como o dono do jogo
    } 

    // Modificador que verifica se o chamador é o dono do Pokémon
    modifier onlyOwnerOf(uint _monsterId) {
        require(ownerOf(_monsterId) == msg.sender, "Apenas o dono pode batalhar com este Pokemon");
        _;
    }

    // Função para realizar uma batalha entre dois Pokémons
    function battle(uint _attackingPokemon, uint _defendingPokemon) public onlyOwnerOf(_attackingPokemon) {
        // Recupera os Pokémons atacante e defensor
        Pokemon storage attacker = pokemons[_attackingPokemon];
        Pokemon storage defender = pokemons[_defendingPokemon];

        // Lógica de batalha baseada nos níveis dos Pokémons
        uint damage = attacker.level > defender.level ? 2 : 1; // Dano baseado no nível
        attacker.experience += damage; // Ganha experiência
        
        // Evolução a cada 10 pontos de experiência
        if (attacker.experience >= 10) {
            attacker.level++;
            attacker.experience = 0; // Reseta a experiência
        }

        // Atualiza os níveis dos Pokémons
        if (attacker.level >= defender.level) {
            attacker.level += 1; 
            defender.level += 2; 
        } else {
            attacker.level += 1; 
            defender.level += 2; 
        }
    }

    // Função para criar um novo Pokémon
    function createNewPokemon(string memory _name, address _to, string memory _img, string memory _tipo) public {
        // Verifica se o chamador é o dono do jogo
        require(msg.sender == gameOwner, "Apenas o dono do jogo pode criar novos Pokemons");
        // Limitar a 2 Pokémon por jogador
        require(playerPokemonCount[_to] < 2, "Apenas 2 Pokemons por jogador"); 

        uint id = pokemons.length; // Obtém o ID do novo Pokémon (tamanho do array)
        // Adiciona o novo Pokémon ao array
        pokemons.push(Pokemon(_name, 1, _img, 0, _tipo)); // Inicializa com nível 1 e experiência 0
        playerPokemonCount[_to]++; // Aumenta o contador de Pokémon do jogador
        // Menta o NFT para o endereço especificado
        _safeMint(_to, id);
    }
}