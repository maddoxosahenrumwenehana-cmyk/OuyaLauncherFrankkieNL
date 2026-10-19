.class Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$1;
.super Ljava/lang/Object;
.source "Updater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->onPostExecute(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$1;->this$1:Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$1;->this$1:Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    const-string v1, "https://raw.github.com/frankkienl/OuyaLauncherFrankkieNL/master/FrankkieOuyaLauncher/FrankkieOuyaLauncherBETA.apk"

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/Updater;->downloadViaAsyncTask(Ljava/lang/String;)V

    .line 121
    return-void
.end method
