Dado('que eu acesse a plataforma do ecommerce') do
    home_page.load
    expect(page.current_url).to eql CONFIG['url_padrao']
end

Dado('que eu pesquise o produto') do
    
    pesquisa_home_page.campobusca.send_keys "casual"
    pesquisa_home_page.btnpesquisar.click
    puts 'Deu tudo certo!'

end