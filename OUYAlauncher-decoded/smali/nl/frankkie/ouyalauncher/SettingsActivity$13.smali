.class Lnl/frankkie/ouyalauncher/SettingsActivity$13;
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
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$13;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$13;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v1
    const-string v2, "dateFormat"
    const-string v3, "dd.MM.yyyy"
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3

    const-string v4, "dd.MM.yyyy"
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :check_us
    const-string v4, "MM/dd/yyyy"
    goto :save_format
    :check_us
    const-string v4, "MM/dd/yyyy"
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :check_iso
    const-string v4, "yyyy-MM-dd"
    goto :save_format
    :check_iso
    const-string v4, "yyyy-MM-dd"
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :reset_format
    const-string v4, "dd/MM/yyyy"
    goto :save_format
    :reset_format
    const-string v4, "dd.MM.yyyy"

    :save_format
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v5
    const-string v6, "dateFormat"
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v5
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Date format: "
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    check-cast p1, Landroid/widget/Button;
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method
