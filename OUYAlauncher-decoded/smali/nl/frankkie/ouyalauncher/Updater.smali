.class public Lnl/frankkie/ouyalauncher/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;,
        Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;
    }
.end annotation


# static fields
.field public static final apkName:Ljava/lang/String; = "FrankkieOuyaLauncher.apk"

.field public static final apkUrl:Ljava/lang/String; = "https://raw.github.com/frankkienl/OuyaLauncherFrankkieNL/master/FrankkieOuyaLauncher/FrankkieOuyaLauncher.apk"

.field public static final apkUrlBeta:Ljava/lang/String; = "https://raw.github.com/frankkienl/OuyaLauncherFrankkieNL/master/FrankkieOuyaLauncher/FrankkieOuyaLauncherBETA.apk"

.field private static instance:Lnl/frankkie/ouyalauncher/Updater; = null

.field public static final versionJsonUrl:Ljava/lang/String; = "https://raw.github.com/frankkienl/OuyaLauncherFrankkieNL/master/version.json"


# instance fields
.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/Updater;->handler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lnl/frankkie/ouyalauncher/Updater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lnl/frankkie/ouyalauncher/Updater;->instance:Lnl/frankkie/ouyalauncher/Updater;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lnl/frankkie/ouyalauncher/Updater;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/Updater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnl/frankkie/ouyalauncher/Updater;->instance:Lnl/frankkie/ouyalauncher/Updater;

    .line 60
    :cond_0
    sget-object v0, Lnl/frankkie/ouyalauncher/Updater;->instance:Lnl/frankkie/ouyalauncher/Updater;

    return-object v0
.end method


# virtual methods
.method public downloadViaAsyncTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "which"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/Updater;)V

    .line 168
    .local v0, "task":Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method public startUpdateCheck()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/Updater;)V

    .line 49
    .local v0, "task":Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater;->handler:Landroid/os/Handler;

    new-instance v1, Lnl/frankkie/ouyalauncher/Updater$1;

    invoke-direct {v1, p0, p1}, Lnl/frankkie/ouyalauncher/Updater$1;-><init>(Lnl/frankkie/ouyalauncher/Updater;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
