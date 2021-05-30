describe 'Realizar requisição GET e:' do
    it 'Verificar dados retornados pela API referente ao Brasil' do

        @Resultado = APICovid.get('/countries/76')

        puts @Resultado.body  # printando o body retornado.

        expect(@Resultado.parsed_response['continent']).to eq 'South America'
        expect(@Resultado.parsed_response['country']).to eq 'Brazil'
    end
end