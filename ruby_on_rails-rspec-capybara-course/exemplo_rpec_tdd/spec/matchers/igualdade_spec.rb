describe "Matchers de igualdade" do
  it '#equal - testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#be - testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it '#eql - testa se é o mesmo valor' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eql(y)
    expect(x).to eql(x)
  end

  it '#eq - testa se é o mesmo valor' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eq(y)
    expect(x).to eq(x)
  end
end