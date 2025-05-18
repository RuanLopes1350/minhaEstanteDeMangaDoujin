export interface Colecao {
    id: string;
    nome: string;
    descricao?: string;
    usuario_id: string;
    conteudo: string[];
    public: boolean;
    data_criacao: Date;
    data_atualizacao: Date;
}