.class Lnl/frankkie/ouyalauncher/SettingsActivity$6$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/SettingsActivity$6;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/frankkie/ouyalauncher/SettingsActivity$6;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/SettingsActivity$6;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6$1;->this$1:Lnl/frankkie/ouyalauncher/SettingsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6$1;->this$1:Lnl/frankkie/ouyalauncher/SettingsActivity$6;

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/SettingsActivity$6;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "betaEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6$1;->this$1:Lnl/frankkie/ouyalauncher/SettingsActivity$6;

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/SettingsActivity$6;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/Util;->logBetaEnable(Landroid/content/Context;)V

    .line 131
    return-void
.end method
