require 'pessoa'

shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento}!")
  end
end

describe 'Pessoa' do 
  subject(:pessoa) { Pessoa.new }
  
  include_examples 'status', :feliz
  it_behaves_like 'status', :triste
  it_should_behave_like 'status', :cansado

  # it 'feliz!' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq("Sentindo-se feliz!")
  # end

  # it 'triste!' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq("Sentindo-se triste!")
  # end

  # it 'cansado!' do
  #   pessoa.cansado!
  #   expect(pessoa.status).to eq("Sentindo-se cansado!")
  # end
end