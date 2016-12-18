class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes = subject_item.subject_item_notes.map(&:value)
    notes.length == 0? '0.00' : "%.2f" % (notes.reduce(:+) / notes.length.to_f)
  end
end
