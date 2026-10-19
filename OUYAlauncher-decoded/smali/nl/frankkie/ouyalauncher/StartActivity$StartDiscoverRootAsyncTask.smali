.class Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;
.super Landroid/os/AsyncTask;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartDiscoverRootAsyncTask"
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
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/StartActivity;


# direct methods
.method private constructor <init>(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnl/frankkie/ouyalauncher/StartActivity;Lnl/frankkie/ouyalauncher/StartActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;
    .param p2, "x1"    # Lnl/frankkie/ouyalauncher/StartActivity$1;

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 466
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 471
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->available()Z

    move-result v2

    .line 472
    .local v2, "suAvailable":Z
    if-eqz v2, :cond_0

    .line 475
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v3}, Lnl/frankkie/ouyalauncher/Util;->logStartDiscover(Landroid/content/Context;)V

    .line 476
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "am start --user 0 -n tv.ouya.console/tv.ouya.console.launcher.store.adapter.DiscoverActivity"

    aput-object v5, v3, v4

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    .line 489
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 480
    :cond_0
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    iget-object v4, p0, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    iget-object v4, v4, Lnl/frankkie/ouyalauncher/StartActivity;->context:Landroid/content/Context;

    const-string v5, "Root is not Available.. Starting Stock Launcher"

    invoke-virtual {v3, v4, v5}, Lnl/frankkie/ouyalauncher/StartActivity;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 481
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "tv.ouya.console"

    const-string v4, "tv.ouya.console.launcher.OverlayMenuActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    :try_start_0
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/StartActivity$StartDiscoverRootAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    iget-object v3, v3, Lnl/frankkie/ouyalauncher/StartActivity;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
