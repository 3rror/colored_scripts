require "colored_scripts/version"

module ColoredScripts
  private
  
  def gen_string(text, option)
    %{\e[#{option}m#{text}\e[0m}
  end
  
  public
  
  def bright(text)
    gen_string(text, 1)
  end
  
  def faint(text)
    gen_string(text, 2)
  end
  
  def underline(text)
    gen_string(text, 4)
  end
  
  def blink(text)
    gen_string(text, 5)
  end
  
  def exchange(text)
    gen_string(text, 7)
  end
  
  def hide(text)
    gen_string(text, 8)
  end
  
  def black(text)
    gen_string(text, 30)
  end
  
  def red(text)
    gen_string(text, 31)
  end
  
  def green(text)
    gen_string(text, 32)
  end
  
  def yellow(text)
    gen_string(text, 33)
  end
  
  def blue(text)
    gen_string(text, 34)
  end
  
  def magenta(text)
    gen_string(text, 35)
  end
  
  def cyan(text)
    gen_string(text, 36)
  end
  
  def white(text)
    gen_string(text, 37)
  end
  
  def default(text)
    gen_string(text, 39)
  end
  
  def black_bg(text)
    gen_string(text, 40)
  end
  
  def red_bg(text)
    gen_string(text, 41)
  end
  
  def green_bg(text)
    gen_string(text, 42)
  end
  
  def yellow_bg(text)
    gen_string(text, 43)
  end
  
  def blue_bg(text)
    gen_string(text, 44)
  end
  
  def magenta_bg(text)
    gen_string(text, 45)
  end
  
  def cyan_bg(text)
    gen_string(text, 46)
  end
  
  def white_bg(text)
    gen_string(text, 47)
  end
  
  def default_bg(text)
    gen_string(text, 49)
  end
  
  alias_method :bold, :bright
end