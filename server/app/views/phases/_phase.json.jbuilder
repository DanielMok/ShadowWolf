json.id phase.id
json.extract! phase, :created_at, :updated_at, :dirty_members, :project_name, :studio, :client, :services_scope, :delivery_contract, :staff_contact_login, :staff_custodian_login, :dirty_date
json.key_dates do
  json.array!(phase.key_dates) do |key_date|
    json.partial! "key_dates/key_date.json.jbuilder", key_date: key_date
  end
end
json.budgets do
  json.array!(phase.budgets) do |budget|
    json.partial! "budgets/budget.json.jbuilder", budget: budget
  end
end
