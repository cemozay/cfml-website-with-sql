<cfset pageName = "Add Data">

<cfinclude  template="../layout/header.cfm">

<main class="mt-5 py-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!--- Yeni Kayıt ---> 
                    <cfquery name="AddAnimal" datasource="workCubeDSN"> 
                        INSERT INTO dbo.animal (animal_id, name, number, inspect_date, production, consumption)
                        VALUES (<cfqueryparam cfsqltype="cf_sql_integer" value="#Form.animal_id#" null="#NOT len(trim(Form.animal_id))#"/>,
                                <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.name#" null="#NOT len(trim(Form.name))#"/>,
                                <cfqueryparam cfsqltype="cf_sql_integer" value="#Form.number#" null="#NOT len(trim(Form.number))#"/>,                               
                                <cfqueryparam cfsqltype="cf_sql_timestamp" value="#Form.inspect_date#" null="#NOT len(trim(Form.inspect_date))#"/>,                               
                                <cfqueryparam cfsqltype="cf_sql_integer" value="#Form.production#" null="#NOT len(trim(Form.production))#"/>,                               
                                <cfqueryparam cfsqltype="cf_sql_integer" value="#Form.consumption#" null="#NOT len(trim(Form.consumption))#"/>)
                    </cfquery> 
                    <h1>Data Added</h1>
                    <a href="\cfml-website-with-sql\index.cfm" style="text-decoration: none;">Return to Homepage</a>
                </div>
            </div>
        </div>
</main>
<cfinclude  template="../layout/footer.cfm">
