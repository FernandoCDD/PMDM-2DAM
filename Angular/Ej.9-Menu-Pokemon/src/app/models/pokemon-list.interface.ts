
export interface PokemonListResponse {
    count:    number;
    next:     string;
    previous: null;
    results:  Pokemons[];
}

export interface Pokemons {
    name: string;
    url:  string;
}
