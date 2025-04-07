<!DOCTYPE html>
<html>
<head>
<title>Student Data</title>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function(){
    $('table').on('keyup', 'input[type="text"]', function(){
        var columnIndex = $(this).closest('td').index() + 1;
        var searchTerm = $(this).val().toLowerCase();

        $('table tr').each(function(){
            if ($(this).index() > 1) { // Skip header rows
                var cellText = $(this).find('td:nth-child(' + columnIndex + ')').text().toLowerCase();
                if (cellText.startsWith(searchTerm)) { // Use startsWith() instead of includes()
                    $(this).show();
                } else {
                    $(this).hide();
                }
            }
        });
    });
});
$(document).ready(function(){
    $('table').on('keyup', 'input[type="text"]', function(event){
        handleSearch(this);
    });

    $('table').on('click', '.speech-button', function() {
        let inputField = $(this).prev('input[type="text"]');
        startSpeechRecognition(inputField);
    });

    function startSpeechRecognition(inputField) {
        if ('webkitSpeechRecognition' in window) {
            const recognition = new webkitSpeechRecognition();
            recognition.lang = 'en-US'; // Set language (e.g., 'mr-IN' for Marathi)

            recognition.onresult = function (event) {
                const transcript = event.results[0][0].transcript;
                inputField.val(transcript);
                handleSearch(inputField);
            };

            recognition.onerror = function (event) {
                console.error("Speech recognition error:", event.error);
                alert("Speech recognition failed. Please try again or use the keyboard.");
            };

            recognition.start();
        } else {
            alert('Your browser does not support speech recognition.');
        }
    }

    function handleSearch(inputField) {
        var columnIndex = inputField.closest('td').index() + 1;
        var searchTerm = inputField.val().toLowerCase();

        $('table tr').each(function(){
            if ($(this).index() > 1) { // Skip header rows
                var cellText = $(this).find('td:nth-child(' + columnIndex + ')').text().toLowerCase();
                if (cellText.includes(searchTerm)) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            } else { // Always show header row
                $(this).show();
            }
        });
    }

});
</script>
<style>
.speech-button {
    cursor: pointer;
    margin-left: 5px;
}
</style>
</head>
<body>

<table border='1'>
    <tr>
        <td>
            <input type="text" placeholder="Filter Sr. No">
            <button class="speech-button">🎤</button>
        </td>
        <td>
            <input type="text" placeholder="Filter Unique ID">
            <button class="speech-button">🎤</button>
        </td>
        <td>
            <input type="text" placeholder="Filter Name">
            <button class="speech-button">🎤</button>
        </td>
        <td>
            <input type="text" placeholder="Filter Location">
            <button class="speech-button">🎤</button>
        </td>
        <td>
            <input type="text" placeholder="Filter Age">
            <button class="speech-button">🎤</button>
        </td>
        <td>
            <input type="text" placeholder="Filter Gender">
            <button class="speech-button">🎤</button>
        </td>
    </tr>
    <tr>
        <th>Sr. No</th>
        <th>Unique ID</th>
        <th>Name</th>
        <th>Location</th>
        <th>Age</th>
        <th>Gender</th>
    </tr>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "poll";
    $tablename = "students";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT sr_no, uniqueID, name, location, age, gender FROM " . $tablename;
    $result = $conn->query($sql);

    if ($result) {
      if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
              echo "<tr>";
              echo "<td>" . $row["sr_no"]. "</td>";
              echo "<td>" . $row["uniqueID"]. "</td>";
              echo "<td>" . $row["name"]. "</td>";
              echo "<td>" . $row["location"]. "</td>";
              echo "<td>" . $row["age"]. "</td>";
              echo "<td>" . $row["gender"]. "</td>";
              echo "</tr>";
          }
      } else {
          echo "<tr><td colspan='6'>0 results</td></tr>";
      }
    } else {
      echo "<tr><td colspan='6'>Error in query</td></tr>";
    }

    $conn->close();
    ?>
</table>

</body>
</html>