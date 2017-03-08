<fotimat-gallery>

    <!-- The Modal -->
    <div id="myModal" class="modal">

        <!-- The Close Button -->
        <span class="close" onclick="{ closemodal }">&times;</span>

        <!-- Modal Content (The Image) -->
        <img src="{ opts.image }" class="modal-content" id="img01">

    </div>

    <script type="text/babel">

        this.closemodal = function (e) {
            opts.oncloseclick()
        }

    </script>

</fotimat-gallery>

