class UserCreateForm
  def initialize(attrs)
    @attrs = attrs
  end

  def save
    # return false unless valid?
    person = User.find_or_initialize_by name: @attrs[:name]
    person.update! @attrs.merge(city: city, region: region)
  end

  private

  def city
    @attrs[:city].split(",").first
  end

  def region
    @attrs[:city].split(",").second
  end
end
