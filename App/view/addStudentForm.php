<form id="form" role="form" method="post" action="controller/addStudent.php">
    <div class="form-group">
        <label>nom</label>
        <input name="nom" id="nom" type="text" class="form-control" placeholder="nom">
    </div>
    <div class="form-group">
        <label>prenom</label>
        <input name="prenom" id="prenom" type="text" class="form-control" placeholder="prenom">
    </div>
    <div class="form-group">
        <label>sexe</label>
        <select name="sexe" id="sexe">
            <option value="masculin">masculin</option>
            <option value="feminin">feminin</option>
        </select>
    </div>
    <div class="form-group">
        <label>Date de naissance</label>
        <input name="dateNaissance" id="dateNaissance" type="datetime" class="form-control" placeholder="date de naissance">
    </div>
    <div class="form-group">
        <label>email</label>
        <input name="email" id="email" type="text" class="form-control" placeholder="email">
    </div>
    <div class="form-group">
        <label>domaine</label>
        <select id="domaine" name="domaine" class="form-control">
            <?php 
            if( count($resultNew > 0 )) {
                foreach($resultNew as $index => $row) { ?>
                    <option value="<?php echo $row['Libelle_Domaine']; ?>"><?php echo $row['Libelle_Domaine']; ?></option>
                    <?php }

                } else { ?>
                    <option value="none">--none--</option>
                    <?php }

                    ?>
                </select>

            </div>
            <div class="form-group">
                <label>annee_academique</label>
                <input name="annee_academique" id="annee_academique" type="number" min="2015" class="form-control" placeholder="annee_academique">
            </div>
            <div class="form-group">
                <label>vacation</label>
                <select class="form-control" name="vacation" id="vacation">
                    <option value="matin">matin</option>
                    <option value="soir">soir</option>
                </select>
            </div>
            <div class="form-group">
                <label>classe</label>
                <select class="form-control" name="classe" id="classe">
                    <option value="propedeutique">propedeutique</option>
                    <option value="L1">L1</option>
                    <option value="L2">L2</option>
                    <option value="L3">L3</option>
                </select>
            </div>
        </form>
