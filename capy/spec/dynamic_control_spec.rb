describe 'Dynamic Control', :dc do
    before(:each) do
        visit '/dynamic_controls'
   end

   it 'quando habilita o campo' do
        # quando tem a prop disabled true o campo esta desabilitado quando nao tem o disabled está true
        res = page.has_field? 'movie', disabled: true
        puts res

        click_button 'Habilita'
        res = page.has_field? 'movie', disabled: false
        puts res
   end
end