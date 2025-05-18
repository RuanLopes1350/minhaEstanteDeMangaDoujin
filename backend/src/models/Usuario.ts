export interface Usuario {
    id: string;
    nome: string;
    email: string;
    senha: string;
    data_nascimento: Date;
    data_cadastro: Date;
    avatar?: string;
    lista_leitura: string[];
}