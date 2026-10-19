.class Lnl/frankkie/ouyalauncher/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/SettingsActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$7;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$7;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    const-class v2, Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$7;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-virtual {v1, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
