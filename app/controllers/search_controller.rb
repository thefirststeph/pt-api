class SearchController < ApplicationController
  def index

  	running_hash = {}

  	if params[:client_language]
	  	client_language = ClientLanguage.find_by(name: params[:client_language])
	  	cl_therapists = client_language.therapists
	  	cl_therapists.each do |therapist| 
	  		running_hash[therapist.id] == nil ? running_hash[therapist.id] = params[:cl_value].to_i : running_hash[therapist.id] += (params[:cl_value].to_i)
	  	end
  	end

  	if params[:target_issue]
	  	target_issue = TargetIssue.find_by(name: params[:target_issue])
	  	ti_therapists = target_issue.therapists
	  	ti_therapists.each do |therapist| 
	  		running_hash[therapist.id] == nil ? running_hash[therapist.id] = params[:ti_value].to_i : running_hash[therapist.id] += (params[:ti_value].to_i)
	  	end	
  	end

  	if params[:client_language]
	  	client_category = ClientCategory.find_by(name: params[:client_category])
	  	cc_therapists = client_category.therapists
	  	cc_therapists.each do |therapist| 
	  		running_hash[therapist.id] == nil ? running_hash[therapist.id] = params[:cc_value].to_i : running_hash[therapist.id] += (params[:cc_value].to_i)
	  	end
  	end

  	if params[:issue]
	  	issue = Issue.find_by(name: params[:issue])
	  	i_therapists = issue.therapists
	  	i_therapists.each do |therapist| 
	  		running_hash[therapist.id] == nil ? running_hash[therapist.id] = ((params[:ti_value].to_i)/2) : running_hash[therapist.id] += ((params[:ti_value].to_i)/2)
	  	end
	  end

  	if params[:client_ethnicity]
	  	client_ethnicity = ClientEthnicity.find_by(name: params[:client_ethnicity])
	  	ce_therapists = client_ethnicity.therapists
	  	cc_therapists.each do |therapist|
	  		running_hash[therapist.id] == nil ? running_hash[therapist.id] = params[:ce_value].to_i : running_hash[therapist.id] += (params[:ce_value].to_i)}
  	end

  	therapist_sorted_id = running_hash.sort_by{|key,value| value}.to_h.keys
  	therapist_search_list = []
  	therapist_sorted_id.each do |therapist_id|
  		current_therapist = Therapist.find(therapist_id)
  		therapist_instance = {}
			therapist_instance['pt_id'] = current_therapist.pt_id
			therapist_instance['name'] = current_therapist.name
			therapist_instance['title'] = current_therapist.title
			therapist_instance['phone'] = current_therapist.phone
			therapist_instance['street_address'] = current_therapist.street_address
			therapist_instance['locality'] = current_therapist.locality
			therapist_instance['state'] = current_therapist.state
			therapist_instance['zipcode'] = current_therapist.zipcode
			therapist_instance['blurb'] = current_therapist.blurb
			therapist_instance['yrs_practice'] = current_therapist.yrs_practice
			therapist_instance['school'] = current_therapist.school
			therapist_instance['yr_graduated'] = current_therapist.yr_graduated
			therapist_instance['license_no'] = current_therapist.license_no
			therapist_instance['license_state'] = current_therapist.license_state
			therapist_instance['client_ethnicities'] = current_therapist.client_ethnicities
			therapist_instance['client_languages'] = current_therapist.client_languages
			therapist_instance['client_ages'] = current_therapist.client_ages
			therapist_instance['client_categories'] = current_therapist.client_categories
			therapist_instance['treatment_modalities'] = current_therapist.treatment_modalities
			therapist_instance['treatment_orientation'] = current_therapist.treatment_orientation
			therapist_instance['target_issues'] = current_therapist.target_issues
			therapist_instance['issues'] = current_therapist.issues
			therapist_instance['avg_cost'] = current_therapist.avg_cost
			therapist_instance['sliding_scale'] = current_therapist.sliding_scale
			therapist_instance['takes_insurance'] = current_therapist.takes_insurance
			therapist_instance['accepted_insurance'] = current_therapist.accepted_insurance
			therapist_instance['accepted_payments'] = current_therapist.accepted_payments
			therapist_search_list << therapist_instance
  	end
    render json: {data: therapist_search_list}
  end
end