class AnswerController < ApplicationController

    def index
        answers = Answer.all

        render json: answers
    end

    def create
        answer = Answer.create(answer_params)

        render json: answer
    end

    def update
        answer = Answer.find(params[:id])
        answer.update(answer_params)

        render json: answer
    end

    private

    def answer_params
        params.require(:answer).permit(:question_id, :text, :upvotes, :field_id)
    end

end