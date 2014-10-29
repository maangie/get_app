# README

## rspec が動かないんです(泣

### こんな風にインストールしました……

```shell-session
% rails g rspec:install
```

### ヘルパーファイルで Capybara 対応させて……
```ruby:spec/rails_helper.rb
config.include Capybara::DSL
```

### 適当なモデルを作って、rspec したらこのザマですよ
```shell-session
% rails g controller mails index send
% rspec
FF***

Pending:
  MailsHelper add some examples to (or delete) /home/maangie/Documents/get_app/spec/helpers/mails_helper_spec.rb
    # Not yet implemented
    # ./spec/helpers/mails_helper_spec.rb:14
  mails/index.html.erb add some examples to (or delete) /home/maangie/Documents/get_app/spec/views/mails/index.html.erb_spec.rb
    # Not yet implemented
    # ./spec/views/mails/index.html.erb_spec.rb:4
  mails/send.html.erb add some examples to (or delete) /home/maangie/Documents/get_app/spec/views/mails/send.html.erb_spec.rb
    # Not yet implemented
    # ./spec/views/mails/send.html.erb_spec.rb:4

Failures:

  1) MailsController GET index returns http success
     Failure/Error: get :index
     ArgumentError:
       wrong number of arguments (1 for 0)
     # ./app/controllers/mails_controller.rb:5:in `send'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/callbacks.rb:80:in `run_callbacks'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/abstract_controller/callbacks.rb:19:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/rescue.rb:29:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/instrumentation.rb:31:in `block in process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/notifications.rb:159:in `block in instrument'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/notifications/instrumenter.rb:20:in `instrument'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/notifications.rb:159:in `instrument'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/instrumentation.rb:30:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/params_wrapper.rb:250:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/abstract_controller/base.rb:136:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionview-4.1.6/lib/action_view/rendering.rb:30:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/test_case.rb:595:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/test_case.rb:64:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/test_case.rb:495:in `get'
     # ./spec/controllers/mails_controller_spec.rb:7:in `block (3 levels) in <top (required)>'

  2) MailsController GET send returns http success
     Failure/Error: get :send
     ArgumentError:
       wrong number of arguments (1 for 0)
     # ./app/controllers/mails_controller.rb:5:in `send'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/callbacks.rb:80:in `run_callbacks'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/abstract_controller/callbacks.rb:19:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/rescue.rb:29:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/instrumentation.rb:31:in `block in process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/notifications.rb:159:in `block in instrument'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/notifications/instrumenter.rb:20:in `instrument'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/activesupport-4.1.6/lib/active_support/notifications.rb:159:in `instrument'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/instrumentation.rb:30:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/metal/params_wrapper.rb:250:in `process_action'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/abstract_controller/base.rb:136:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionview-4.1.6/lib/action_view/rendering.rb:30:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/test_case.rb:595:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/test_case.rb:64:in `process'
     # /home/maangie/.rvm/gems/ruby-2.1.3/gems/actionpack-4.1.6/lib/action_controller/test_case.rb:495:in `get'
     # ./spec/controllers/mails_controller_spec.rb:14:in `block (3 levels) in <top (required)>'

Finished in 0.008 seconds (files took 1.19 seconds to load)
5 examples, 2 failures, 3 pending

Failed examples:

rspec ./spec/controllers/mails_controller_spec.rb:6 # MailsController GET index returns http success
rspec ./spec/controllers/mails_controller_spec.rb:13 # MailsController GET send returns http success
```

## アドバイス下さい。お願いしますm(__)m
