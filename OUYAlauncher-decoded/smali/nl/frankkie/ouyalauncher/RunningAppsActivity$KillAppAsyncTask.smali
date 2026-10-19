.class Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;
.super Landroid/os/AsyncTask;
.source "RunningAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/RunningAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KillAppAsyncTask"
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
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/RunningAppsActivity;


# direct methods
.method private constructor <init>(Lnl/frankkie/ouyalauncher/RunningAppsActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/RunningAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnl/frankkie/ouyalauncher/RunningAppsActivity;Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnl/frankkie/ouyalauncher/RunningAppsActivity;
    .param p2, "x1"    # Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/RunningAppsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 284
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/RunningAppsActivity$KillAppAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 289
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->available()Z

    move-result v0

    .line 290
    .local v0, "suAvailable":Z
    if-eqz v0, :cond_0

    .line 296
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am kill --user 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 299
    .local v1, "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    .end local v1    # "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
