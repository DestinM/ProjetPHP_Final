<form id="matiereForm" method="post" action="controller/addMatiere.php">
    <div class="form-group">
        <label for="matiere">Matiere</label>
        <input type="text" class="form-control" id="matiere" name="matiere">
    </div>

    <div class="form-group">
        <label for="domaine">Domaine</label>
        <select class="form-control" id="domaine" name="domaine">
            <option value="gestion">Gestion</option>
            <option value="informatique">informatique</option>
        </select>
    </div>
</form>
