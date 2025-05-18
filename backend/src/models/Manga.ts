export interface Manga {
    id:string;
    status: string;
    titulo_japones?: string;
    titulo: string;
    sinopse?: string;
    autor?: string;
    data_lancamento?: Date;
    pagina: number;
    capitulo?: number;
    volume?: number;
    idioma: string;
    data_inicio_leitura: Date;
    data_ultima_atualizacao: Date;
    data_fim_leitura: Date;
    tags: string[];
    nsfw: boolean;
    link_leitura:string;
    link_capa:string;
    avaliacao: number;
}