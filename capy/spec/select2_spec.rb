describe 'Select 2', :select2 do


    describe('single', :single) do
        before(:each) do
            visit '/apps/select2/single.html'
        end

        it 'seleciona ator por nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text:'Adam Sandler').click
            sleep 3
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'
            find('.select2-results__option').click
            sleep 3
        end
    end

    describe('multiple', :multi) do
        before(:each) do
            visit '/apps/select2/multi.html'
        end

        def seleciona(ator)
            find('.select2-selection__rendered').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end

        it 'seleciona atores' do
            atores = ['Chris Rock', 'Adam']
            atores.each do |a|
            seleciona(a)
            end
            sleep 3
        end
    end

end