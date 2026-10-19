.class Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;
.super Landroid/os/AsyncTask;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TurnOffAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
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
    .line 511
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnl/frankkie/ouyalauncher/StartActivity;Lnl/frankkie/ouyalauncher/StartActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnl/frankkie/ouyalauncher/StartActivity;
    .param p2, "x1"    # Lnl/frankkie/ouyalauncher/StartActivity$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 511
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 515
    aget-object v6, p1, v8

    const-string v7, "off"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 517
    .local v2, "reallyOff":Z
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->available()Z

    move-result v4

    .line 518
    .local v4, "suAvailable":Z
    if-eqz v4, :cond_2

    .line 521
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v6}, Lnl/frankkie/ouyalauncher/Util;->logTurnOff(Landroid/content/Context;)V

    .line 522
    if-nez v2, :cond_0

    .line 523
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "am broadcast --user 0 -a tv.ouya.console.action.TURN_OFF"

    aput-object v7, v6, v8

    invoke-static {v6}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    .line 557
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 527
    :cond_0
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "am start -a android.intent.action.ACTION_REQUEST_SHUTDOWN -f 0x10000000 --ez android.intent.extra.KEY_CONFIRM false"

    aput-object v7, v6, v8

    invoke-static {v6}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 546
    .local v5, "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_1

    .line 548
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 552
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    const-string v6, "BAXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BAXY\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v2, :no_root

    iget-object v6, p0, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.extra.KEY_CONFIRM"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v6, v7}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_shutdown

    goto :goto_0

    :catch_shutdown
    move-exception v7

    const-string v8, "BAXY"

    const-string v9, "Direct system shutdown denied: launcher requires system privilege or root"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    iget-object v8, v7, Lnl/frankkie/ouyalauncher/StartActivity;->context:Landroid/content/Context;

    const-string v9, "Shutdown needs root or system privilege; Android Settings cannot grant this permission."

    invoke-virtual {v7, v8, v9}, Lnl/frankkie/ouyalauncher/StartActivity;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :no_root
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    iget-object v7, v7, Lnl/frankkie/ouyalauncher/StartActivity;->context:Landroid/content/Context;

    const-string v8, "Standby needs root access."

    invoke-virtual {v6, v7, v8}, Lnl/frankkie/ouyalauncher/StartActivity;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
