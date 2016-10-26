#!/usr/bin/env bash

export FLAY_SCORE=20

ruby_files=`find -L . | grep -e '\.rb$' | grep -e '00[1-9]' -e 'problem_spec' -e '01[1]' | xargs`

echo -e "\n\n\nsecurity check results\n"
bundle exec warder --bundle-audit
security_exit_code=$?

echo -e "\n\n\nMagic numbers results\n"
bundle exec warder --stats --magick-numbers $ruby_files
magick_numbers_exit_code=$?

echo -e "\n\n\nCode duplication results\n"
bundle exec warder --stats --code-duplication $ruby_files
code_duplication_exit_code=$?

echo -e "\n\n\nCode complexity results\n"
bundle exec warder --stats --code-complexity $ruby_files
code_complexity_exit_code=$?

echo -e "\n\n\nCode smell detector result\n"
bundle exec warder --stats --code-smell $ruby_files
code_smell_exit_code=$?

echo -e "\n\n\nCode style guide compliance results\n"
bundle exec warder --stats --style-guide $ruby_files
ruby_style_guide_exit_code=$?


exit $(($security_exit_code+$magick_numbers_exit_code+$code_duplication_exit_code+$code_complexity_exit_code_$code_smell_exit_code+$ruby_style_guide_exit_code));
