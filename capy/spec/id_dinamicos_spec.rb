describe 'Ids Dinâmicos', :idDinamico do

    before(:each) do
        visit '/access'
    end

    it 'cadastro' do
        #para localizar no fim do id
        find('input[id$=UsernameInput]').set 'rafael'
        # para localizar no começo do id
        find('input[id^=PasswordInput]').set '123456'
        # para localizar no meio do id
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end

end