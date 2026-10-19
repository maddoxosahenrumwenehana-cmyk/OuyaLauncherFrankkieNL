.class Lnl/frankkie/ouyalauncher/StartActivity$9;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/StartActivity;->turnOuyaOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/StartActivity;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/StartActivity$9;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 389
    new-instance v0, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity$9;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;-><init>(Lnl/frankkie/ouyalauncher/StartActivity;Lnl/frankkie/ouyalauncher/StartActivity$1;)V

    .line 390
    .local v0, "task":Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "standby"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/StartActivity$TurnOffAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 391
    return-void
.end method
