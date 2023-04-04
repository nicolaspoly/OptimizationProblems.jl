export osborne2

function osborne2(args...; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  y = [
    1366 // 1000,
    1191 // 1000,
    1112 // 1000,
    1013 // 1000,
    991 // 1000,
    885 // 1000,
    831 // 1000,
    847 // 1000,
    786 // 1000,
    725 // 1000,
    746 // 1000,
    679 // 1000,
    608 // 1000,
    655 // 1000,
    616 // 1000,
    606 // 1000,
    602 // 1000,
    626 // 1000,
    651 // 1000,
    724 // 1000,
    649 // 1000,
    649 // 1000,
    694 // 1000,
    644 // 1000,
    624 // 1000,
    661 // 1000,
    612 // 1000,
    558 // 1000,
    533 // 1000,
    495 // 1000,
    500 // 1000,
    423 // 1000,
    395 // 1000,
    375 // 1000,
    372 // 1000,
    391 // 1000,
    396 // 1000,
    405 // 1000,
    428 // 1000,
    429 // 1000,
    523 // 1000,
    562 // 1000,
    607 // 1000,
    653 // 1000,
    672 // 1000,
    708 // 1000,
    633 // 1000,
    668 // 1000,
    645 // 1000,
    632 // 1000,
    591 // 1000,
    559 // 1000,
    597 // 1000,
    625 // 1000,
    739 // 1000,
    710 // 1000,
    729 // 1000,
    720 // 1000,
    636 // 1000,
    581 // 1000,
    428 // 1000,
    292 // 1000,
    162 // 1000,
    098 // 1000,
    054 // 1000,
  ]
  m = 65

  function f(x)
    return 1 // 2 * sum(
      (
        y[i] - (
          x[1] * exp(-(i - 1) // 10 * x[5]) +
          x[2] * exp(-((i - 1) // 10 - x[9])^2 * x[6]) +
          x[3] * exp(-((i - 1) // 10 - x[10])^2 * x[7]) +
          x[4] * exp(-((i - 1) // 10 - x[11])^2 * x[8])
        )
      )^2 for i = 1:m
    )
  end
  x0 = T[1.3, 0.65, 0.65, 0.7, 0.6, 3, 5, 7, 2, 4.5, 5.5]
  return ADNLPModels.ADNLPModel(f, x0, name = "osborne2"; kwargs...)
end
