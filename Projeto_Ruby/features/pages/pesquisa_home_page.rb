class PesquisaHomePage < SitePrism::Page
    element :campobusca,"input[@id=search_query_top]"
    element :btnpesquisar,'button[@class=btn btn-default button-search]'
   # element :selectproduto, :xpath , '//div[@class="right-block"]/h5[@itemprop="name"]/a[@title="Printed Summer Dress"]'   
end

# --def selecionarproduto

   # campobusca.send_keys "casual"
  #  btnpesquisar.click
 #   puts 'Deu tudo certo!'
#end

