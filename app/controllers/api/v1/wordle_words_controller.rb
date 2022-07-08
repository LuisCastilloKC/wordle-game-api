class Api::V1::WordleWordsController < ApplicationController
    
    def index
        wordle_words = WordleWords.all
        render json: wordle_words
    end

end