# README

Run rake to run the failing test and demonstrate the issue: 

    $ bundle exec rake


```
simple:demonstrate_the_nil_problem_with_ice_cube jonathanwallace$ be rake
Run options: --seed 56221

# Running:

E

Finished in 0.106833s, 9.3604 runs/s, 0.0000 assertions/s.

  1) Error:
DemonstrateIssueWithNilTest#test_sanity:
ActionView::Template::Error: can't dup NilClass
    app/views/sample_models/show.html.erb:5:in `_app_views_sample_models_show_html_erb___2799042896871030872_70134481642940'
    test/features/demonstrate_issue_with_nil_test.rb:6:in `block in <class:DemonstrateIssueWithNilTest>'

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```

cray branch
