class ActiveCheck
  def before_save(rec)
    if rec.active == true then
      ar = Demoreel.find_by(active: true)
      if ar != nil then
        ar.active = false
        ar.save
      end
    end
  end
end
