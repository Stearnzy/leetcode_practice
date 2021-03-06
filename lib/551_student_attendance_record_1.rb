class StudentAttendanceRecordOne
  def check_record(attendance)
    record = attendance.split('')

    absent_record = 0

    record.each_with_index do |presence, index|
      absent_record += 1 if presence == 'A'
      return false if absent_record == 2

      return false if index >= 2 && presence == 'L' && record[index - 1] == 'L' && record[index - 2] == 'L'
    end

    true
  end
end
