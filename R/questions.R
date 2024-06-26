#' Question List
#'
#' An S3 vector class (subclass of list) containing the survey questions list. The
#' elements of the list are named such that each column name in the database points
#' to a specific question, allowing for dynamically (updating) displaying questions on
#' the server side based on user selection.
#'
#' @return A `ElectProtect_questions` object.
#'
#' @export
questions <- function() {

  # Multiple selection questions
  message <- "Using a scale of zero to ten, how much do you agree or disagree with this statement? Use -999 if you don't know."
  most_concern <- "There are many potential threats to free and fair elections. Please select up to three that are most concerning to you."
  least_concern <- "There are many potential threats to free and fair elections. Please select up to three that are least concerning to you."
  least_informed <- "There are many potential threats to free and fair elections. Please select up to three you feel least informed about."
  news <- "What are your favorite sources for news? Please select all that apply or 'none of the above.'"

  # Multiple selection strings (exact forms)
  law_and_regulation <- " Selected: Voter ID laws and voter registration rules and regulations."
  insuf_voting <- " Selected: Insufficient early voting or vote-by-mail options."
  cybersecurity <- "Selected: Cyberattacks on election equipment and software."
  tampering <- " Selected: Vote tampering and tampering with electronic voting machines."
  false_info <- " Selected: Intentional false information around election security."
  faulty_machine <- " Selected: Faulty voting machines."
  long_lines <- " Selected: Long lines and not enough voting machines or drop boxes."
  foreign_interference <- " Selected: Foreign interference."
  illegal_voting <- " Selected: People voting more than once or voting illegally."
  corruption <- " Selected: Corrupt election officials and poll workers."
  harrassment <- " Selected: Threats and harassment of election officials and election workers."
  underfunding <- " Selected: Underfunding of elections."
  dispute <- " Selected: Politicians not accepting election results with no evidence of fraud or foul play."

  new_list_of(
    x = list(

      # Two-way questions -------------------------------------------------------

      # Experiences & Impressions
      "democracy_fairness" = "Consider democracy in America. In your experience, do you feel that it generally treats you fairly or unfairly?",
      "view_two_party" = "Consider the two-party system in America. Speaking for you personally, do you feel as if it's working?",
      "view_joe_biden_victory" = "Which of the following comes closest to your view about Joe Biden winning the presidency in the 2020 election?",
      "election_trust_change" = "Over the past 10 years, has your trust in US elections increased, decreased, or stayed the same?",
      "pres_candidate" = "If you voted in the 2020 Presidential election, which candidate did you support at the time of the election?",
      "pres_candidate_excitement" = "Which of the following best describes how you feel about supporting your chosen candidate? Even if neither perfectly describes your feelings, please choose the one which comes closest.",
      "democracy_representation" = "Generally speaking, do you feel represented or not represented by our democracy?",
      "party_identification" = "Putting aside your current personal satisfaction or dissatisfaction with political parties, to what extent, if any, do you identify with a political party?",
      "party_identification_change" = "Has your feeling of party identification increased, decreased or stayed the same over the past ten years?",
      # Messages
      "message_benson" = paste0(HTML("<i>'As the assault on democracy continues here and abroad, we must remember that by spreading misinformation, proponents of the Big Lie are essentially doing the work of our foreign adversaries for them.'</i> "), message),
      "message_trump" = paste0(HTML("<i>'We will never give up. We will never concede... You don't concede when there's election theft involved. Our country has had enough. We will not take it anymore, and that is what this is all about... we will stop the steal.'</i> "), message),
      "message_griswold" = paste0(HTML("<i>'We cannot allow dedicated election workers and civil servants to feel unsafe and unprotected. Democracy is not possible without public servants who can freely and fairly administer elections.'</i> "), message),
      "message_greenhalgh" = paste0(HTML("<i>'Election officials are rightly trying hard to combat [misinformation and intentional lies] about election security. However, we also have legitimate security issues with our elections that need to be addressed honestly and forthrightly.'</i> "), message),
      "message_hawley" = paste0(HTML("<i>'The debacle of the 2020 election has made clear that serious reforms are needed to protect the integrity of our elections. The American people deserve transparency - that means banning ballot harvesting, empowering poll watchers, and taking steps to ensure that all legally cast ballots are accounted for.'</i> "), message),
      # Election (Most concerning)
      "most_concern_law_and_regulation" = paste0(most_concern, law_and_regulation),
      "most_concern_insuf_early_or_by_mail_voting" = paste0(most_concern, insuf_voting),
      "most_concern_cybersecurity" = paste0(most_concern, cybersecurity),
      "most_concern_tampering" = paste0(most_concern, tampering),
      "most_concern_false_info_on_security" = paste0(most_concern, false_info),
      "most_concern_faulty_machine" = paste0(most_concern, faulty_machine),
      "most_concern_long_line" = paste0(most_concern, long_lines),
      "most_concern_foreign_interference" = paste0(most_concern, foreign_interference),
      "most_concern_illegal_voting" = paste0(most_concern, illegal_voting),
      "most_concern_corrupt_official_or_worker" = paste0(most_concern, corruption),
      "most_concern_harassment_of_official_or_worker" = paste0(most_concern, harrassment),
      "most_concern_underfunding" = paste0(most_concern, underfunding),
      "most_concern_baseless_dispute" = paste0(most_concern, dispute),
      "most_concern_none_above" = most_concern,
      # Election (Least concerning)
      "least_concern_law_and_regulation" = paste0(least_concern, law_and_regulation),
      "least_concern_insuf_early_or_by_mail_voting" = paste0(least_concern, insuf_voting),
      "least_concern_cybersecurity" = paste0(least_concern, cybersecurity),
      "least_concern_tampering" = paste0(least_concern, tampering),
      "least_concern_false_info_on_security" = paste0(least_concern, false_info),
      "least_concern_faulty_machine" = paste0(least_concern, faulty_machine),
      "least_concern_long_line" = paste0(least_concern, long_lines),
      "least_concern_foreign_interference" = paste0(least_concern, foreign_interference),
      "least_concern_illegal_voting" = paste0(least_concern, illegal_voting),
      "least_concern_corrupt_official_or_worker" = paste0(least_concern, corruption),
      "least_concern_harassment_of_official_or_worker" = paste0(least_concern, harrassment),
      "least_concern_underfunding" = paste0(least_concern, underfunding),
      "least_concern_baseless_dispute" = paste0(least_concern, dispute),
      "least_concern_none_above" = least_concern,
      # Election (Least informed)
      "least_informed_law_and_regulation" = paste0(least_informed, law_and_regulation),
      "least_informed_insuf_early_or_by_mail_voting" = paste0(least_informed, insuf_voting),
      "least_informed_cybersecurity" = paste0(least_informed, cybersecurity),
      "least_informed_tampering" = paste0(least_informed, tampering),
      "least_informed_false_info_on_security" = paste0(least_informed, false_info),
      "least_informed_faulty_machine" = paste0(least_informed, faulty_machine),
      "least_informed_long_line" = paste0(least_informed, long_lines),
      "least_informed_foreign_interference" = paste0(least_informed, foreign_interference),
      "least_informed_illegal_voting" = paste0(least_informed, illegal_voting),
      "least_informed_corrupt_official_or_worker" = paste0(least_informed, corruption),
      "least_informed_harassment_of_official_or_worker" = paste0(least_informed, harrassment),
      "least_informed_underfunding" = paste0(least_informed, underfunding),
      "least_informed_baseless_dispute" = paste0(least_informed, dispute),
      "least_informed_none_above" = least_informed,
      # Demographics
      "age" = "What is your age?",
      "education_rollup" = "What is the last year of schooling that you have completed?",
      "gender" = "Which of the following genders best describes you?",
      "ideology" = "When it comes to political issues, which best describes your ideology?",
      "party" = "How do you identify politically?",
      "party_dem_identity" = "Do you align more with President Joe Biden or the self-described 'progressive wing' of the Democratic party?",
      "party_rep_identity" = "Do you align more with the Republican party or former President Trump?",
      "race" = "Which of the following race categories would you use to describe yourself?",
      # News Source
      "preferred_news_visit_freq" = "How frequently do you visit your preferred news sources?",
      "news_source_facebook" = news,
      "news_source_twitter" = news,
      "news_source_instagram" = news,
      "news_source_snapchat" = news,
      "news_source_tiktok" = news,
      "news_source_parlor" = news,
      "news_source_other_social_media" = news,
      "news_source_npr_or_local_affiliate_radio" = news,
      "news_source_good_morning_america_show" = news,
      "news_source_today_show" = news,
      "news_source_cnn" = news,
      "news_source_abc" = news,
      "news_source_fox" = news,
      "news_source_local_broadcast" = news,
      "news_source_other_tv_show" = news,
      "news_source_new_york_times" = news,
      "news_source_washington_post" = news,
      "news_source_the_guardian" = news,
      "news_source_epoch_times" = news,
      "news_source_the_daily_wire" = news,
      "news_source_breitbar" = news,
      "news_source_international_news_outlets" = news,
      "news_source_newspaper_print_or_online" = news,
      "news_source_dislike_news" = news,
      "news_source_none_above" = news,

      # Topline multiple selection questions ------------------------------------

      "news_source" = news,
      "most_concern" = most_concern,
      "least_concern" = least_concern,
      "least_informed" = least_informed,

      # Modeled columns ---------------------------------------------------------

      "climate_change_believer" = "'Climate change strong believer' is defined for respondents who fall above 75 on a 0-100 scoring scale, 'Unsure' is defined for respondents who fall between 50 and 75, and 'Climate change denier' is defined for respondents who fall below 25 on the scale.",
      "election_trust_2024" = "'Trust 2024 strongly' is defined for respondents who fall above 75 on a 0-100 scoring scale, 'Kinda trust 2024' is defined for respondents who fall between 50 and 75, and 'Distrust 2024 election' is defined for respondents who fall below 25 on the scale.",
      "january_6_justification" = "'Strong black mark' is defined for respondents who fall above 75 on a 0-100 scoring scale, 'Weak black mark' is defined for respondents who fall between 50 and 75, and 'Justified' is defined for respondents who fall below 25 on the scale.",
      "opposition_party_feeling" = "'Green feeling' respondents describe the oppposition party using the words 'curious','respect', or 'inspired'; 'Yellow feeling' respondents use the words 'fearful', 'anxious', or 'guarded'; 'Red feeling' respondents use the words 'anger', 'resentful', or 'skeptical'.",
      "political_division_helper" = "'Political division helper' respondents are actively bridging divides, 'Maybe political division helper' respondents are willing to help bridge divides, and 'Political division non-helper' respondents are not interested in bridging divides."
    ),
    ptype = character(),
    class = "ElectProtect_questions"
  )
}
