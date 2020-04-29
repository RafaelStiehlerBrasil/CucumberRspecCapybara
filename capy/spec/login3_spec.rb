describe 'Login com cadastro', :login3 do
    before(:each) do
        visit '/login'
   end

    it 'Login com sucesso' do
        login_form = find('#login')

        login_form.find('input[name=username]').set 'stark'
        login_form.find('input[name=password]').set 'jarvis!'

        click_button 'Login'
        expect(find('#flash')).to  have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

end