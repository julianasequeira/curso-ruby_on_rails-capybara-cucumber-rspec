require 'string_nao_vazia'

describe 'Classes' do
  it 'be_instace_of' do 
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do 
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer)
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_an' do
    str = StringNaoVazia.new
    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)

  end
end