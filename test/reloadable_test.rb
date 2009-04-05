require 'test_helper'
class ReloadableTester
  include Reloadable
end

class ReloadableTest < Test::Unit::TestCase
  should "respond to reload_files!" do;assert ReloadableTester.respond_to?(:reload_files!);end
  should "respond to require_reloadable_files" do;assert ReloadableTester.respond_to?(:require_reloadable_files);end
  should "respond to reloadable_files" do;assert ReloadableTester.respond_to?(:reloadable_files);end
  should "add to the reloadable files when require_reloadable_files" do
    ReloadableTester.require_reloadable_files "dummy.rb"
    assert ReloadableTester.reloadable_files.include?(File.expand_path("dummy.rb"))
  end
end
