class ReportsController < ApplicationController
  expose(:subject)
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
end
