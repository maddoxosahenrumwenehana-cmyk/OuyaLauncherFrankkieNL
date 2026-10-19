.class public Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;
.super Landroid/os/AsyncTask;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/LogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogosLoaderAsynTask"
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
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/LogoActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/LogoActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 109
    new-instance v3, Ljava/io/File;

    const-string v12, "/sdcard/FrankkieOuyaLauncher/logos/"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "list":[Ljava/lang/String;
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/LogoActivity;->logos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 113
    .local v2, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    const-string v12, "logoFile"

    const-string v13, "/sdcard/FrankkieOuyaLauncher/logos/logo_baxy_white_shadowite_shadow.png"

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "selectedLogoPath":Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v10, v0, v6

    .line 115
    .local v10, "s":Ljava/lang/String;
    const-string v12, ".nomedia"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 118
    :cond_1
    new-instance v9, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;

    iget-object v12, p0, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    invoke-direct {v9, v12}, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;-><init>(Lnl/frankkie/ouyalauncher/LogoActivity;)V

    .line 119
    .local v9, "logo":Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;
    new-instance v5, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sdcard/FrankkieOuyaLauncher/logos/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iput-object v1, v9, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iput-object v10, v9, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->name:Ljava/lang/String;

    .line 127
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->path:Ljava/lang/String;

    .line 128
    iget-object v12, v9, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v9, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->isSelected:Z

    .line 129
    iget-object v12, p0, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/LogoActivity;->logos:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "logo":Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;
    .end local v10    # "s":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    return-object v12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 139
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/LogoActivity;->access$100(Lnl/frankkie/ouyalauncher/LogoActivity;)V

    .line 140
    return-void
.end method
