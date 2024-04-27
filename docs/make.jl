using LibAwsCal
using Documenter

DocMeta.setdocmeta!(LibAwsCal, :DocTestSetup, :(using LibAwsCal); recursive=true)

makedocs(;
    modules=[LibAwsCal],
    repo="https://github.com/JuliaServices/LibAwsCal.jl/blob/{commit}{path}#{line}",
    sitename="LibAwsCal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://github.com/JuliaServices/LibAwsCal.jl",
        assets=String[],
        size_threshold=2_000_000, # 2 MB, we generate about 1 MB page
        size_threshold_warn=2_000_000,
    ),
    pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/JuliaServices/LibAwsCal.jl", devbranch="main")
