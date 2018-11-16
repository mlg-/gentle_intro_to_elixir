# This in Ruby (using AR)
candidates = Candidate.all_eligible_candidates
contributions = Contribution.for_candidate(candidates)
tips = tips_for(contributions, 2018)
filing = prepare_filing(tips)

# might become this in Elixir (using Ecto)
filing = Candidate.all_eligible_candidates
         |> Contribution.for_candidate
         |> tips_for(2018)
         |> prepare_filing
