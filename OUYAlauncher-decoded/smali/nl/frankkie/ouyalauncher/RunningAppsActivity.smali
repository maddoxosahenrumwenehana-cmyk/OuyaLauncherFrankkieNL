.class public Lnl/frankkie/ouyalauncher/RunningAppsActivity;
.super Landroid/app/Activity;
.source "RunningAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;
    }
.end annotation


# static fields
.field public static final numberOfItemsPerRow:I = 0x5


# instance fields
.field private mOldBounds:Landroid/graphics/Rect;

.field table:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->mOldBounds:Landroid/graphics/Rect;

    .line 284
    return-void
.end method

.method private getRunningTasks()V
    .locals 9

    .prologue
    .line 58
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 59
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 61
    .local v4, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, "row":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 64
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 65
    rem-int/lit8 v6, v1, 0x5

    if-nez v6, :cond_1

    .line 66
    if-eqz v3, :cond_0

    .line 67
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    const v6, 0x7f03000c

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->table:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3    # "row":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 71
    .restart local v3    # "row":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, v6}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getView(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/view/View;

    move-result-object v5

    .line 72
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_2

    .line 74
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 49
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->setContentView(I)V

    .line 51
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 52
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->table:Landroid/view/ViewGroup;

    .line 53
    return-void
.end method


# virtual methods
.method public getAppNameByPackagename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 158
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 159
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v4, p1

    .line 162
    goto :goto_1
.end method

.method public getIconImageAndroidApps(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 191
    const/4 v5, 0x0

    .line 192
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 194
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 201
    const/16 v12, 0xb4

    .line 202
    .local v12, "width":I
    const/16 v4, 0xb4

    .line 204
    .local v4, "height":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 205
    .local v7, "iconWidth":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 207
    .local v6, "iconHeight":I
    instance-of v13, v5, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_0

    move-object v9, v5

    .line 208
    check-cast v9, Landroid/graphics/drawable/PaintDrawable;

    .line 209
    .local v9, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 210
    invoke-virtual {v9, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 213
    .end local v9    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v12, :cond_5

    if-lez v4, :cond_5

    if-lt v12, v7, :cond_1

    if-ge v4, v6, :cond_5

    .line 214
    :cond_1
    int-to-float v13, v7

    int-to-float v14, v6

    div-float v10, v13, v14

    .line 216
    .local v10, "ratio":F
    if-le v7, v6, :cond_3

    .line 217
    int-to-float v13, v12

    div-float/2addr v13, v10

    float-to-int v4, v13

    .line 222
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 225
    .local v1, "c":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v12, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 226
    .local v11, "thumb":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v12, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 237
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5    # "icon":Landroid/graphics/drawable/Drawable;
    move-object v13, v5

    .line 240
    .end local v1    # "c":Landroid/graphics/Bitmap$Config;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "height":I
    .end local v6    # "iconHeight":I
    .end local v7    # "iconWidth":I
    .end local v10    # "ratio":F
    .end local v11    # "thumb":Landroid/graphics/Bitmap;
    .end local v12    # "width":I
    :goto_2
    return-object v13

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 197
    const/4 v13, 0x0

    goto :goto_2

    .line 218
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "height":I
    .restart local v6    # "iconHeight":I
    .restart local v7    # "iconWidth":I
    .restart local v10    # "ratio":F
    .restart local v12    # "width":I
    :cond_3
    if-le v6, v7, :cond_2

    .line 219
    int-to-float v13, v4

    mul-float/2addr v13, v10

    float-to-int v12, v13

    goto :goto_0

    .line 222
    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 240
    .end local v10    # "ratio":F
    :cond_5
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public getIconImageOUYA(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 167
    iget-object v10, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 170
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 171
    .local v9, "resources":Landroid/content/res/Resources;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":drawable/ouya_icon"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const-string v12, ""

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 172
    .local v6, "identifier3":I
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 174
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v11, 0x1e0

    const/16 v12, 0x10e

    const/4 v13, 0x1

    invoke-static {v2, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 178
    .local v3, "d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 179
    .local v7, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v10, v11, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 180
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "identifier3":I
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v4

    .line 182
    :catch_0
    move-exception v5

    .line 183
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "FrankkieOuyaLauncher"

    const-string v11, "ERROR"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getPid(Ljava/lang/String;)I
    .locals 9
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 272
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 273
    .local v7, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 275
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v1, v3

    .line 276
    .local v6, "pak":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 277
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 281
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "len$":I
    .end local v6    # "pak":Ljava/lang/String;
    :goto_1
    return v8

    .line 275
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v5    # "len$":I
    .restart local v6    # "pak":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "len$":I
    .end local v6    # "pak":Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public getView(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/view/View;
    .locals 11
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 81
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 82
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030004

    iget-object v9, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->table:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 85
    .local v3, "layout":Landroid/view/ViewGroup;
    iget-object v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "packageName":Ljava/lang/String;
    const v8, 0x7f09000c

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 89
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getAppNameByPackagename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v8, 0x7f09000d

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 91
    .local v7, "tv_packagename":Landroid/widget/TextView;
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v8, 0x7f09000b

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    .local v1, "img":Landroid/widget/ImageView;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, "thumbFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 96
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :goto_0
    new-instance v8, Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;

    invoke-direct {v8, p0, p1}, Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;-><init>(Lnl/frankkie/ouyalauncher/RunningAppsActivity;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-object v3

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getIconImageOUYA(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getIconImageAndroidApps(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    :cond_1
    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020020

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public killApp()V
    .locals 5

    .prologue
    .line 244
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 246
    const-string v3, "Killing apps does not work. This is a Bug in OUYA.\nSorry for the inconvenience.\nFor more information, see the BAXY Thread on OUYAForum.com\n(http://ouyaforum.com/showthread.php?4436-BAXY-Custom-Launcher)"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 247
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    .local v1, "tv_packagename":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "packagename":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->killApp(Ljava/lang/String;)V

    .line 252
    .end local v0    # "packagename":Ljava/lang/String;
    .end local v1    # "tv_packagename":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public killApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 258
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 260
    new-instance v3, Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/RunningAppsActivity;Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;)V

    .line 261
    .local v3, "task":Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getPid(Ljava/lang/String;)I

    move-result v2

    .line 264
    .local v2, "pid":I
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v2    # "pid":I
    .end local v3    # "task":Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->init(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->initUI()V

    .line 42
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getRunningTasks()V

    .line 43
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 127
    const/4 v7, 0x6

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    .line 134
    .local v4, "ignoreList":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget v2, v0, v3

    .line 135
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 136
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 150
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v6

    .line 134
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_3

    .line 140
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->killApp()V

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x63

    if-ne v7, v8, :cond_4

    .line 145
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getRunningTasks()V

    goto :goto_1

    .line 149
    :cond_4
    invoke-static {p1, p2}, Ltv/ouya/console/api/OuyaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 150
    .local v1, "handled":Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 127
    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x16
        0x60
        0x61
    .end array-data
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 310
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 312
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 318
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 320
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 321
    return-void
.end method
