######################################
# General informations
######################################

info["avatar"] = "logo.png"
info["avatar_shape"] = "raw" # use "round" or just comment that line to use a round border 
info["lang"] = "en"
info["name"] = "Humans of Julia"
info["title"] = "HoJ"
info["email"] = "contact@humansofjulia.org"

## Social Networks (comment/delete lines to unwanted social network, input your personal info for the others)
info["github"] = "https://github.com/Humans-of-Julia"
info["discord"] = "https://discord.com/channels/762167454973296644/762206833192468480/762206959042166784"
info["twitter"] = "HumansOfJulia"

######################################
# Contributors user name => real name
######################################
user_to_name["azzaare"] = "Jean-François Baffier"

######################################
# index.html
#   items: about hoj
######################################

about_hoj = Block(
    paragraphs(
    """
    We are a group of individuals who fell in love with Julia and pray to the gods of Lisp. We started to form a community around our favourite language which evolved into more than that. We’ve got regular code challenges, a GitHub Organization (https://github.com/Humans-of-Julia) which is meant to host projects for the community like the in-progress community-driven Julia bindings for the popular Grakn database client and we’re also a good destination if you’ve got questions anywhere from beginner to pro, need some valuable pointers to dig into it yourself or just seek the intellectual discourse about design and beauty (only Julia and Off-Topic of course). If you’d like to participate or are just curious, don’t hesitate to join us from anywhere around the world! We already have a good time zone coverage but we are - just as Julia itself - greedy to increase it even further!
    """,
    """This community follows the Julia Community Guidelines and Standards!
    """,
    """Join our $(link("Discord","https://discord.gg/nPPZy4RYbP"))
    """
    ),
    images()
)

github = GitRepo(
    "Humans-of-Julia/GraknClient.jl",
    "Humans-of-Julia/WeeklyContest",
    "Humans-of-Julia/HoJ-logo-graphics",
)

page(
    title="index",
    sections=[
        Section(
            title="Humans of Julia",
            items=about_hoj
        ),
        Section(
            title="GitHub",
            hide=false,
            items=github,
        ),
    ]
)

######################################
# about_constest.html
#   items: about contest, previous contest
######################################
contest_tl = TimeLine(
    StaticWebPages.tl_julia,
    Dot(
        "Week 2",
        "$(link("TextAnalysis.jl", "https://github.com/JuliaText/TextAnalysis.jl")) provides support for standard tools and models for working with textual data and natural languages in the Julia language.",
        "Winner: Laurens Bosman (laurens777)"
    ),
    Dot(
        "Week 1",
        "$(link("GLM.jl", "https://github.com/JuliaStats/GLM.jl")) a package for linear and generalized linear models in Julia.",
        "Winner: Tom Kwong (tk3369)"
    ),
)

about_contest = Section(
    title="HoJ Weekly Contest",
    items=Block(
        paragraphs(
            """
            context
            """,
            """
            resutls
            """
        ),
        images()
    )
)

previous_contest = Section(title="Previous contests", items=contest_tl)


page(
    title="weekly contest",
    sections=[about_contest, previous_contest]
)

######################################
# End of the entries
######################################
