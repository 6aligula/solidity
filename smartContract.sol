/* version de solidity ^0.4.19 (juegoZombies) */
pragma solidity ^0.8.13;

contract ZombieFactory {
    /* uint entero sin signo */
    uint dnaDigits = 16;
    /* 10 ** dnaDigits = 10 elevado a 16 */
    uint dnaModulus = 10 ** dnaDigits;

    // structura de datos compleja
    struct Zombie {
        string name;
        uint dna;
    }

    /*Crea un array público de estructuras Zombie y llámalo zombies.
    con la palabra public el array puede ser leido pero no escrito por otros contratos*/
    Zombie[] public zombies;

    /* la convención (no obligatoria) es llamar los parámetros de las funciones 
    con nombres que empiezan con un subrayado (_) para de esta forma 
    diferenciarlos de variables globales. */
    function _createZombie(string _name, uint _dna) private {
        //crear un zombie con su _name y _dna y añadirlo al array Zombie
        zombies.push(Zombie(_name, _dna));
    }

}