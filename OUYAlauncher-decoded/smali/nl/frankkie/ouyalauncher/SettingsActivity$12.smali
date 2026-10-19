.class Lnl/frankkie/ouyalauncher/SettingsActivity$12;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

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
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$12;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$12;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v1
    const-string v2, "logoType"
    const-string v3, "MADOS"
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$12;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;
    invoke-static {v1}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$12;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;
    const-string v2, "MadOS"
    invoke-static {v1, v2}, Lnl/frankkie/ouyalauncher/Util;->logSetLogo(Landroid/content/Context;Ljava/lang/String;)V
    return-void
.end method
