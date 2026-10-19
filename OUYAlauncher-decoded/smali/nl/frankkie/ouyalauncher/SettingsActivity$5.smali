.class Lnl/frankkie/ouyalauncher/SettingsActivity$5;
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
    .line 102
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$5;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$5;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "clockType"

    const-string v3, "digital"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$5;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-static {v1}, Lnl/frankkie/ouyalauncher/Util;->setClock(Landroid/app/Activity;)V

    .line 108
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$5;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    const-string v2, "digital"

    invoke-static {v1, v2}, Lnl/frankkie/ouyalauncher/Util;->logSetClock(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void
.end method
