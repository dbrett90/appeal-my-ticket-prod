module ApplicationHelper
    #May need to audit this helper at some point.
    def admin?
        if current_user.admin == true
            true
        else
            false
        end
    end
end
