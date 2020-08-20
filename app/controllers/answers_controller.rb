class AnswersController < ApplicationController

    def index
        answers = Answer.all

        render json: answers
    end

    def create
            user = User.find_by(id: params[:user_id])
            question = Question.find_by(id: params[:question_id])
                user.credentials.each do |credential|
                    if credential.field.id == question.field.id
                        answer = Answer.create(answer_params)
                        render json: answer
                    else
                        render json: {message: "You must be an expert in the field to answer this question"}
                    end
                end
    end

    def update
        answer = Answer.find(params[:id])
        answer.update(answer_params)

        render json: answer
    end

    private

    def answer_params
        params.require(:answer).permit(:question_id, :text, :upvotes, :user_id)
    end

end