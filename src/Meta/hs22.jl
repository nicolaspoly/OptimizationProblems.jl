hs22_meta = Dict(
  :nvar => 2,
  :variable_nvar => false,
  :ncon => 2,
  :variable_ncon => false,
  :minimize => true,
  :name => "hs22",
  :has_equalities_only => false,
  :has_inequalities_only => true,
  :has_bounds => false,
  :has_fixed_variables => false,
  :objtype => :least_squares,
  :contype => :general,
  :best_known_lower_bound => -Inf,
  :best_known_upper_bound => Inf,
  :is_feasible => missing,
  :defined_everywhere => missing,
  :origin => :unknown,
)
get_hs22_nvar(; n::Integer = default_nvar, kwargs...) = 2
get_hs22_ncon(; n::Integer = default_nvar, kwargs...) = 2
get_hs22_nlin(; n::Integer = default_nvar, kwargs...) = 1
get_hs22_nnln(; n::Integer = default_nvar, kwargs...) = 1
get_hs22_nequ(; n::Integer = default_nvar, kwargs...) = 0
get_hs22_nineq(; n::Integer = default_nvar, kwargs...) = 2
get_hs22_nls_nequ(; n::Integer = default_nvar, kwargs...) = 2
