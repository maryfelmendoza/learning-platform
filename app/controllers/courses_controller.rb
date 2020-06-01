class CoursesController < ApplicationController
    include CoursesHelper
    def index
        @courses = Course.all
    end
    def show
        @course = Course.find(params[:id])
    end
    def new
        @course = Course.new
    end
    def create
        @course = Course.new(course_params)
        @course.save
        
        flash.notice = "Course '#{@course.title}' Created!"

        redirect_to course_path(@course)
    end
    def destroy
        @course = Course.find(params[:id]).destroy
        
        flash.notice = "Course '#{@course.title}' Destroyed!"
        
        redirect_to courses_path
    end
    def edit
        @course = Course.find(params[:id])
    end
    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        
        flash.notice = "Course '#{@course.title}' Updated!"

        redirect_to course_path(@course)
    end
end
