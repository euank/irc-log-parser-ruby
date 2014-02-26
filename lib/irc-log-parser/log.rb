require 'json'

module IrcLogParser
  class Log
    attr_accessor :network, :channel, :time, :nick, :text, :is_notice

    def initialize(args = {})
      @network   = args[:network]
      @channel   = args[:channel]
      @time      = args[:time]
      @nick      = args[:nick]
      @text      = args[:text]
      @is_notice = args[:is_notice]
    end

    def parse
      "not implement"
    end

    def to_ltsv
      "network:#{@network}\t" +
      "channel:#{@channel}\t" +
      "time:#{@time}\t" +
      "nick:#{@nick}\t" +
      "text:#{@text}\t" +
      "is_notice:#{@is_notice}\t"
    end

    def to_json(*args)
      JSON.generate({
        network:   @network,
        channel:   @channel,
        time:      @time,
        nick:      @nick,
        text:      @text,
        is_notice: @is_notice,
      })
    end

    def to_s
      to_json.to_s
    end
  end
end
