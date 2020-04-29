# ruby  linguagen considerada puramente orientado a objetos
# porque no ruby tudo sao objetos

# classe  possui atributos e metodos
# caracteristicas e ações

# carro(Nome, Marcar, Modelo, Cor, Quantidade portas, etc)
# ligar, buzinar, parar, etc

class Carro
    attr_accessor :nome 
    
    def ligar
        puts 'o carro esta pronto para iniciar trajeto'
    end
end

civic = Carro.new
civic.nome = 'civic'
civic.ligar
puts civic.nome
