describe 'Teste Double' do
  it '--' do
    user = double('User')
    allow(user).to receive(:name).and_return('Ju')
    allow(user).to receive(:password).and_return('123')
    puts user.name
    puts user.password
  end

  it 'as_null_object' do
    user = double('User')
    allow(user).to receive(:name).and_return('Ju')
    allow(user).to receive(:password).and_return('123')
    puts user.name
    puts user.password
  end
end