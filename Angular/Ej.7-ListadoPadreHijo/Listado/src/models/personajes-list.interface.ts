// Generated by https://quicktype.io

export interface PersonajesListResponse {
    count:    number;
    next:     string;
    previous: null;
    results:  Personajes[];
}

export interface Personajes {
    name:       string;
    height:     string;
    mass:       string;
    hair_color: string;
    skin_color: string;
    eye_color:  string;
    birth_year: string;
    gender:     string;
    homeworld:  string;
    films:      string[];
    species:    string[];
    vehicles:   string[];
    starships:  string[];
    created:    string;
    edited:     string;
    url:        string;
}