30.times do 
  Course.create(title: Faker::Educator.course_name, description: Faker::TvShows::GameOfThrones.quote, user: User.first)
end

Checklist.find(972)
Checklist.find(972).checkpoints


company = Company.find(540)

Zone.where(company_id: company.id).where.not(parent_id: nil).each do |zone|
  zone.reports.each do |report|
    report.issues.destroy_all
    report.destroy!
  end
  zone.destroy!
end