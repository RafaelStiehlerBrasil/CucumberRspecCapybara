class Veiculo
    attr_accessor :nome, :marca, :modelo
    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end
    def ligar
        puts "#{nome} está pronto para ser usado"
    end

    def businar
        puts "beep beep beep"

    end
end


class Carro < Veiculo
    def dirigir 
        puts "#{nome} iniciando o trajeto"
    end

end

class Moto < Veiculo
    def pilotar 
        puts "#{nome} iniciando o trajeto"
    end
end

gol = Carro.new('Gol', 'Volksvagen', 'track')
puts gol.ligar
puts gol.businar
puts gol.dirigir

palio = Carro.new('Palio', 'Fiat', 'ELX')
puts palio.ligar
puts palio.businar
puts palio.dirigir

hornet = Moto.new('Hornet', 'Honda', '600')
puts hornet.ligar
puts hornet.businar
puts hornet.pilotar