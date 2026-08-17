class OrganisationDomainsController < WebController
  def new
    authorize organisation, :can_manage_organisation_domains?

    @organisation_domain = OrganisationDomain.new(organisation:)
  end

private

  def organisation
    @organisation ||= Organisation.find(params[:organisation_id])
  end
end
