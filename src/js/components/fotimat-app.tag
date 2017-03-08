<fotimat-app>

    <fotimat-overview data="{ subset }" alldata="{ opts.imageData }" onmoreclick="{ this.showMore }" onpictureclick="{ this.openModal }"></fotimat-overview>

    <fotimat-gallery show="{ showModal }" image="{ pictureSrc }" oncloseclick="{ this.closeModal }"></fotimat-gallery>


    <script type="text/babel">

        this.arrayEnd = 8
        this.nextEnd = this.arrayEnd + 8

        this.subset = opts.imageData.slice(0, this.arrayEnd)

        const preloadData = (start, end) => {
            let nextSubset = opts.imageData.slice(start, end)
            for (var i = 0; i < nextSubset.length; ++i) {
                var img = new Image();
                img.src = nextSubset[i];
            }
        }

        this.preloadSubset = preloadData(this.arrayEnd, this.nextEnd)

        this.showMore = () => {
            this.update({
                arrayEnd: this.arrayEnd + 8,
                nextEnd: this.nextEnd + 8,
                subset: opts.imageData.slice(0, this.arrayEnd + 8),
                preloadSubset: preloadData(this.arrayEnd + 8, this.nextEnd + 8)
            })
        }

        this.pictureSrc = ''
        this.showModal = false

        this.openModal = (url) => {
            this.update({
                pictureSrc: url,
                showModal: true
            })
        }

        this.closeModal = () => {
            this.update({
                showModal: false
            })
        }



    </script>

</fotimat-app>