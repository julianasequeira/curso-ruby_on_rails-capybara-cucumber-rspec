require 'pessoa'

describe 'Atriburos' do

  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new }
  it 'have_attributes' do
    pessoa.nome = "Juliana"
    pessoa.idade = 23
    expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end

  it 'have_attributes' do
    pessoa.nome = "José"
    pessoa.idade = 55
    expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end
end