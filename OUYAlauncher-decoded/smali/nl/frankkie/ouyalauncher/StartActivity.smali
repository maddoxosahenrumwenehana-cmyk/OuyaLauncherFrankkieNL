.class public Lnl/frankkie/ouyalauncher/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;,
        Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;
    }
.end annotation


# static fields
.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field public static final appWidgetHostId:I = 0x2862

.field public static currentInstance:Lnl/frankkie/ouyalauncher/StartActivity;


# instance fields
.field appWidgetHost:Landroid/appwidget/AppWidgetHost;

.field pendingAppWidgetId:I

.field batteryReceiver:Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;

.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1
    iput v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->pendingAppWidgetId:I

    .line 514
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->startDiscover()V

    return-void
.end method

.method static synthetic access$100(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->goToSettings()V

    return-void
.end method

.method static synthetic access$300(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->goToRunningApps()V

    return-void
.end method

.method static synthetic access$400(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->goToAdvancedSettings()V

    return-void
.end method

.method static synthetic access$500(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->turnOuyaOff()V

    return-void
.end method

.method static synthetic access$600(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->startWebserver()V

    return-void
.end method

.method private fixBackgroundOnFirstUse()V
    .locals 9

    .prologue
    .line 148
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 149
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "backgroundFile"
    const-string v7, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    const-string v8, "/sdcard/FrankkieOuyaLauncher/backgrounds/gameboy_arcade.jpg"
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :legacy_wallpaper_cleaned
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v6
    const-string v7, "backgroundFile"
    const-string v8, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v6
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_reset_legacy_default
    new-instance v6, Ljava/io/File;
    const-string v7, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    const v8, 0x7f040000
    invoke-static {p0, v8, v6}, Lnl/frankkie/ouyalauncher/Util;->copyResourceToFile(Landroid/content/Context;ILjava/io/File;)V
    :try_end_reset_legacy_default
    .catch Ljava/io/IOException; {:try_reset_legacy_default .. :try_end_reset_legacy_default} :reset_legacy_default_failed
    goto :reset_legacy_default_done
    :reset_legacy_default_failed
    move-exception v8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :reset_legacy_default_done
    new-instance v6, Ljava/io/File;
    const-string v7, "/sdcard/FrankkieOuyaLauncher/backgrounds/gameboy_arcade.jpg"
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :legacy_wallpaper_cleaned
    const-string v6, "isFirstRun"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 150
    .local v3, "isFirstRun":Z
    if-eqz v3, :cond_0

    .line 151
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "isFirstRun"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->getBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 153
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "backgroundFile"

    const-string v7, "/sdcard/FrankkieOuyaLauncher/backgrounds/default.png"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 157
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lnl/frankkie/ouyalauncher/StartActivity;->setWallpaper(Ljava/io/InputStream;)V

    .line 158
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "defaultSharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0    # "defaultSharedPreferences":Landroid/content/SharedPreferences;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private goToAdvancedSettings()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method private goToRunningApps()V
    .locals 2

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lnl/frankkie/ouyalauncher/RunningAppsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method

.method private goToSettings()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->logGoToSettings(Landroid/content/Context;)V

    .line 369
    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/16 v8, 0x400

    .line 166
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->requestWindowFeature(I)Z

    .line 167
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 170
    const v7, 0x7f03000b

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->setContentView(I)V

    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->updateDate(Landroid/app/Activity;)V

    .line 173
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->fixBackgroundOnFirstUse()V

    .line 177
    const v7, 0x7f09001f

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 178
    .local v0, "btnAll":Landroid/widget/Button;
    const v7, 0x7f09001b

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 179
    .local v5, "btnGames":Landroid/widget/Button;
    const v7, 0x7f09001c

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 180
    .local v2, "btnApps":Landroid/widget/Button;
    const v7, 0x7f09001e

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 181
    .local v1, "btnAndroid":Landroid/widget/Button;
    const v7, 0x7f09001d

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 182
    .local v4, "btnFavorites":Landroid/widget/Button;
    const v7, 0x7f090020

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 183
    .local v3, "btnDiscover":Landroid/widget/Button;
    const v7, 0x7f090021

    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 184
    .local v6, "btnSettings":Landroid/widget/Button;
    new-instance v7, Lnl/frankkie/ouyalauncher/StartActivity$1;

    invoke-direct {v7, p0}, Lnl/frankkie/ouyalauncher/StartActivity$1;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v7, Lnl/frankkie/ouyalauncher/StartActivity$2;

    invoke-direct {v7, p0}, Lnl/frankkie/ouyalauncher/StartActivity$2;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v7, Lnl/frankkie/ouyalauncher/StartActivity$3;

    invoke-direct {v7, p0}, Lnl/frankkie/ouyalauncher/StartActivity$3;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    new-instance v7, Lnl/frankkie/ouyalauncher/StartActivity$4;

    invoke-direct {v7, p0}, Lnl/frankkie/ouyalauncher/StartActivity$4;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v7, Lnl/frankkie/ouyalauncher/StartActivity$5;

    invoke-direct {v7, p0}, Lnl/frankkie/ouyalauncher/StartActivity$5;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance v7, Lnl/frankkie/ouyalauncher/StartActivity$6;

    invoke-direct {v7, p0}, Lnl/frankkie/ouyalauncher/StartActivity$6;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v7, Lnl/frankkie/ouyalauncher/StartActivity$7;

    invoke-direct {v7, p0}, Lnl/frankkie/ouyalauncher/StartActivity$7;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method private initWidgets()V
    .locals 5

    .prologue
    .line 66
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x2862

    invoke-direct {v2, p0, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "firstTimeWidgets"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    .local v0, "firstRun":Z
    if-eqz v0, :cond_0

    .line 70
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 71
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firstTimeWidgets"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    :cond_0
    return-void
.end method

.method private showMenuDialog()V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Menu"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    .end local v1    # "items":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "Launcher Settings"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Running Applications"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Advanced Settings"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Add Widget"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Remove all Widgets"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Turn Off"

    aput-object v3, v1, v2
    
    const/4 v2, 0x6

    const-string v3, "Webserver"

    aput-object v3, v1, v2

    .line 315
    .restart local v1    # "items":[Ljava/lang/String;
    new-instance v2, Lnl/frankkie/ouyalauncher/StartActivity$8;

    invoke-direct {v2, p0}, Lnl/frankkie/ouyalauncher/StartActivity$8;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void
.end method

.method private startDiscover()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;Lnl/frankkie/ouyalauncher/StartActivity$1;)V

    .line 250
    .local v0, "task":Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void
.end method

.method private startImageCaching()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lnl/frankkie/ouyalauncher/MakeImageCache;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/MakeImageCache;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "task":Lnl/frankkie/ouyalauncher/MakeImageCache;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/MakeImageCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method

.method private startWebserver()V
    .locals 2

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lnl/frankkie/ouyalauncher/WebserverActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method private turnOuyaOff()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Turn off console?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 386
    const-string v1, "Yes (Standby)"

    new-instance v2, Lnl/frankkie/ouyalauncher/StartActivity$9;

    invoke-direct {v2, p0}, Lnl/frankkie/ouyalauncher/StartActivity$9;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    const-string v1, "Yes (Really off)"

    new-instance v2, Lnl/frankkie/ouyalauncher/StartActivity$10;

    invoke-direct {v2, p0}, Lnl/frankkie/ouyalauncher/StartActivity$10;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    const-string v1, "No"

    new-instance v2, Lnl/frankkie/ouyalauncher/StartActivity$11;

    invoke-direct {v2, p0}, Lnl/frankkie/ouyalauncher/StartActivity$11;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 406
    return-void
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    if-eqz p1, :invalid_widget

    .line 84
    const-string v6, "appWidgetId"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "appWidgetId":I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 88
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 90
    .local v0, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :invalid_widget

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 92
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lnl/frankkie/ouyalauncher/Util;->logAddWidgetConfigure(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v4

    .line 100
    .local v4, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    new-instance v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    invoke-direct {v3}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;-><init>()V

    .line 101
    .local v3, "databaseAppWidget":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;
    iput-object v0, v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 102
    iput v1, v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->appWidgetId:I

    .line 103
    invoke-virtual {v3}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->OnInsert()V

    .line 104
    invoke-virtual {p0, v1, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->placeWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 105
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lnl/frankkie/ouyalauncher/Util;->logAddWidget(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, -0x1
    iput v6, p0, Lnl/frankkie/ouyalauncher/StartActivity;->pendingAppWidgetId:I

    goto :goto_0

    :invalid_widget
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->cancelPendingAppWidget()V
    goto :goto_0
.end method

.method public cancelPendingAppWidget()V
    .locals 2

    iget v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->pendingAppWidgetId:I
    const/4 v1, -0x1
    if-ltz v0, :clear_pending_widget

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;
    if-eqz v1, :clear_pending_widget

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :clear_pending_widget
    const/4 v0, -0x1
    iput v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->pendingAppWidgetId:I
    return-void
.end method

.method public addWidget()V
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->pendingAppWidgetId:I

    .line 78
    .local v0, "appWidgetId":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 121
    if-eq p2, v7, :cond_1

    const/16 v5, 0x9
    if-ne p1, v5, :check_config_cancel
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->cancelPendingAppWidget()V
    goto :cond_0

    :check_config_cancel
    const/4 v5, 0x5
    if-ne p1, v5, :cond_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->cancelPendingAppWidget()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/16 v5, 0x9

    if-ne p1, v5, :cond_2

    .line 125
    if-eqz p3, :cancel_result_widget
    invoke-virtual {p0, p3}, Lnl/frankkie/ouyalauncher/StartActivity;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_2
    const/4 v5, 0x5

    if-ne p1, v5, :cond_0

    .line 128
    if-eqz p3, :cancel_result_widget

    const-string v5, "BAXY"

    const-string v6, "requestCode == REQUEST_CREATE_APPWIDGET"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "appWidgetId":I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 131
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 132
    .local v0, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v4

    .line 133
    .local v4, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    new-instance v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    invoke-direct {v3}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;-><init>()V

    .line 134
    .local v3, "databaseAppWidget":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;
    iput-object v0, v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 135
    iput v1, v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->appWidgetId:I

    .line 136
    invoke-virtual {v3}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->OnInsert()V

    .line 137
    invoke-virtual {p0, v1, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->placeWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 v5, -0x1
    iput v5, p0, Lnl/frankkie/ouyalauncher/StartActivity;->pendingAppWidgetId:I

    goto :goto_0

    :cancel_result_widget
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->cancelPendingAppWidget()V
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lnl/frankkie/ouyalauncher/StartActivity;->     currentInstance:Lnl/frankkie/ouyalauncher/StartActivity;

    .line 58
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->init(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->initUI()V

    new-instance v0, Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->batteryReceiver:Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity;->batteryReceiver:Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;

    invoke-virtual {p0, v1, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    iput-object p0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->context:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->startImageCaching()V

    .line 62
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->initWidgets()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->updateDate(Landroid/app/Activity;)V
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->batteryReceiver:Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;

    if-eqz v0, :super_destroy

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :super_destroy
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x52

    const/4 v6, 0x1

    .line 276
    const/4 v7, 0x5

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    .line 282
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

    .line 283
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 284
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 300
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v6

    .line 282
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_3

    .line 289
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->turnOuyaOff()V

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-eq v7, v9, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 294
    :cond_4
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->showMenuDialog()V

    goto :goto_1

    .line 299
    :cond_5
    invoke-static {p1, p2}, Ltv/ouya/console/api/OuyaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 300
    .local v1, "handled":Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 276
    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x16
        0x60
    .end array-data
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 256
    const/4 v6, 0x5

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 262
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

    .line 263
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 264
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 270
    .end local v2    # "i":I
    :goto_1
    return v6

    .line 262
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "i":I
    :cond_1
    invoke-static {p1, p2}, Ltv/ouya/console/api/OuyaController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 270
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

    .line 256
    nop

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x16
        0x60
    .end array-data
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 404
    const-string v1, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

  
    .line 411
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 412
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/StartActivity;->refreshWidgets()V

    .line 413
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 459
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 461
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 463
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 464
    return-void
.end method

.method public placeWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 110
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 112
    .local v1, "v":Landroid/view/View;
    .line 113
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public refreshWidgets()V
    .locals 9

    .prologue
    const v6, 0x7f090022
    invoke-virtual {p0, v6}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;
    move-result-object v6
    check-cast v6, Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 439
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setClock(Landroid/app/Activity;)V

    .line 440
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 442
    invoke-static {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v4

    .line 443
    .local v4, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v6, v4, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT id FROM appwidget"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 444
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 445
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 447
    .local v5, "id":I
    new-instance v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    invoke-direct {v3, v5}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;-><init>(I)V

    .line 448
    .local v3, "databaseAppWidget":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;
    invoke-virtual {v3}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->OnLoad()V

    .line 449
    iget v6, v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->appWidgetId:I

    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 450
    .local v0, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    iput-object v0, v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 451
    iget v6, v3, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->appWidgetId:I

    invoke-virtual {p0, v6, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->placeWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    .line 453
    .end local v0    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "databaseAppWidget":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;
    .end local v5    # "id":I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 454
    return-void
.end method

.method public removeAllWidgets()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 416
    const v8, 0x7f090022

    invoke-virtual {p0, v8}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 417
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 419
    const v8, 0x7f090023

    invoke-virtual {p0, v8}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 421
    invoke-static {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v4

    .line 422
    .local v4, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v8, v4, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT id FROM appwidget"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 423
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 425
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 426
    .local v6, "id":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    .end local v6    # "id":I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 429
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 430
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 431
    .restart local v6    # "id":I
    new-instance v2, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    invoke-direct {v2, v6}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;-><init>(I)V

    .line 433
    .local v2, "databaseAppWidget":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;
    iget-object v8, p0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v8, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 434
    invoke-virtual {v2}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->OnDelete()V

    goto :goto_1

    .line 436
    .end local v2    # "databaseAppWidget":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;
    .end local v6    # "id":I
    :cond_1
    return-void
.end method

.method public toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 518
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lnl/frankkie/ouyalauncher/StartActivity$12;

    invoke-direct {v1, p0, p1, p2}, Lnl/frankkie/ouyalauncher/StartActivity$12;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method



