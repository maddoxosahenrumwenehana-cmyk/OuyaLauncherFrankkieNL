.class public final Lnl/frankkie/ouyalauncher/WallpaperScaler;
.super Ljava/lang/Object;

.method public static fitToScreen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    :try_start_0
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v2
    if-eqz v2, :return_original

    const-string v1, "window"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v3
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I
    move-result v4
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I
    move-result v5
    if-lez v4, :return_original
    if-lez v5, :return_original

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    move-result-object v1
    invoke-virtual {v1, v4, v5}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v7
    if-lez v6, :return_original
    if-lez v7, :return_original

    int-to-float v8, v4
    int-to-float v9, v6
    div-float/2addr v8, v9
    int-to-float v9, v5
    int-to-float v10, v7
    div-float/2addr v9, v10
    cmpg-float v10, v8, v9
    if-gez v10, :use_height_ratio
    move v10, v8
    goto :scale_dimensions
    :use_height_ratio
    move v10, v9
    :scale_dimensions
    int-to-float v8, v6
    mul-float/2addr v8, v10
    invoke-static {v8}, Ljava/lang/Math;->round(F)I
    move-result v11
    int-to-float v8, v7
    mul-float/2addr v8, v10
    invoke-static {v8}, Ljava/lang/Math;->round(F)I
    move-result v12
    const/4 v8, 0x1
    invoke-static {v2, v11, v12, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    move-result-object v13
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v14
    new-instance v15, Landroid/graphics/Canvas;
    invoke-direct {v15, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    const/high16 v8, -0x1000000
    invoke-virtual {v15, v8}, Landroid/graphics/Canvas;->drawColor(I)V
    sub-int v2, v4, v11
    int-to-float v2, v2
    const/high16 v8, 0x3f000000
    mul-float/2addr v2, v8
    sub-int v3, v5, v12
    int-to-float v3, v3
    mul-float/2addr v3, v8
    new-instance v4, Landroid/graphics/Paint;
    const/4 v8, 0x3
    invoke-direct {v4, v8}, Landroid/graphics/Paint;-><init>(I)V
    move-object v0, v15
    move-object v1, v13
    invoke-virtual/range {v0 .. v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/io/File;
    const-string v1, "/sdcard/FrankkieOuyaLauncher/backgrounds"
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    new-instance v1, Ljava/io/File;
    const-string v2, "/sdcard/FrankkieOuyaLauncher/backgrounds/.launcher_wallpaper_fit.png"
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    new-instance v3, Ljava/io/FileOutputStream;
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v5, 0x64
    invoke-virtual {v14, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0
    :return_original
    return-object p1
.end method
