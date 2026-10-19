.class Lnl/frankkie/ouyalauncher/SettingsActivity$9;
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

    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$9;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lnl/frankkie/ouyalauncher/StartActivity;->currentInstance:Lnl/frankkie/ouyalauncher/StartActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnl/frankkie/ouyalauncher/StartActivity;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    iput v2, v0, Lnl/frankkie/ouyalauncher/StartActivity;->pendingAppWidgetId:I

    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$9;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    const/16 v2, 0x9

    invoke-virtual {v1, v3, v2}, Lnl/frankkie/ouyalauncher/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
