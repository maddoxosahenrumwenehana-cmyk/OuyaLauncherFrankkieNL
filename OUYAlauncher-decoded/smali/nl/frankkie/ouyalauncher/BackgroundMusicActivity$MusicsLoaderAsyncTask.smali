.class public Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "BackgroundMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicsLoaderAsyncTask"
.end annotation

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
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 183
    new-instance v2, Ljava/io/File;

    const-string v12, "/sdcard/FrankkieOuyaLauncher/music/"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "list":[Ljava/lang/String;
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->musics:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 187
    .local v1, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    const-string v12, "musicFile"

    const-string v13, "/sdcard/FrankkieOuyaLauncher/music/music_default.png"

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "selectedBackgroundPath":Ljava/lang/String;
    new-instance v8, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;

    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-direct {v8, v12}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;-><init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V

    .line 190
    .local v8, "musicOff":Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;
    const-string v12, "Music Off"

    iput-object v12, v8, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->name:Ljava/lang/String;

    .line 191
    const-string v12, ""

    iput-object v12, v8, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->path:Ljava/lang/String;

    .line 192
    iget-object v12, v8, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v8, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->isSelected:Z

    .line 193
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->musics:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v10, v0, v5

    .line 195
    .local v10, "s":Ljava/lang/String;
    const-string v12, ".nomedia"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 194
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v9, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;

    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-direct {v9, v12}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;-><init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V

    .line 199
    .local v9, "myMusic":Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sdcard/FrankkieOuyaLauncher/music/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 204
    :try_start_0
    iput-object v10, v9, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->name:Ljava/lang/String;

    .line 205
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->path:Ljava/lang/String;

    .line 206
    iget-object v12, v9, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v9, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->isSelected:Z

    .line 207
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->musics:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "myMusic":Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;
    .end local v10    # "s":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    return-object v12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 217
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MusicsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->access$000(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V

    .line 218
    return-void
.end method
