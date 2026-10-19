.class public Lnl/wotuu/database/ThreadingUtils;
.super Ljava/lang/Object;
.source "ThreadingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowToastOnUiThread(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 22
    new-instance v0, Lnl/wotuu/database/ThreadingUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lnl/wotuu/database/ThreadingUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 28
    .local v0, "mUpdateResults":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public static varargs StartASyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "task"    # Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "params":[Ljava/lang/Object;, "[TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 39
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
