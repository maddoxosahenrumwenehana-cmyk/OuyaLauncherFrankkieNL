.class Lnl/frankkie/ouyalauncher/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainActivity;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$2;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$2;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-direct {v0, v1}, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;)V

    .line 197
    .local v0, "task":Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method
