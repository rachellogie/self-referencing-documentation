require_relative '../lib/dict'

describe 'dict' do
  it 'returns the definition of the word you give it and the links' do
    dict = Dict.new('word')

    actual = dict.parse
    expected =
{
  definition: "a collection of letters",
  see_also: [
    "//example.com/letter",
    "//example.com/collection"
  ]
}
    expect(actual).to eq expected
  end
end