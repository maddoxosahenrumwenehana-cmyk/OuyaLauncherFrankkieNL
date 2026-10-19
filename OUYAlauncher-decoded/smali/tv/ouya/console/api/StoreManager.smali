.class public Ltv/ouya/console/api/StoreManager;
.super Ljava/lang/Object;
.source "StoreManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/StoreManager$RequestSystemMessageRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestCachedUserInfoRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestUserInfoRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestRegisterConsoleRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestResendEmailRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestDeveloperAppsListRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestDeregisterConsoleRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestCreateNewUserRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestAppDownloadUrlRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestStoreStructureRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestTagListRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestAppsListRunnable;,
        Ltv/ouya/console/api/StoreManager$RequestAppInfoRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OUYASM"

.field private static instance:Ltv/ouya/console/api/StoreManager;


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

.field private remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/StoreManager;->pendingRequests:Ljava/util/List;

    .line 60
    iput-object p1, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Ltv/ouya/console/api/StoreManager;)Ltv/ouya/console/internal/IStoreServiceDefinition;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/api/StoreManager;

    .prologue
    .line 25
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Ltv/ouya/console/api/StoreManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Ltv/ouya/console/api/StoreManager;->instance:Ltv/ouya/console/api/StoreManager;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Ltv/ouya/console/api/StoreManager;->instance:Ltv/ouya/console/api/StoreManager;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ltv/ouya/console/api/StoreManager;

    invoke-direct {v0, p0}, Ltv/ouya/console/api/StoreManager;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private runRequest(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "requestRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 167
    invoke-virtual {p0}, Ltv/ouya/console/api/StoreManager;->ensureServiceIsBound()V

    .line 168
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static setInstance(Ltv/ouya/console/api/StoreManager;)V
    .locals 0
    .param p0, "instance"    # Ltv/ouya/console/api/StoreManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    sput-object p0, Ltv/ouya/console/api/StoreManager;->instance:Ltv/ouya/console/api/StoreManager;

    .line 52
    return-void
.end method


# virtual methods
.method public bindRequestHasBeenMade()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    iget-boolean v0, p0, Ltv/ouya/console/api/StoreManager;->bindRequestHasBeenMade:Z

    return v0
.end method

.method ensureServiceIsBound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 225
    iget-object v1, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 226
    const-string v1, "OUYASM"

    const-string v2, "Dropping request because connect has been shut down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-boolean v1, p0, Ltv/ouya/console/api/StoreManager;->bindRequestHasBeenMade:Z

    if-nez v1, :cond_0

    .line 230
    const-string v1, "inAppPurchase"

    const-string v2, "Binding to StoreService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tv.ouya"

    const-string v2, "tv.ouya.console.service.store.StoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 234
    iput-boolean v3, p0, Ltv/ouya/console/api/StoreManager;->bindRequestHasBeenMade:Z

    goto :goto_0
.end method

.method getRemoteService()Ltv/ouya/console/internal/IStoreServiceDefinition;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Ltv/ouya/console/api/StoreManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 201
    const-string v0, "inAppPurchase"

    const-string v1, "Successfully bound to IapService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {p2}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStoreServiceDefinition;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/StoreManager;->remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;

    .line 203
    :goto_0
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->pendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/ouya/console/api/StoreManager;->remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/StoreManager;->bindRequestHasBeenMade:Z

    .line 219
    return-void
.end method

.method public requestAppDownloadUrl(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
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
    .line 101
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null uuid specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestAppDownloadUrlRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestAppDownloadUrlRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public requestAppInfo(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ltv/ouya/console/api/store/AppDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/store/AppDetails;>;"
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null uuid specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestAppInfoRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestAppInfoRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public requestAppList(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/AppDescription;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/List<Ltv/ouya/console/api/store/AppDescription;>;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public requestAppList(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/AppDescription;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/List<Ltv/ouya/console/api/store/AppDescription;>;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestAppsListRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/StoreManager$RequestAppsListRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public requestCachedUserInfo(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ltv/ouya/console/api/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/UserInfo;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestCachedUserInfoRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/StoreManager$RequestCachedUserInfoRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public requestCreateNewUser(Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "userInfo"    # Ltv/ouya/console/api/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/UserInfo;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestCreateNewUserRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestCreateNewUserRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public requestDeregisterConsole(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "consoleId"    # Ljava/lang/String;
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
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestDeregisterConsoleRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestDeregisterConsoleRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public requestDeveloperAppList(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/AppDescription;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/List<Ltv/ouya/console/api/store/AppDescription;>;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestDeveloperAppsListRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/StoreManager$RequestDeveloperAppsListRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public requestRegisterConsole(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestRegisterConsoleRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/StoreManager$RequestRegisterConsoleRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public requestResendEmail(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;
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
    .line 143
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestResendEmailRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestResendEmailRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public requestStoreStructure(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ltv/ouya/console/api/store/StoreSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/store/StoreSection;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestStoreStructureRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/StoreManager$RequestStoreStructureRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public requestSystemMessage(Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "buildNumber"    # Ljava/lang/String;
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
    .line 163
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestSystemMessageRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestSystemMessageRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public requestTagList(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/Tag;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/List<Ltv/ouya/console/api/store/Tag;>;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestTagListRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/StoreManager$RequestTagListRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public requestUpdateUserInfo(Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "userInfo"    # Ltv/ouya/console/api/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/UserInfo;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public requestUserInfo(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ltv/ouya/console/api/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/UserInfo;>;"
    new-instance v0, Ltv/ouya/console/api/StoreManager$RequestUserInfoRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/StoreManager$RequestUserInfoRunnable;-><init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/StoreManager;->runRequest(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 85
    iput-object v1, p0, Ltv/ouya/console/api/StoreManager;->remoteService:Ltv/ouya/console/internal/IStoreServiceDefinition;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/StoreManager;->bindRequestHasBeenMade:Z

    .line 88
    :cond_0
    iput-object v1, p0, Ltv/ouya/console/api/StoreManager;->context:Landroid/content/Context;

    .line 90
    :cond_1
    return-void
.end method
