module CallerTools
  class Call
    # myrubyfile.rb:234:in `a_method'
    CALL_RE = /(.*):(\d+):in `(.*)'/

    attr_reader :program, :line, :meth

    def initialize(string)
      @program, @line, @meth = CALL_RE.match(string).captures
    end

    def to_s
      "%14s%14s%14s" % [program, line, meth]
    end
  end
end

