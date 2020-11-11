# routes.jl
using Genie.Router
using MyLib

route("/mylib") do
  MyLib.example()
end