export interface Manga {
    titulo: string;
    sinopse?: string;
    autor?: string;
    data_lançamento?: Date;
    pagina: number;
    capitulo?: number;
    volume?: number;
    idioma: string;
    data_inicio_leitura: Date;
    data_fim_leitura: Date;
    tags: string[];
    link_leitura:string;
    link_capa:string;
}