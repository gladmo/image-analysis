package main

import (
	"fmt"
	"gopkg.in/gographics/imagick.v3/imagick"
	"os"
)

func main() {

	dir := os.Args[1]

	img := os.Args[2]

	imagick.Initialize()
	defer imagick.Terminate()
	mw := imagick.NewMagickWand()
	defer mw.Destroy()

	mw.ReadImage(img)

	width := mw.GetImageWidth()

	if fmt.Sprintf("%d", width) != dir {
		fmt.Println("error", img)
	}
}
