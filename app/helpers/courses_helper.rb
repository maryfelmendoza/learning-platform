module CoursesHelper
    def course_params
        params.require(:course).permit(:title, :description)
    end
end
