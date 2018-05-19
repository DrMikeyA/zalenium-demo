
require 'bundler/setup'

require_relative 'elements/google_page'
require_relative 'elements/github_page'


require_relative 'spec/spec_helper'


include GooglePage
include GitHubPage
include BaseClass
