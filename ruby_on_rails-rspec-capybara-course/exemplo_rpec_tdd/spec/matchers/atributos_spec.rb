require 'pessoa'

describe 'Atriburos' do

  before(:context) do 
    puts ">>>> ANTES DE TODOS OS TESTE"
  end
  
  after(:all) do 
    puts ">>>> DEPOIS DE TODOS OS TESTE"
  end

  # before(:each) do
  #   puts "ANTES"
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   @pessoa.nome = "Sem nome!"
  #   puts "DEPOIS >>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts 'ANTES'
    @pessoa = Pessoa.new

    teste.run

    @pessoa.nome = "Sem nome!"
    puts "DEPOIS >>>>>> #{@pessoa.inspect}"

  end

  it 'have_attributes' do
    @pessoa.nome = "Juliana"
    @pessoa.idade = 23
    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end

  it 'have_attributes' do
    @pessoa.nome = "José"
    @pessoa.idade = 55
    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end
end