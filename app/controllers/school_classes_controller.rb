class SchoolClassesController < ApplicationController
    def new
        @school_class = SchoolClass.new 
    end

    def create
        @school_class = SchoolClass.new(params.require(:school_class).permit!)
        @school_class.save 
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.update(params.require(:school_class).permit!)
        redirect_to school_class_path(@school_class)
    end

    def index
        @school_classes = SchoolClass.all 
    end

end