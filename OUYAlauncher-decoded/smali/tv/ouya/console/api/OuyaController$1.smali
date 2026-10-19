.class final Ltv/ouya/console/api/OuyaController$1;
.super Landroid/content/BroadcastReceiver;
.source "OuyaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/ouya/console/api/OuyaController;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tv.ouya.controller.added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    const-string v4, "DEVICE_ID"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "deviceId":I
    const-string v4, "PLAYER_NUM"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 181
    .local v3, "playerNum":I
    if-ltz v3, :cond_0

    if-lt v3, v7, :cond_1

    .line 204
    .end local v1    # "deviceId":I
    .end local v3    # "playerNum":I
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v1    # "deviceId":I
    .restart local v3    # "playerNum":I
    :cond_1
    sget-object v4, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 186
    const-string v4, "OuyaController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller already exists for player "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(new device id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", prev device id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ltv/ouya/console/api/OuyaController;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    sget-object v4, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    new-instance v5, Ltv/ouya/console/api/OuyaController;

    invoke-direct {v5, v1}, Ltv/ouya/console/api/OuyaController;-><init>(I)V

    aput-object v5, v4, v3

    goto :goto_0

    .line 193
    .end local v1    # "deviceId":I
    .end local v3    # "playerNum":I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tv.ouya.controller.removed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const-string v4, "DEVICE_ID"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 196
    .restart local v1    # "deviceId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_0

    .line 197
    sget-object v4, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v0, v4, v2

    .line 198
    .local v0, "controller":Ltv/ouya/console/api/OuyaController;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltv/ouya/console/api/OuyaController;->getDeviceId()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 199
    sget-object v4, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    goto :goto_0

    .line 196
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
