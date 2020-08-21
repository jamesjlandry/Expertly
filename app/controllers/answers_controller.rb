class AnswersController < ApplicationController

    def index
        answers = Answer.all

        render json: answers
    end

    def create
            user = User.find_by(id: params[:answer][:user_id])
            question = Question.find_by(id: params[:answer][:question_id])
            byebug
                user.credentials.each do |credential|
                    if credential.field.id == question.field.id
                        answer = Answer.create({question_id: params[:question_id], text: params[:text], upvotes: params[:upvotes], user_id: params[:user_id]})
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

    # private

    # def answer_params
    #     params.require(:answer).permit(:question_id, :text, :upvotes, :user_id)
    # end

end