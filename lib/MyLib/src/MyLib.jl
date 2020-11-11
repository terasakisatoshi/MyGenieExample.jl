__precompile__(false)

module MyLib

using JSXGraph

function example()
	brd = board("board",xlim=[-15,15], ylim=[-15,15],axis=true)
	brd.style="width:600px; height:600px;margin:100px auto;"

	a = slider("a", [[5, 7], [8, 7], [-3, 0.1, 10]])
	b = slider("b", [[5, 6], [8, 6], [-1, 1, 5]])
	c = slider("c", [[5, 5], [8, 5], [-10, -5, 2]])
	[a,b,c] |> brd

	@jsf f(x) = val(a) * x^2 + val(b) * x + val(c)


	brd ++ plot(f)

	return JSXGraph.standalone(brd, full=true)
end

end
