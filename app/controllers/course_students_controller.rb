class CourseStudentsController < ApplicationController

  def index
    @course_students = CourseStudent.all
  end

  def show
    @course_student = CourseStudent.find_by(id: params[:id])
  end

  def new
  end

  def create
    @course_student = CourseStudent.new
    @course_student.course_id = params[:course_id]
    @course_student.student_id = params[:student_id]

    if @course_student.save
      redirect_to "/course_students/#{ @course_student.id }"
    else
      render 'new'
    end
  end

  def edit
    @course_student = CourseStudent.find_by(id: params[:id])
  end

  def update
    @course_student = CourseStudent.find_by(id: params[:id])
    @course_student.course_id = params[:course_id]
    @course_student.student_id = params[:student_id]

    if @course_student.save
      redirect_to "/course_students/#{ @course_student.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @course_student = CourseStudent.find_by(id: params[:id])
    @course_student.destroy


    redirect_to "/course_students"
  end
end
