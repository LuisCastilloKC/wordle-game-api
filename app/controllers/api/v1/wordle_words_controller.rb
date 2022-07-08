class Api::V1::WordleWordsController < ApplicationController
    
    def index
        wordle_word = WordleWords.all
        render json: wordle_words
    end

    def create
        wordle_word = WordleWords.new(wordle_word_params)
        
        if wordle_word.save
            render json: wordle_word, status: :created
        else
            render json: wordle_word.errors, status: :unprocessable_entity
        end
    end
end