.class Lnl/frankkie/ouyalauncher/SettingsActivity$3;
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
    .line 81
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$3;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$3;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "logoType"

    const-string v3, "OUYA"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$3;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-static {v1}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 87
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$3;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    const-string v2, "OUYA"

    invoke-static {v1, v2}, Lnl/frankkie/ouyalauncher/Util;->logSetLogo(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-void
.end method
