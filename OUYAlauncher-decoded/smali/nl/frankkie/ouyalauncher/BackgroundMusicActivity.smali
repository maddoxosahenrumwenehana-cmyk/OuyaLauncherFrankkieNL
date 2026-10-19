.class public Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;
.super Landroid/app/Activity;
.source "BackgroundMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;,
        Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;,
        Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field musics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;",
            ">;"
        }
    .end annotation
.end field

.field table:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->musics:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->handler:Landroid/os/Handler;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->fillTable()V

    return-void
.end method

.method static synthetic access$100(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->selectMusic(Ljava/lang/String;)V

    return-void
.end method

.method private fillTable(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;)Landroid/view/View;
    .locals 9
    .param p1, "myMusic"    # Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;

    .prologue
    .line 242
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 243
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->table:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 244
    .local v3, "layout":Landroid/view/ViewGroup;
    const v6, 0x7f09000b

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 245
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x7f09000c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 246
    .local v5, "textView":Landroid/widget/TextView;
    const v6, 0x7f09000d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    .local v0, "hiddenTextView":Landroid/widget/TextView;
    const v6, 0x7f020025

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, p1, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->path:Ljava/lang/String;

    .line 251
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$2;

    invoke-direct {v6, p0, v4}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$2;-><init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-object v3
.end method

.method private fillTable()V
    .locals 7

    .prologue
    .line 222
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 223
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, "row":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 226
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->musics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 227
    rem-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    .line 228
    if-eqz v2, :cond_0

    .line 229
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 231
    :cond_0
    const v4, 0x7f03000c

    iget-object v5, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->table:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "row":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 233
    .restart local v2    # "row":Landroid/view/ViewGroup;
    :cond_1
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->musics:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;

    invoke-direct {p0, v4}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->fillTable(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;)Landroid/view/View;

    move-result-object v3

    .line 234
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->musics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 236
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private selectMusic(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "musicFile"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v1, "i":Landroid/content/Intent;
    const-class v2, Lnl/frankkie/ouyalauncher/BackgroundMusicService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    const-string v2, "cmd"

    const-string v3, "restart"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    invoke-static {p0, p1}, Lnl/frankkie/ouyalauncher/Util;->logSetMusic(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method public downloadDefaultMusic()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V

    .line 80
    .local v0, "task":Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://raw.github.com/frankkienl/OuyaLauncherFrankkieNL/master/data/music_default.mp3"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public initMusic()V
    .locals 6

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    const-string v5, "/sdcard/FrankkieOuyaLauncher/music/music_default.mp3"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "defaultFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    new-instance v2, Ljava/io/File;

    const-string v5, "/sdcard/FrankkieOuyaLauncher/music/"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "musicFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 66
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/sdcard/FrankkieOuyaLauncher/music/.nomedia"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "noMedia":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v3    # "noMedia":Ljava/io/File;
    :goto_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->downloadDefaultMusic()V

    .line 76
    .end local v2    # "musicFolder":Ljava/io/File;
    :goto_1
    return-void

    .line 68
    .restart local v2    # "musicFolder":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "musicFolder":Ljava/io/File;
    :cond_0
    new-instance v4, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;

    invoke-direct {v4, p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V

    .line 75
    .local v4, "task":Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public initUI()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 56
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->table:Landroid/view/ViewGroup;

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iput-object p0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->initUI()V

    .line 46
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->initMusic()V

    .line 47
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 263
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 265
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 271
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 273
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$1;

    invoke-direct {v1, p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$1;-><init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method
