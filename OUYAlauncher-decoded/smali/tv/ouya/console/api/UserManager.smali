.class public Ltv/ouya/console/api/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/UserManager$1;,
        Ltv/ouya/console/api/UserManager$AddAccountCallback;,
        Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;,
        Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;,
        Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;,
        Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;,
        Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;,
        Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;,
        Ltv/ouya/console/api/UserManager$RequestUserAddsAccountRunnable;,
        Ltv/ouya/console/api/UserManager$RequestUsernameRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OUYAUM"

.field private static instance:Ltv/ouya/console/api/UserManager;


# instance fields
.field private bindRequestHasBeenMade:Z

.field private context:Landroid/content/Context;

.field private pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Ltv/ouya/console/api/UserManager;->instance:Ltv/ouya/console/api/UserManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/UserManager;->pendingRequests:Ljava/util/List;

    .line 72
    iput-object p1, p0, Ltv/ouya/console/api/UserManager;->context:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/api/UserManager;

    .prologue
    .line 31
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Ltv/ouya/console/api/UserManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Ltv/ouya/console/api/UserManager;->instance:Ltv/ouya/console/api/UserManager;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Ltv/ouya/console/api/UserManager;->instance:Ltv/ouya/console/api/UserManager;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ltv/ouya/console/api/UserManager;

    invoke-direct {v0, p0}, Ltv/ouya/console/api/UserManager;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private runRequest(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "requestRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 143
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "OUYAUM"

    const-string v1, "Dropping request due to context having been closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Ltv/ouya/console/api/UserManager;->ensureServiceIsBound()V

    .line 148
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static setInstance(Ltv/ouya/console/api/UserManager;)V
    .locals 0
    .param p0, "instance"    # Ltv/ouya/console/api/UserManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    sput-object p0, Ltv/ouya/console/api/UserManager;->instance:Ltv/ouya/console/api/UserManager;

    .line 64
    return-void
.end method


# virtual methods
.method public bindRequestHasBeenMade()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Ltv/ouya/console/api/UserManager;->bindRequestHasBeenMade:Z

    return v0
.end method

.method ensureServiceIsBound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 205
    iget-boolean v1, p0, Ltv/ouya/console/api/UserManager;->bindRequestHasBeenMade:Z

    if-nez v1, :cond_0

    .line 206
    const-string v1, "OUYAUM"

    const-string v2, "Binding to UserService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tv.ouya"

    const-string v2, "tv.ouya.console.service.user.UserService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Ltv/ouya/console/api/UserManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 210
    iput-boolean v3, p0, Ltv/ouya/console/api/UserManager;->bindRequestHasBeenMade:Z

    .line 212
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method getRemoteService()Ltv/ouya/console/internal/IUserServiceDefinition;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 181
    const-string v0, "OUYAUM"

    const-string v1, "Successfully bound to UserService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/UserManager;->remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;

    .line 183
    :goto_0
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->pendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/ouya/console/api/UserManager;->remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/UserManager;->bindRequestHasBeenMade:Z

    .line 199
    return-void
.end method

.method public requestAddLike(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public requestGetLikes(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public requestRedeemVoucher(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "voucher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public requestRemoveLike(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public requestUserAddCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "cvn"    # Ljava/lang/String;
    .param p5, "expiry_month"    # Ljava/lang/String;
    .param p6, "expiry_year"    # Ljava/lang/String;
    .param p7, "zip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p8, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public requestUserAddsAccount(Landroid/app/Activity;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestUserAddsAccountRunnable;

    invoke-direct {v0, p0, p2}, Ltv/ouya/console/api/UserManager$RequestUserAddsAccountRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public requestUserGetCreditCardInfo(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ltv/ouya/console/api/CreditCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/CreditCardInfo;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public requestUsername(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "consoleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "usernameListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/UserManager$RequestUsernameRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/UserManager$RequestUsernameRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/UserManager;->runRequest(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Ltv/ouya/console/api/UserManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 84
    iput-object v1, p0, Ltv/ouya/console/api/UserManager;->remoteService:Ltv/ouya/console/internal/IUserServiceDefinition;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/UserManager;->bindRequestHasBeenMade:Z

    .line 87
    :cond_0
    iput-object v1, p0, Ltv/ouya/console/api/UserManager;->context:Landroid/content/Context;

    .line 89
    :cond_1
    return-void
.end method
