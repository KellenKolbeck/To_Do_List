# require('rspec')
# require('task')
#
# describe(Task) do
#   before() do
#     Task.clear()
#   end
#
#   describe("#description") do
#     it("gives the description of the task") do
#       test_description = Task.new("scrub the zebra")
#       expect(test_description.description()).to(eq("scrub the zebra"))
#     end
#   end
#   describe('.all') do
#     it("starts as an empty array for tasks") do
#       expect(Task.all()).to(eq([]))
#     end
#   end
#   describe('#save') do
#     it("saves each task added to the array") do
#       test_description = Task.new("feed the chicken")
#       test_description.save()
#       expect(Task.all()).to(eq([test_description]))
#     end
#   end
#   describe('.clear') do
#     it("clears out tasks from the array") do
#       Task.new("pet the lion").save()
#       Task.clear()
#       expect(Task.all()).to(eq([]))
#     end
#   end
# end
