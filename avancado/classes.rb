class Conta
    attr_accessor :saldo, :nome
    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        #puts 'depositantando a quantidade de ' + valor.to_s + ' reais'
        puts "depositando a quantia de #{valor} reais na conta #{self.nome}"
    end
end

c = Conta.new('rafael')
c.deposita(100.00)
c.deposita(20.00)
puts c.saldo
