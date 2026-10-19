.class public Lnl/frankkie/ouyalauncher/MakeImageCache;
.super Landroid/os/AsyncTask;
.source "MakeImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MakeImageCache;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/MakeImageCache;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 31
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 37
    new-instance v26, Ljava/io/File;

    const-string v27, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v26, "thumbnailsFolder":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    .line 41
    :try_start_0
    new-instance v18, Ljava/io/File;

    const-string v27, "/sdcard/FrankkieOuyaLauncher/thumbnails/.nomedia"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v18, "noMedia":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .end local v18    # "noMedia":Ljava/io/File;
    :goto_0
    new-instance v5, Ljava/io/File;

    const-string v27, "/sdcard/FrankkieOuyaLauncher/animations/"

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "animationsFolder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 51
    :try_start_1
    new-instance v18, Ljava/io/File;

    const-string v27, "/sdcard/FrankkieOuyaLauncher/animations/.nomedia"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .restart local v18    # "noMedia":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    .end local v18    # "noMedia":Ljava/io/File;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/MakeImageCache;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 59
    .local v21, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v16, Landroid/content/Intent;

    const-string v27, "android.intent.action.MAIN"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v16, "mainIntent":Landroid/content/Intent;
    const-string v27, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v27, "tv.ouya.intent.category.GAME"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 64
    .local v14, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v17, Landroid/content/Intent;

    const-string v27, "android.intent.action.MAIN"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v17, "mainIntent2":Landroid/content/Intent;
    const-string v27, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v27, "tv.ouya.intent.category.APP"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 68
    .local v15, "infos2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 72
    .local v13, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 74
    .local v22, "packageName":Ljava/lang/String;
    new-instance v25, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v25, "thumbFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_0

    .line 78
    :try_start_2
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v24

    .line 79
    .local v24, "resources":Landroid/content/res/Resources;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":drawable/ouya_icon"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    const-string v29, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 80
    .local v11, "identifier":I
    const/16 v20, 0x0

    .line 81
    .local v20, "ouyaImage":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_2

    .line 87
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 94
    :goto_3
    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    .end local v20    # "ouyaImage":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 96
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/MakeImageCache;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/16 v28, 0x1e0

    const/16 v29, 0x10e

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 98
    .local v8, "d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v19, Ljava/io/FileOutputStream;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 99
    .local v19, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v27

    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x5a

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 100
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Runtime;->gc()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 110
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "identifier":I
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_4
    new-instance v4, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/sdcard/FrankkieOuyaLauncher/animations/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".gif"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "animationFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_1

    .line 113
    :try_start_3
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v24

    .line 114
    .restart local v24    # "resources":Landroid/content/res/Resources;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":raw/icon_animation"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    const-string v29, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 115
    .restart local v11    # "identifier":I
    if-eqz v11, :cond_1

    .line 116
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 118
    .local v12, "in":Ljava/io/InputStream;
    new-instance v19, Ljava/io/FileOutputStream;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/sdcard/FrankkieOuyaLauncher/animations/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".gif"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v7, v0, [B
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    .line 120
    .local v7, "buff":[B
    const/16 v23, 0x0

    .line 122
    .local v23, "read":I
    :goto_5
    :try_start_4
    invoke-virtual {v12, v7}, Ljava/io/InputStream;->read([B)I

    move-result v23

    if-lez v23, :cond_3

    .line 123
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 126
    :catchall_0
    move-exception v27

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 127
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    throw v27
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    .line 130
    .end local v7    # "buff":[B
    .end local v11    # "identifier":I
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "read":I
    .end local v24    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v9

    .line 131
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 138
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_2

    .line 43
    .end local v4    # "animationFile":Ljava/io/File;
    .end local v5    # "animationsFolder":Ljava/io/File;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Landroid/content/pm/ResolveInfo;
    .end local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "infos2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "mainIntent":Landroid/content/Intent;
    .end local v17    # "mainIntent2":Landroid/content/Intent;
    .end local v21    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v25    # "thumbFile":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 44
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 53
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "animationsFolder":Ljava/io/File;
    :catch_2
    move-exception v9

    .line 54
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 92
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "identifier":I
    .restart local v13    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "infos2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "mainIntent":Landroid/content/Intent;
    .restart local v17    # "mainIntent2":Landroid/content/Intent;
    .restart local v20    # "ouyaImage":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v24    # "resources":Landroid/content/res/Resources;
    .restart local v25    # "thumbFile":Ljava/io/File;
    :cond_2
    :try_start_6
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v20

    goto/16 :goto_3

    .line 101
    .end local v11    # "identifier":I
    .end local v20    # "ouyaImage":Landroid/graphics/drawable/Drawable;
    .end local v24    # "resources":Landroid/content/res/Resources;
    :catch_3
    move-exception v9

    .line 102
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 103
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4
    move-exception v9

    .line 104
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 105
    .end local v9    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 106
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 126
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "animationFile":Ljava/io/File;
    .restart local v7    # "buff":[B
    .restart local v11    # "identifier":I
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    .restart local v23    # "read":I
    .restart local v24    # "resources":Landroid/content/res/Resources;
    :cond_3
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 127
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    .line 132
    .end local v7    # "buff":[B
    .end local v11    # "identifier":I
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "read":I
    .end local v24    # "resources":Landroid/content/res/Resources;
    :catch_6
    move-exception v9

    .line 133
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 134
    .end local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 135
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_6

    .line 140
    .end local v4    # "animationFile":Ljava/io/File;
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "info":Landroid/content/pm/ResolveInfo;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v25    # "thumbFile":Ljava/io/File;
    :cond_4
    const/16 v27, 0x0

    return-object v27
.end method
