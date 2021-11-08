<div class="">
    <title>B2.1</title>
</div>
<center>
    <div class="container">
        <?php
        require("DataProvider1.php");
        $sql = 'SELECT * FROM hang_sua';
        $result = DataProvider1::ExecuteQuery($sql)
        ?>
        <h3 eilgn="center" style="color:blue">Thông tin hãng sữa</h3>
        <table border=1>
          <thead>
            <tr>
              <th>Mã HS</th>
              <th>Tên hãng sữa</th>
              <th>Địa chỉ</th>
              <th>Điện thoại</th>
              <th>Email</th>
            </tr>
          </thead>
          <tbody>
            <?php while ($row = $result->fetch_array()) { ?>
            <tr>
              <td><?= $row['Ma_hang_sua']; ?></td>              
              <td><?= $row['Ten_hang_sua']; ?></td>
              <td><?= $row['Dia_chi']; ?></td>
              <td><?= $row['Dien_thoai']; ?></td>
              <td><?= $row['Email']; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      </center>
