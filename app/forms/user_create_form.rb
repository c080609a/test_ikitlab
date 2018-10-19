class UserCreateForm
  def initialize(attrs)
    @attrs = attrs
  end

  def save
    # return false unless valid?
    person = User.find_or_initialize_by name: @attrs[:name]
    person.update! @attrs.merge(city: get_city, region: get_region)
  end

  private

  def get_city
    @attrs[:city].split(",").first
  end

  def get_region
    @attrs[:city].split(",").second
  end
end
