describe 'Alertas de JS', :alerta do
    before(:each) do
        visit '/javascript_alerts'
    end


    it 'validando alertas' do
        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
    end

    it 'validar sim confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
    end

    it 'validar não confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end

    it 'validar accept prompt', :aceept do
        accept_prompt(with: 'Rafael') do
            click_button 'Prompt'
        end
        expect(page).to have_content 'Olá, Rafael'
    end

    it 'validar dismiss prompt', :dismiss do
        dismiss_prompt(with: 'Rafael') do
            click_button 'Prompt'
        end
        expect(page).to have_content 'Olá, null'
    end

end