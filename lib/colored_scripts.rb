require "colored_scripts/version"

class ColoredScripts

  private

  @@colors = {
    bright:     1,
    faint:      2,
    underline:  4,
    blink:      5,
    exchange:   7,
    hide:       8,
    black:      30,
    red:        31,
    green:      32,
    yellow:     33,
    blue:       34,
    magenta:    35,
    cyan:       36,
    white:      37,
    default:    39,
    black_bg:   40,
    red_bg:     41,
    green_bg:   42,
    yellow_bg:  43,
    blue_bg:    44,
    magenta_bg: 45,
    cyan_bg:    46,
    white_bg:   47,
    default_bg: 49,
    bold:       1   # alias
  }

  def self.gen_string(text, option)
    %{\e[#{option}m#{text}\e[0m}
  end

  public

  def self.method_missing(method, *args, &blk)
    if @@colors.has_key? method and args.count == 1
      text_to_print = args[0]
      gen_string(text_to_print, @@colors[method])
    else
      super
    end
  end

end

