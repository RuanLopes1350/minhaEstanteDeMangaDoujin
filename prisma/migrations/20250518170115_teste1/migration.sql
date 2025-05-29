-- CreateTable
CREATE TABLE "usuarios" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "data_nascimento" TIMESTAMP(3) NOT NULL,
    "data_cadastro" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "avatar" TEXT,

    CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "mangas" (
    "id" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "titulo_japones" TEXT,
    "titulo" TEXT NOT NULL,
    "sinopse" TEXT,
    "autor" TEXT,
    "data_lancamento" TIMESTAMP(3),
    "pagina" INTEGER NOT NULL,
    "capitulo" INTEGER,
    "volume" INTEGER,
    "idioma" TEXT NOT NULL,
    "data_inicio_leitura" TIMESTAMP(3) NOT NULL,
    "data_ultima_atualizacao" TIMESTAMP(3) NOT NULL,
    "data_fim_leitura" TIMESTAMP(3),
    "tags" TEXT[],
    "nsfw" BOOLEAN NOT NULL,
    "link_leitura" TEXT NOT NULL,
    "link_capa" TEXT NOT NULL,
    "avaliacao" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "mangas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "colecoes" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "descricao" TEXT,
    "usuario_id" TEXT NOT NULL,
    "public" BOOLEAN NOT NULL DEFAULT false,
    "data_criacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "data_atualizacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "colecoes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_UsuarioMangas" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_UsuarioMangas_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateTable
CREATE TABLE "_ColecaoMangas" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_ColecaoMangas_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_email_key" ON "usuarios"("email");

-- CreateIndex
CREATE INDEX "_UsuarioMangas_B_index" ON "_UsuarioMangas"("B");

-- CreateIndex
CREATE INDEX "_ColecaoMangas_B_index" ON "_ColecaoMangas"("B");

-- AddForeignKey
ALTER TABLE "colecoes" ADD CONSTRAINT "colecoes_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "usuarios"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_UsuarioMangas" ADD CONSTRAINT "_UsuarioMangas_A_fkey" FOREIGN KEY ("A") REFERENCES "mangas"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_UsuarioMangas" ADD CONSTRAINT "_UsuarioMangas_B_fkey" FOREIGN KEY ("B") REFERENCES "usuarios"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ColecaoMangas" ADD CONSTRAINT "_ColecaoMangas_A_fkey" FOREIGN KEY ("A") REFERENCES "colecoes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ColecaoMangas" ADD CONSTRAINT "_ColecaoMangas_B_fkey" FOREIGN KEY ("B") REFERENCES "mangas"("id") ON DELETE CASCADE ON UPDATE CASCADE;
