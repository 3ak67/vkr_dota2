class SearchController < ApplicationController
  def search
    heroes = Hero.all
    s_search.each { |term| heroes = heroes.where('localized_name like ?', term) }
    render json: heroes.limit(10)
  end

  private

  def s_search
    terms = "#{params[:term]}".split
                .map { |el| el.strip.squish.upcase }
                .compact
    terms.map { |term| "%#{term}%" }
  end
end