describe 'Tabelas', :tabs do
    before(:each) do
        visit '/tables'
    end

    it 'pega o tony stark na lista' do
        expect(page).to have_content 'Robert Downey Jr'
    end

    it 'deve exibir o salario do stark' do
        atores = all('table tbody tr')
        stark = atores.detect{|ator| ator.text.include?('Robert Downey Jr')}
        expect(stark.text).to include '10.000.000'
    end

    it 'deve exibir o salario do vin diesel' do
        vinDiesel = find('table tbody tr', text: '@vindiesel')
        expect(vinDiesel).to have_content '10.000.000'
    end

    it 'deve exibir o filme velozes' do
        vinDiesel = find('table tbody tr', text: '@vindiesel')
        movie = vinDiesel.all('td')[2].text
        expect(movie).to eql 'Velozes e Furiosos'
    end

end