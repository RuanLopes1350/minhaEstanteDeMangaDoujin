import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient()

async function main() {
    
const objeto = await prisma.usuario.create({
    data: {
        nome: "Usuario Fake",
        email: "emailteste@gmail.com",
        senha: "Qualquer senha",
        data_nascimento: new Date()
    }
})   
}
main()