class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)

    end

end

# tdd desenvolvimento guiado a testes
describe AvengersHeadQuarter do
    it 'deve adicionar um vingador' do
    
        hq = AvengersHeadQuarter.new
        hq.put('spiderman')
        expect(hq.list).to eql ['spiderman']
        expect(hq.list).to include 'spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0
        expect(hq.list.size).to be > 0
        expect(res).to be == true

    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to start_with('Thor')
    end

    it 'Iroman deve ser o ultimo da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('IronMan')
        expect(hq.list).to end_with('IronMan')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Stila/)
    end
end