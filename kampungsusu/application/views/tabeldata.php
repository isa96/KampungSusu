   <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">{title}</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Flame</th>
                  <th>SUHU</th>
                  <th>GAS</th>
                  <th>Tanggal</th>
                </tr>
                </thead>
                <tbody>
                {result}
                <tr>
                  <td>{id}</td>
                  <td>{flamevalue} </td>
                  <td>{suhu}</td>
                  <td>{gasvalue}</td>
                  <td>{tanggal}</td>
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
