.class public Lnl/frankkie/ouyalauncher/BackgroundActivity;
.super Landroid/app/Activity;
.source "BackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;,
        Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;
    }
.end annotation


# instance fields
.field backgrounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;",
            ">;"
        }
    .end annotation
.end field

.field table:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->backgrounds:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lnl/frankkie/ouyalauncher/BackgroundActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/BackgroundActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->selectBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lnl/frankkie/ouyalauncher/BackgroundActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/BackgroundActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->fillTable()V

    return-void
.end method

.method private fillTable(Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;)Landroid/view/View;
    .locals 9
    .param p1, "background"    # Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;

    .prologue
    .line 68
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 69
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->table:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 70
    .local v3, "layout":Landroid/view/ViewGroup;
    const v6, 0x7f09000b

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x7f09000c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 72
    .local v5, "textView":Landroid/widget/TextView;
    const v6, 0x7f09000d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, "hiddenTextView":Landroid/widget/TextView;
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v4, p1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->path:Ljava/lang/String;

    .line 77
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Lnl/frankkie/ouyalauncher/BackgroundActivity$1;

    invoke-direct {v6, p0, v4}, Lnl/frankkie/ouyalauncher/BackgroundActivity$1;-><init>(Lnl/frankkie/ouyalauncher/BackgroundActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object v3
.end method

.method private fillTable()V
    .locals 7

    .prologue
    .line 48
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "row":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 52
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->backgrounds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 53
    rem-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    .line 54
    if-eqz v2, :cond_0

    .line 55
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    const v4, 0x7f03000c

    iget-object v5, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->table:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "row":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 59
    .restart local v2    # "row":Landroid/view/ViewGroup;
    :cond_1
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->backgrounds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;

    invoke-direct {p0, v4}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->fillTable(Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->backgrounds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 62
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private initBackgrounds()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/BackgroundActivity;)V

    .line 44
    .local v0, "task":Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 90
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->setContentView(I)V

    .line 92
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 93
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity;->table:Landroid/view/ViewGroup;

    .line 94
    return-void
.end method

.method private selectBackground(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "backgroundFile"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    invoke-static {p0, p1}, Lnl/frankkie/ouyalauncher/Util;->logSetBackground(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    :try_start_0
    invoke-static {p0, p1}, Lnl/frankkie/ouyalauncher/WallpaperScaler;->fitToScreen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->setWallpaper(Ljava/io/InputStream;)V

    .line 147
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->init(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->initUI()V

    .line 39
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->initBackgrounds()V

    .line 40
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    const/4 v6, 0x6

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 127
    .local v4, "ignoreList":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget v2, v0, v3

    .line 128
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 129
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 135
    .end local v2    # "i":I
    :goto_1
    return v6

    .line 127
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "i":I
    :cond_1
    invoke-static {p1, p2}, Ltv/ouya/console/api/OuyaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 135
    .local v1, "handled":Z
    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 120
    nop

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x16
        0x61
        0x60
    .end array-data
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 99
    const/4 v6, 0x6

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 106
    .local v4, "ignoreList":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget v2, v0, v3

    .line 107
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 114
    .end local v2    # "i":I
    :goto_1
    return v6

    .line 106
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "i":I
    :cond_1
    invoke-static {p1, p2}, Ltv/ouya/console/api/OuyaController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 114
    .local v1, "handled":Z
    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 99
    nop

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x16
        0x61
        0x60
    .end array-data
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 200
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 202
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 208
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 210
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 211
    return-void
.end method
