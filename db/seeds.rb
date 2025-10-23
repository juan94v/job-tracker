# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Limpiar datos existentes
puts "Limpiando base de datos..."
# InterviewStage.destroy_all
# Application.destroy_all

puts "Creando aplicaciones de ejemplo..."
# Aplicación 1: En progreso con múltiples stages
app1 = JobApplication.create!(
  company: "Google",
  position: "Senior Rails Developer",
  status: :in_progress,
  location: "Remote",
  salary_range: "$120k - $150k",
  current_salary: 95000,
  skill_focus: "Ruby on Rails, PostgreSQL, System Design",
  applied_through: "LinkedIn",
  contact_name: "Sarah Johnson",
  contact_email: "sarah.j@google.com",
  contact_role: "Technical Recruiter",
  general_notes: "Really interested in their cloud infrastructure team"
)

app1.interview_stages.create!([
  {
    name: "HR Screen",
    order: 1,
    status: :passed,
    scheduled_date: 2.weeks.ago,
    completed_date: 2.weeks.ago,
    feedback: "Went well, discussed salary expectations and team fit"
  },
  {
    name: "Technical Interview",
    order: 2,
    status: :scheduled,
    scheduled_date: 2.days.from_now,
    follow_up_date: 3.days.from_now,
    feedback: ""
  },
  {
    name: "System Design",
    order: 3,
    status: :pending
  }
])

# Aplicación 2: Rechazada después de entrevista técnica
app2 = JobApplication.create!(
  company: "Shopify",
  position: "Staff Engineer",
  status: :rejected,
  location: "Toronto, Canada",
  salary_range: "$140k - $170k",
  current_salary: 95000,
  skill_focus: "Ruby, Rails, E-commerce at scale",
  applied_through: "Company Website",
  contact_name: "Mike Chen",
  contact_email: "mchen@shopify.com",
  contact_role: "Engineering Manager",
  final_outcome: "Great technical skills but looking for more experience with distributed systems",
  general_notes: "Really liked their engineering culture"
)

app2.interview_stages.create!([
  {
    name: "Phone Screen",
    order: 1,
    status: :passed,
    scheduled_date: 3.weeks.ago,
    completed_date: 3.weeks.ago,
    feedback: "Strong Rails knowledge, good communication"
  },
  {
    name: "Technical Challenge",
    order: 2,
    status: :failed,
    scheduled_date: 2.weeks.ago,
    completed_date: 2.weeks.ago,
    feedback: "Solution worked but struggled with scaling considerations"
  }
])

# Aplicación 3: Recién aplicada
app3 = JobApplication.create!(
  company: "GitHub",
  position: "Senior Backend Engineer",
  status: :applied,
  location: "San Francisco, CA",
  salary_range: "$130k - $160k",
  current_salary: 95000,
  skill_focus: "Ruby, Git internals, API design",
  applied_through: "Referral",
  general_notes: "Friend recommended me to hiring manager"
)

# Aplicación 4: Screening rejected (sin interview stages)
app4 = JobApplication.create!(
  company: "Meta",
  position: "Software Engineer",
  status: :screening_rejected,
  location: "Menlo Park, CA",
  salary_range: "$150k - $180k",
  current_salary: 95000,
  skill_focus: "Backend, Infrastructure",
  applied_through: "LinkedIn",
  final_outcome: "Automated rejection - likely didn't match required years of experience"
)

# Aplicación 5: Oferta aceptada
app5 = JobApplication.create!(
  company: "Stripe",
  position: "Senior Software Engineer",
  status: :accepted,
  location: "Remote",
  salary_range: "$140k - $165k",
  current_salary: 95000,
  skill_focus: "Ruby, Payment systems, APIs",
  applied_through: "Greenhouse",
  contact_name: "Jessica Wu",
  contact_email: "jwu@stripe.com",
  contact_role: "Senior Recruiter",
  final_outcome: "Accepted offer at $155k + equity",
  general_notes: "Excited to work on payment infrastructure!"
)

app5.interview_stages.create!([
  {
    name: "Recruiter Call",
    order: 1,
    status: :passed,
    completed_date: 4.weeks.ago,
    feedback: "Great alignment on role expectations"
  },
  {
    name: "Technical Screen",
    order: 2,
    status: :passed,
    completed_date: 3.weeks.ago,
    feedback: "Strong problem solving, clean code"
  },
  {
    name: "Onsite - System Design",
    order: 3,
    status: :passed,
    completed_date: 2.weeks.ago,
    feedback: "Excellent design thinking and trade-off discussions"
  },
  {
    name: "Onsite - Cultural Fit",
    order: 4,
    status: :passed,
    completed_date: 2.weeks.ago,
    feedback: "Great values alignment, team loved them"
  }
])

puts "✅ Seed completado!"
puts "Aplicaciones creadas: #{JobApplication.count}"
puts "Interview stages creados: #{InterviewStage.count}"
puts ""
puts "Desglose por status:"
JobApplication.statuses.each do |status, _|
  count = JobApplication.where(status: status).count
  puts "  #{status}: #{count}" if count > 0
end
