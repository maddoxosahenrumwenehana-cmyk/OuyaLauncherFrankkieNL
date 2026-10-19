.class public Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartActivity.java"

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/StartActivity;

.method public constructor <init>(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    const-string v0, "level"
    const/4 v1, -0x1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v2
    const-string v0, "scale"
    const/16 v1, 0x64
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v3
    if-lez v3, :done
    mul-int/lit8 v2, v2, 0x64
    div-int/2addr v2, v3
    const-string v0, "status"
    const/4 v1, -0x1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v4
    iget-object v5, p0, Lnl/frankkie/ouyalauncher/StartActivity$BatteryReceiver;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;
    invoke-virtual {v5}, Lnl/frankkie/ouyalauncher/StartActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "battery_status"
    const-string v3, "id"
    invoke-virtual {v5}, Lnl/frankkie/ouyalauncher/StartActivity;->getPackageName()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v0, v1, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    invoke-virtual {v5, v1}, Lnl/frankkie/ouyalauncher/StartActivity;->findViewById(I)Landroid/view/View;
    move-result-object v7
    check-cast v7, Landroid/widget/TextView;
    if-eqz v7, :done
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const/4 v1, 0x2
    if-eq v4, v1, :charging
    const/4 v1, 0x5
    if-ne v4, v1, :normal
    :charging
    const-string v1, "CHG "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const v1, -0x8c287f
    goto :label
    :normal
    const/16 v1, 0x14
    if-ge v2, v1, :gray
    const v1, -0xa49c
    goto :label
    :gray
    const v1, -0x474138
    :label
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "%"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :done
    return-void
.end method
