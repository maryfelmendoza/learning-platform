class LessonsController < ApplicationController
    def create
        @lesson = Lesson.new(lesson_params)
        @lesson.course_id = params[:course_id]

        @lesson.save

        redirect_to course_path(@lesson.course)
    end

    def lesson_params
        params.require(:lesson).permit(:lesson_title, :body)
    end
end