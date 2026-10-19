.class public Lnl/frankkie/ouyalauncher/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final BETA:Z = false

.field public static final PREFS_BETA_ENABLED:Ljava/lang/String; = "betaEnabled"

.field public static final PREFS_MUSIC_FILE:Ljava/lang/String; = "musicFile"

.field public static loadedBackground:Landroid/graphics/drawable/Drawable;

.field public static loadedBackgroundString:Ljava/lang/String;

.field public static loadedLogo:Landroid/graphics/drawable/Drawable;

.field public static loadedLogoString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateDate(Landroid/app/Activity;)V
    .locals 6
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "dateFormat"
    const-string v2, "dd.MM.yyyy"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Ljava/text/SimpleDateFormat;
    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    new-instance v3, Ljava/util/Date;
    invoke-direct {v3}, Ljava/util/Date;-><init>()V
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v4
    const v5, 0x7f09002c
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/TextView;
    if-eqz v5, :date_done
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :date_done
    return-void
.end method

.method public static copyResourceToFile(Landroid/content/Context;ILjava/io/File;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 229
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 230
    .local v2, "out":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 231
    .local v0, "buff":[B
    const/4 v3, 0x0

    .line 233
    .local v3, "read":I
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 234
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 238
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 237
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 238
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 240
    return-void
.end method

.method public static getBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "c"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v11, 0x7f020000

    .line 102
    new-instance v1, Ljava/io/File;

    const-string v8, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "defaultFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 105
    new-instance v6, Ljava/io/File;

    const-string v8, "/sdcard/FrankkieOuyaLauncher/backgrounds/"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 109
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/sdcard/FrankkieOuyaLauncher/backgrounds/.nomedia"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v7, "noMedia":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v7    # "noMedia":Ljava/io/File;
    :goto_0
    const v8, 0x7f040000

    :try_start_1
    new-instance v9, Ljava/io/File;

    const-string v10, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v9}, Lnl/frankkie/ouyalauncher/Util;->copyResourceToFile(Landroid/content/Context;ILjava/io/File;)V

    .line 116
    const v8, 0x7f040004

    new-instance v9, Ljava/io/File;

    const-string v10, "/sdcard/FrankkieOuyaLauncher/backgrounds/ouya_controller.png"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v9}, Lnl/frankkie/ouyalauncher/Util;->copyResourceToFile(Landroid/content/Context;ILjava/io/File;)V

    .line 117
    const v8, 0x7f040004

    new-instance v9, Ljava/io/File;

    const-string v10, "/sdcard/FrankkieOuyaLauncher/backgrounds/ouya_console.png"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v9}, Lnl/frankkie/ouyalauncher/Util;->copyResourceToFile(Landroid/content/Context;ILjava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .end local v6    # "folder":Ljava/io/File;
    :goto_2
    return-object v0

    .line 111
    .restart local v6    # "folder":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 119
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "folder":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 127
    .local v2, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "backgroundFile"

    const-string v9, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 128
    .local v5, "fileString":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 132
    const-string v8, "FrankkieOuyaLauncher"

    const-string v9, "Selected Background does not exist !! (return default)"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 137
    :cond_1
    sget-object v8, Lnl/frankkie/ouyalauncher/Util;->loadedBackgroundString:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Lnl/frankkie/ouyalauncher/Util;->loadedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 138
    sget-object v8, Lnl/frankkie/ouyalauncher/Util;->loadedBackgroundString:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 139
    sget-object v0, Lnl/frankkie/ouyalauncher/Util;->loadedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 144
    :cond_2
    :try_start_2
    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sput-object v0, Lnl/frankkie/ouyalauncher/Util;->loadedBackground:Landroid/graphics/drawable/Drawable;

    .line 146
    sput-object v5, Lnl/frankkie/ouyalauncher/Util;->loadedBackgroundString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 148
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public static getLogo(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "logoType"

    const-string v3, "BAXY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "logoType":Ljava/lang/String;
    const-string v2, "BAXY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const v2, 0x7f020022

    .line 163
    :goto_0
    return v2

    .line 160
    :cond_0
    const-string v2, "OUYA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const v2, 0x7f020024

    goto :goto_0

    .line 163
    :cond_1
    const-string v2, "MADOS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f020031

    goto :goto_0

    :cond_2
    const v2, 0x7f020023

    goto :goto_0
.end method

.method public static getLogoOLD(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "c"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v11, 0x7f020023

    .line 170
    new-instance v1, Ljava/io/File;

    const-string v8, "/sdcard/FrankkieOuyaLauncher/logos/logo_default.png"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "defaultFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 173
    new-instance v6, Ljava/io/File;

    const-string v8, "/sdcard/FrankkieOuyaLauncher/logos/"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 177
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/sdcard/FrankkieOuyaLauncher/logos/.nomedia"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v7, "noMedia":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v7    # "noMedia":Ljava/io/File;
    :goto_0
    const v8, 0x7f040002

    :try_start_1
    new-instance v9, Ljava/io/File;

    const-string v10, "/sdcard/FrankkieOuyaLauncher/logos/logo_default.png"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v9}, Lnl/frankkie/ouyalauncher/Util;->copyResourceToFile(Landroid/content/Context;ILjava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .end local v6    # "folder":Ljava/io/File;
    :goto_2
    return-object v0

    .line 179
    .restart local v6    # "folder":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 190
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "folder":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    .local v2, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "logoFile"

    const-string v9, "/sdcard/FrankkieOuyaLauncher/logos/logo_default.png"

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "fileString":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 203
    const-string v8, "FrankkieOuyaLauncher"

    const-string v9, "Selected Logo does not exist !! (return default)"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 208
    :cond_1
    sget-object v8, Lnl/frankkie/ouyalauncher/Util;->loadedLogoString:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Lnl/frankkie/ouyalauncher/Util;->loadedLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 209
    sget-object v8, Lnl/frankkie/ouyalauncher/Util;->loadedLogoString:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 210
    sget-object v0, Lnl/frankkie/ouyalauncher/Util;->loadedLogo:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 215
    :cond_2
    :try_start_2
    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sput-object v0, Lnl/frankkie/ouyalauncher/Util;->loadedLogo:Landroid/graphics/drawable/Drawable;

    .line 217
    sput-object v5, Lnl/frankkie/ouyalauncher/Util;->loadedLogoString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 219
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v3

    .line 220
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public static logAddFavorite(Landroid/content/Context;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packagename"

    iget-object v2, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "title"

    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "AddFavorite"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method public static logAddWidget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "AddWidget"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 326
    return-void
.end method

.method public static logAddWidgetConfigure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "AddWidgetConfigure"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    return-void
.end method

.method public static logAppInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "AppInfo"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    return-void
.end method

.method public static logAppLaunch(Landroid/content/Context;Lnl/frankkie/ouyalauncher/AppInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/AppInfo;

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packagename"

    iget-object v2, p1, Lnl/frankkie/ouyalauncher/AppInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "appname"

    iget-object v2, p1, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "isOUYA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "isOUYAGame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYAGame:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "title"

    iget-object v2, p1, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "AppLaunch"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method public static logAppLaunch(Landroid/content/Context;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packagename"

    iget-object v2, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "appname"

    iget-object v2, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "isOUYA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "isOUYAGame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYAGame()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "title"

    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "AppLaunch"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    return-void
.end method

.method public static logBetaDisable(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    const-string v0, "BetaDisable"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public static logBetaEnable(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    const-string v0, "BetaEnable"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static logFilterChange(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newFilter"    # I

    .prologue
    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "AppFilterChange"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    return-void
.end method

.method public static logGoToApplist(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newFilter"    # I

    .prologue
    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "Applist"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    return-void
.end method

.method public static logGoToSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    const-string v0, "goToSettings"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public static logRemoveFavorite(Landroid/content/Context;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packagename"

    iget-object v2, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "title"

    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "AddRemove"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 314
    return-void
.end method

.method public static logSendFeedback(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    const-string v0, "SetMusic"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static logSetBackground(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "setBackground"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method public static logSetClock(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "SetClock"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 332
    return-void
.end method

.method public static logSetLogo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "SetLogo"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 338
    return-void
.end method

.method public static logSetMusic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "SetMusic"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 344
    return-void
.end method

.method public static logStartDiscover(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const-string v0, "startDiscover"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static logTurnOff(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const-string v0, "turnOff"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static onStart(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lnl/frankkie/ouyalauncher/BackgroundMusicService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    const-string v1, "cmd"

    const-string v2, "check"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 370
    return-void
.end method

.method public static onStop(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lnl/frankkie/ouyalauncher/BackgroundMusicService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 361
    const-string v1, "cmd"

    const-string v2, "check"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 363
    return-void
.end method

.method public static setBackground(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public static setClock(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 43
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "clockType"

    const-string v4, "analog"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "clockType":Ljava/lang/String;
    const-string v3, "analog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    const v3, 0x7f090018

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    const v3, 0x7f090019

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .end local v0    # "clockType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v0    # "clockType":Ljava/lang/String;
    :cond_1
    const-string v3, "digital"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const v3, 0x7f090018

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    const v3, 0x7f090019

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "clockType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLogo(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->getLogo(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    return-void
.end method

.method public static setLogoOLD(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    return-void
.end method
