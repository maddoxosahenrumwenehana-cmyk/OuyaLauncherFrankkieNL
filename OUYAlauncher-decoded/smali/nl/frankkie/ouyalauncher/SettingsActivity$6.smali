.class Lnl/frankkie/ouyalauncher/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$betaToggleButton:Landroid/widget/ToggleButton;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/SettingsActivity;Landroid/content/SharedPreferences;Landroid/widget/ToggleButton;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6;->val$betaToggleButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 122
    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Are you sure?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    const-string v1, "Are you sure you want enable BETA?\nThe BETA-version Will have bugs and Strange Features!\nIf you are not sure you can handle that stick with stable releases.\nAlso: There is no turning back! (Or you will need to reinstall BAXY)"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    const-string v1, "Enable BETA"

    new-instance v2, Lnl/frankkie/ouyalauncher/SettingsActivity$6$1;

    invoke-direct {v2, p0}, Lnl/frankkie/ouyalauncher/SettingsActivity$6$1;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    const-string v1, "No thank you"

    new-instance v2, Lnl/frankkie/ouyalauncher/SettingsActivity$6$2;

    invoke-direct {v2, p0}, Lnl/frankkie/ouyalauncher/SettingsActivity$6$2;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 145
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$6;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "betaEnabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
