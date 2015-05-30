class AddVoltexTo<%= table_name.camelize %> < ActiveRecord::Migration
  def change
    change_table(:<%= table_name %>) do |t|
      t.string :name
      t.integer :<%= Voltex.role_class.underscore %>_id
<% attributes.each do |attribute| -%>
      t.<%= attribute.type %> :<%= attribute.name %>
<% end -%>
    end

    add_index :<%= table_name %>, :<%= Voltex.role_class.underscore %>_id
  end
end
