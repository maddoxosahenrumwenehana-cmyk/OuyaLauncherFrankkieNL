.class Lnl/frankkie/ouyalauncher/StartActivity$12;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/StartActivity;->toast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/StartActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/StartActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/StartActivity$12;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/StartActivity$12;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnl/frankkie/ouyalauncher/StartActivity$12;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$12;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity$12;->val$s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 569
    return-void
.end method
