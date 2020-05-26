   <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Informasi User </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Nama </th>
                  <th>user name</th>
                  <th>di buat pada</th>
                  <th>di update pada</th>
                  </tr>
                </thead>
                <tbody>
                {result}
                <tr>
                  <td>{id_user}</td>
                  <td>{nama_user} </td>
                  <td>{username}</td>
                  <td>{created_at}</td>
                  <td>{updated_at}</td>
                  
                </tr>
                {/result}
                </tbody>
            </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>

  