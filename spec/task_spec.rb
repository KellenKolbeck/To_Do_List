require('rspec')
require('pg')
require('task')

DB = PG.connect({:dbname => 'to_do_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM tasks *;")
  end
end

describe(Task) do
  describe("#==") do
    it("is the same task if it has the same description") do
      task1 = Task.new({:description => "learn SQL"})
      task2 = Task.new({:description => "learn SQL"})
      expect(task1).to(eq(task2))
    end
  end

  describe('.all') do
    it("starts as an empty array for tasks") do
      expect(Task.all()).to(eq([]))
    end
  end
  describe('#save') do
    it("saves each task added to the array") do
      test_description = Task.new({:description => "feed the chicken"})
      test_description.save()
      expect(Task.all()).to(eq([test_description]))
    end
  end
  describe('.clear') do
    it("clears out tasks from the array") do
      Task.new("pet the lion").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
  describe("#description") do
    it("gives the description of the task") do
      test_description = Task.new("scrub the zebra")
      expect(test_description.description()).to(eq("scrub the zebra"))
    end
  end
end
