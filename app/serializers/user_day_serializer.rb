class UserDaySerializer < ActiveModel::Serializer
  attributes :id, :position, :week, :completed, :date, :strava_id, :exercise

  has_one :exercise #(??)

  def date
    (object.user_plan.end_date -= (object.user_plan.user_days.length - object.position)).to_time
  end

end
