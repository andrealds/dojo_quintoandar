Dado("que eu acesso o site quinto andar") do
    visit "https://www.quintoandar.com.br"
  end
  
  Quando("faço uma pesquisa aplicando os filtros") do
    find('input[name="LocationName"]').set('consolação, paulista')
    page.has_content?('Paulista - Consolação, São Paulo - SP, Brasil', wait: 60)
    find('div[id="listitem_0"]').click
    page.all('span[class="sc-bdVaJa kDsHXK"]')[0].click
    find('label[for="id-1-2"]').click
    find('label[for="id-2-1"]').click
    find('label[for="id-3-2"]').click
    find('label[for="id-4-2"]').click
    find('label[for="id-5-2"]').click
    find('label[for="id-6-3"]').click
    page.all('span', text: 'APLICAR')[0].click
  end

  Então("valido que os filtros foram aplicados:") do |table|
    filtros = table.hashes
    filtros.map{|x| x.values}.flatten.each do |filtro|
        expect(page.has_content?("#{filtro}", wait: 5)).to be true
      end

  end