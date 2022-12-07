require 'grammar_checker'

RSpec.describe 'Testing the grammar checker' do
    context 'It starts with a capital letter' do
        it 'returns true' do
            result = grammar_checker('Hello.')
            expect(result).to eq true
        end
    end
    context 'It doesnt start with a capital letter' do
        it 'returns false' do
            result = grammar_checker('hello.')
            expect(result).to eq false
        end
    end
    context 'It ends with a fullstop' do
        it 'returns true' do
            result = grammar_checker('Hello.')
            expect(result).to eq true
        end
    end
    context 'It ends with a suitable punctuation mark' do
        it 'returns true' do
            result = grammar_checker('Hello?')
            expect(result).to eq true
        end
    end
    context 'It starts with a capital letter but doesnt end with a suitable punct mark' do
        it 'returns true' do
            result = grammar_checker('Hello')
            expect(result).to eq false
        end
    end
end