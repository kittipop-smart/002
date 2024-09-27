class MyClass
  # default is "public"
  def method1
    # This method is public
  end

  protected
  # subsequent methods will be "protected"
  def method2
    # This method is protected
  end

  private
  # subsequent methods will be "private"
  def method3
    # This method is private
  end

  public
  # subsequent methods will be "public"
  def method4
    # This method is public
  end
end

class MyClass2
  def method1
  end

  def method2
  end

  def method3
  end
  
  def method4
  end

  public :method1, :method4
  protected :method2
  private :method3
end