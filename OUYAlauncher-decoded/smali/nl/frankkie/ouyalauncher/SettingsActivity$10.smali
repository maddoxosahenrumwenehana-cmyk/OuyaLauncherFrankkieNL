.class Lnl/frankkie/ouyalauncher/SettingsActivity$10;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/SettingsActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

.method constructor <init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$10;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lnl/frankkie/ouyalauncher/StartActivity;->currentInstance:Lnl/frankkie/ouyalauncher/StartActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->removeAllWidgets()V

    :cond_0
    return-void
.end method