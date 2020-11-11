# routes.jl
using Genie.Router
using MyLib

route("/") do
  MyLib.example()
end