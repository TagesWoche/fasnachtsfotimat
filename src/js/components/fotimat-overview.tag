<fotimat-overview>

    <div class="image-wrapper">
        <a each="{ entry in opts.data}" href="#" onclick="{ openmodal }">

            <figure>
                <img class="image-overview" src="{ entry }" alt="">
            </figure>
        </a>

    </div>

    <div if="{ opts.alldata.length > opts.data.length }" class="button-wrapper">
        <a class="button" href="#" onclick="{ showmore }">
            Mehr Bilder laden
        </a>
    </div>

    <script type="text/babel">

        this.showmore = function (e) {
            opts.onmoreclick(e)
            console.log(opts)
        }


        this.openmodal = function (e) {
            opts.onpictureclick(e.item.entry)
        }

    </script>


</fotimat-overview>