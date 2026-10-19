.class public Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "BackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/BackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundsLoaderAsyncTask"
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
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/BackgroundActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 163
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    new-instance v4, Ljava/io/File;

    const-string v12, "/sdcard/FrankkieOuyaLauncher/backgrounds/"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "list":[Ljava/lang/String;
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/BackgroundActivity;->backgrounds:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 167
    .local v3, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    const-string v12, "backgroundFile"

    const-string v13, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, "selectedBackgroundPath":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v10, v0, v7

    .line 169
    .local v10, "s":Ljava/lang/String;
    const-string v12, ".nomedia"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 168
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const-string v12, "gameboy_arcade.jpg"
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v12
    if-nez v12, :remove_legacy_arcade
    const-string v12, "gameboy-arcade.jpg"
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v12
    if-nez v12, :remove_legacy_arcade
    const-string v12, "gameboy_arcade.jpeg"
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v12
    if-nez v12, :remove_legacy_arcade
    const-string v12, "gameboy-arcade.jpeg"
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v12
    if-nez v12, :remove_legacy_arcade
    const-string v12, "gameboy_arcade.jipg"
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v12
    if-nez v12, :remove_legacy_arcade
    const-string v12, "gameboy-arcade.jipg"
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v12
    if-nez v12, :remove_legacy_arcade
    goto :keep_background_candidate

    :remove_legacy_arcade
    new-instance v13, Ljava/io/File;
    invoke-direct {v13, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    goto :cond_0

    :keep_background_candidate
    new-instance v1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;

    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    invoke-direct {v1, v12}, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;-><init>(Lnl/frankkie/ouyalauncher/BackgroundActivity;)V

    .line 173
    .local v1, "background":Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;
    new-instance v6, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sdcard/FrankkieOuyaLauncher/backgrounds/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 179
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    iput-object v2, v1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->drawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iput-object v10, v1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->name:Ljava/lang/String;

    .line 181
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->path:Ljava/lang/String;

    .line 182
    iget-object v12, v1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v1, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->isSelected:Z

    .line 183
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/BackgroundActivity;->backgrounds:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v5

    .line 185
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v1    # "background":Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "s":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    return-object v12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 193
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$BackgroundsLoaderAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->access$100(Lnl/frankkie/ouyalauncher/BackgroundActivity;)V

    .line 194
    return-void
.end method
