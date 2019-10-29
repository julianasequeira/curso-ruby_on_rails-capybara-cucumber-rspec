require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    student = Student.new
    expect(student).to receive(:bar)
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repeticao' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    student.foo(123)
  end
end