module MyGenieExample

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = MyGenieExample))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = MyGenieExample.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
