.class public Lnl/frankkie/ouyalauncher/web/AppImage;
.super Lnl/frankkie/ouyalauncher/web/WebPage;
.source "AppImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/web/WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lfi/iki/elonen/NanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 29
    .local v14, "res":Lfi/iki/elonen/NanoHTTPD$Response;
    const-string v16, "packageName"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 30
    .local v13, "packageName":Ljava/lang/String;
    sget-object v16, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v8

    .line 32
    .local v8, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 33
    new-instance v16, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v17, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v18, "text/html"

    const-string v19, "App not found !\nSQL"

    invoke-direct/range {v16 .. v19}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-object v16

    .line 35
    :cond_0
    iget-object v0, v8, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SELECT id FROM appinfo WHERE packageName = \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 36
    .local v4, "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-nez v16, :cond_1

    .line 37
    new-instance v16, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v17, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v18, "text/html"

    const-string v19, "App not found !\nGo to applist and restart webserver."

    invoke-direct/range {v16 .. v19}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    new-instance v10, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v10, v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;-><init>(I)V

    .line 41
    .local v10, "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    invoke-virtual {v10}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnLoad()V

    .line 43
    invoke-virtual {v10}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 44
    new-instance v7, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    .line 46
    new-instance v16, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v17, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v18, "text/html"

    const-string v19, "Image not found !"

    invoke-direct/range {v16 .. v19}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Lnl/frankkie/ouyalauncher/web/AppImage;->serveFile(Ljava/io/File;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v16

    goto/16 :goto_0

    .line 50
    .end local v7    # "f":Ljava/io/File;
    :cond_3
    sget-object v16, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 52
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 53
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 54
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 55
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 56
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v15, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 58
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 61
    .local v9, "imageInByte":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1}, Lnl/frankkie/ouyalauncher/web/AppImage;->serveImageBytes([BLjava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    goto/16 :goto_0

    .line 62
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v9    # "imageInByte":[B
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    .line 63
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v17, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v18, "text/html"

    const-string v19, "Not a OUYA app. (Normal Android apps will not have an Image)"

    invoke-direct/range {v16 .. v19}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public serveFile(Ljava/io/File;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 27
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 83
    .local v19, "res":Lfi/iki/elonen/NanoHTTPD$Response;
    if-nez v19, :cond_3

    .line 85
    const/4 v14, 0x0

    .line 86
    .local v14, "mime":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2e

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 87
    .local v6, "dot":I
    if-ltz v6, :cond_0

    .line 88
    sget-object v23, Lnl/frankkie/ouyalauncher/MyServer;->MIME_TYPES:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v24

    add-int/lit8 v25, v6, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 90
    :cond_0
    if-nez v14, :cond_1

    .line 91
    const-string v14, "application/octet-stream"

    .line 95
    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "etag":Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 99
    .local v21, "startFrom":J
    const-wide/16 v7, -0x1

    .line 100
    .local v7, "endAt":J
    const-string v23, "range"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 101
    .local v18, "range":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 102
    const-string v23, "bytes="

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 103
    const-string v23, "bytes="

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 104
    const/16 v23, 0x2d

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 106
    .local v15, "minus":I
    if-lez v15, :cond_2

    .line 107
    const/16 v23, 0x0

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 108
    add-int/lit8 v23, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v7

    .line 116
    .end local v15    # "minus":I
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 117
    .local v10, "fileLen":J
    if-eqz v18, :cond_7

    const-wide/16 v23, 0x0

    cmp-long v23, v21, v23

    if-ltz v23, :cond_7

    .line 118
    cmp-long v23, v21, v10

    if-ltz v23, :cond_4

    .line 119
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v23, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v24, "text/plain"

    const-string v25, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .end local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .local v20, "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :try_start_3
    const-string v23, "Content-Range"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bytes 0-0/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v23, "ETag"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v19, v20

    .line 159
    .end local v6    # "dot":I
    .end local v7    # "endAt":J
    .end local v9    # "etag":Ljava/lang/String;
    .end local v10    # "fileLen":J
    .end local v14    # "mime":Ljava/lang/String;
    .end local v18    # "range":Ljava/lang/String;
    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .end local v21    # "startFrom":J
    .restart local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_3
    :goto_1
    const-string v23, "Accept-Ranges"

    const-string v24, "bytes"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v19

    .line 123
    .restart local v6    # "dot":I
    .restart local v7    # "endAt":J
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v10    # "fileLen":J
    .restart local v14    # "mime":Ljava/lang/String;
    .restart local v18    # "range":Ljava/lang/String;
    .restart local v21    # "startFrom":J
    :cond_4
    const-wide/16 v23, 0x0

    cmp-long v23, v7, v23

    if-gez v23, :cond_5

    .line 124
    const-wide/16 v23, 0x1

    sub-long v7, v10, v23

    .line 126
    :cond_5
    sub-long v23, v7, v21

    const-wide/16 v25, 0x1

    add-long v16, v23, v25

    .line 127
    .local v16, "newLen":J
    const-wide/16 v23, 0x0

    cmp-long v23, v16, v23

    if-gez v23, :cond_6

    .line 128
    const-wide/16 v16, 0x0

    .line 131
    :cond_6
    move-wide/from16 v4, v16

    .line 132
    .local v4, "dataLen":J
    :try_start_4
    new-instance v12, Lnl/frankkie/ouyalauncher/web/AppImage$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1, v4, v5}, Lnl/frankkie/ouyalauncher/web/AppImage$1;-><init>(Lnl/frankkie/ouyalauncher/web/AppImage;Ljava/io/File;J)V

    .line 138
    .local v12, "fis":Ljava/io/FileInputStream;
    move-wide/from16 v0, v21

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 140
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v23, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v14, v12}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    .end local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :try_start_5
    const-string v23, "Content-Length"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v23, "Content-Range"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bytes "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v23, "ETag"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v19, v20

    .line 144
    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_1

    .line 146
    .end local v4    # "dataLen":J
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "newLen":J
    :cond_7
    :try_start_6
    const-string v23, "if-none-match"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 147
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v23, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v14, v2}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .end local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object/from16 v19, v20

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_1

    .line 149
    :cond_8
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v23, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v14, v2}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 150
    .end local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :try_start_7
    const-string v23, "Content-Length"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v23, "ETag"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v19, v20

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_1

    .line 155
    .end local v6    # "dot":I
    .end local v7    # "endAt":J
    .end local v9    # "etag":Ljava/lang/String;
    .end local v10    # "fileLen":J
    .end local v18    # "range":Ljava/lang/String;
    .end local v21    # "startFrom":J
    :catch_0
    move-exception v13

    .line 156
    .local v13, "ioe":Ljava/io/IOException;
    :goto_2
    new-instance v19, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v23, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v24, "text/plain"

    const-string v25, "FORBIDDEN: Reading file failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_1

    .line 155
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v6    # "dot":I
    .restart local v7    # "endAt":J
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v10    # "fileLen":J
    .restart local v18    # "range":Ljava/lang/String;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v21    # "startFrom":J
    :catch_1
    move-exception v13

    move-object/from16 v19, v20

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v19    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto :goto_2

    .line 110
    .end local v10    # "fileLen":J
    .restart local v15    # "minus":I
    :catch_2
    move-exception v23

    goto/16 :goto_0
.end method

.method public serveImageBytes([BLjava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 73
    .local v1, "res":Lfi/iki/elonen/NanoHTTPD$Response;
    const/4 v0, 0x0

    .line 74
    .local v0, "mime":Ljava/lang/String;
    const-string v0, "image/png"

    .line 75
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v1    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v0, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 76
    .restart local v1    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    const-string v2, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object v1
.end method
