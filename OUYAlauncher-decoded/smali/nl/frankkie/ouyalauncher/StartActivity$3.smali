.class Lnl/frankkie/ouyalauncher/StartActivity$3;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/StartActivity;->initUI()V
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
    .line 204
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/StartActivity$3;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity$3;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    const-class v2, Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 209
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity$3;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v1, v3}, Lnl/frankkie/ouyalauncher/Util;->logGoToApplist(Landroid/content/Context;I)V

    .line 211
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/StartActivity$3;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-virtual {v1, v0}, Lnl/frankkie/ouyalauncher/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
