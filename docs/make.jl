using SamplingDataFrame
using Documenter

makedocs(;
    modules=[SamplingDataFrame],
    authors="wakakusa",
    repo="https://github.com/wakakusa/SamplingDataFrame.jl/blob/{commit}{path}#L{line}",
    sitename="SamplingDataFrame.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wakakusa.github.io/SamplingDataFrame.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/wakakusa/SamplingDataFrame.jl",
)
