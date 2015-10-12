class Admin::ReleasesController < Fae::BaseController

  private

  def build_assets
    @item.build_bottle_shot if @item.bottle_shot.blank?
    @item.build_hero_image if @item.hero_image.blank?
    @item.build_label_pdf if @item.label_pdf.blank?
  end

  def associations_for_cloning
    [:aromas, :events]
  end

  def attributes_for_cloning
    # []
  end

end
