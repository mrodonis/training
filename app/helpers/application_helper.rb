# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper


  # Drop-Down Menu Creator -
  # Argument Ex:: "Microsoft"
  # Result: Produces the Unordered Sub-Menu to be implemented in ALL Pages' Header Navigation'
  def dd_menu( category )


  end

  # Grabs the available Technologies from the Tech-Cat table for easy entry into in the COURSE Table

  def tech_array
    @top = Technology.all
    @top.each do |@test|
      @final = @test.tech
    end
    @my_array.collect { |@final| [@final, @final] }
  end

end
