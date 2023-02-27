class PlantTagsController < ApplicationController
  before_action :set_plant

  def new
    @plant_tag = PlantTag.new
  end

  def create
    @tags = Tag.find(params[:plant_tag][:tag_id])
    new_plant_tags = []
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag:)
      plant_tag.save
      new_plant_tags << plant_tag
    end

    errors = new_plant_tags.reject(&:valid?)

    if errors.empty?
      redirect_to @plant.garden
    else
      @plant_tag = errors.first
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end
end
