<cfset pageName = "Muayene">

<cfquery name="animalinfo" datasource="workCubeDSN">
SELECT * FROM [WorkCube].[dbo].[animal]
</cfquery>

<cfinclude  template="../layout/header.cfm">
<main class="mt-5 py-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!--Table-->
                    <table class="table table-striped table-hover caption-top align-middle">
                        <caption class="fs-3">Inspection Tracing</caption>
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Animals</th>
                                <th scope="col">Last Inspection Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <cfoutput query="animalinfo">
                                <tr>
                                    <td>#animalinfo.animal_id#</td>
                                    <td>#animalinfo.name#</td>
                                    <td>#animalinfo.inspect_date#</td>
                                </tr>
                            </cfoutput>
                        </tbody>
                    </table>
                    <!--Table-->
                </div>
            </div>
        </div>
</main>
<cfinclude  template="../layout/footer.cfm">