using TestPkg
using Documenter

DocMeta.setdocmeta!(TestPkg, :DocTestSetup, :(using TestPkg); recursive=true)

makedocs(;
    modules=[TestPkg],
    authors="Naoki Maeda",
    repo="https://github.com/nmaedajp/TestPkg.jl/blob/{commit}{path}#{line}",
    sitename="TestPkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://nmaedajp.github.io/TestPkg.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/nmaedajp/TestPkg.jl",
    devbranch="main",
)
