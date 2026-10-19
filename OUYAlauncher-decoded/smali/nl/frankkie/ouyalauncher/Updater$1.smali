.class Lnl/frankkie/ouyalauncher/Updater$1;
.super Ljava/lang/Object;
.source "Updater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/Updater;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/Updater;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/Updater;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/Updater$1;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/Updater$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$1;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/Updater$1;->val$s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    return-void
.end method
