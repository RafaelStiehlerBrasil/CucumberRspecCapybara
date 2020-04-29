describe 'upload', :upload do
    before(:each) do
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixture/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixture/lancer.jpg'

   end

   it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'
        div_arq =  find('#uploaded-file')
        expect(div_arq.text).to eql 'arquivo.txt'
   end

   it 'upload com arquivo imagem', :upload_imagem do
    attach_file('file-upload', @imagem)
    click_button 'Upload'
    div_arq =  find('#new-image')
    expect(div_arq[:src]).to include 'lancer.jpg'
end

    after(:each) do
        sleep 3
    end

end