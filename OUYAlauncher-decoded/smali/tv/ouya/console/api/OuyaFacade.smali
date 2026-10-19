.class public Ltv/ouya/console/api/OuyaFacade;
.super Ljava/lang/Object;
.source "OuyaFacade.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/OuyaFacade$1;,
        Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;,
        Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;,
        Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;,
        Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;,
        Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OUYAF"

.field static final ODK_VERSION_NUMBER:I = 0x3e

.field private static final USER_DATA_COLUMNS:[Ljava/lang/String;

.field private static instance:Ltv/ouya/console/api/OuyaFacade;


# instance fields
.field private bindRequestHasBeenMade:Z

.field private context:Landroid/content/Context;

.field private developerId:Ljava/lang/String;

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

.field private remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Ltv/ouya/console/api/OuyaFacade;->USER_DATA_COLUMNS:[Ljava/lang/String;

    .line 35
    new-instance v0, Ltv/ouya/console/api/OuyaFacade;

    invoke-direct {v0}, Ltv/ouya/console/api/OuyaFacade;-><init>()V

    sput-object v0, Ltv/ouya/console/api/OuyaFacade;->instance:Ltv/ouya/console/api/OuyaFacade;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    .line 72
    const-string v0, "OUYAF"

    const-string v1, "ODK version number: 62"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method static synthetic access$100(Ltv/ouya/console/api/OuyaFacade;)Ltv/ouya/console/internal/IIapServiceDefinition;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/api/OuyaFacade;

    .prologue
    .line 24
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    return-object v0
.end method

.method static synthetic access$200(Ltv/ouya/console/api/OuyaFacade;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/api/OuyaFacade;

    .prologue
    .line 24
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->developerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Ltv/ouya/console/api/OuyaFacade;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Ltv/ouya/console/api/OuyaFacade;->instance:Ltv/ouya/console/api/OuyaFacade;

    return-object v0
.end method

.method public static getOdkVersionNumber()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x3e

    return v0
.end method

.method private runRequest(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "requestRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 235
    invoke-virtual {p0}, Ltv/ouya/console/api/OuyaFacade;->ensureServiceIsBound()V

    .line 236
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static setInstance(Ltv/ouya/console/api/OuyaFacade;)V
    .locals 0
    .param p0, "instance"    # Ltv/ouya/console/api/OuyaFacade;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    sput-object p0, Ltv/ouya/console/api/OuyaFacade;->instance:Ltv/ouya/console/api/OuyaFacade;

    .line 64
    return-void
.end method


# virtual methods
.method public bindRequestHasBeenMade()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    return v0
.end method

.method ensureServiceIsBound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 293
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 294
    const-string v1, "OUYAF"

    const-string v2, "Dropping request because connect has been shut down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-boolean v1, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    if-nez v1, :cond_0

    .line 298
    const-string v1, "inAppPurchase"

    const-string v2, "Binding to IapService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tv.ouya"

    const-string v2, "tv.ouya.console.service.iap.IapService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 302
    iput-boolean v3, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    goto :goto_0
.end method

.method public getGameData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Ltv/ouya/console/api/OuyaFacade;->USER_DATA_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 172
    .local v7, "results":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 178
    :goto_0
    return-object v3

    .line 176
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method getRemoteService()Ltv/ouya/console/internal/IIapServiceDefinition;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "developerId"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Ltv/ouya/console/api/OuyaFacade;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Ltv/ouya/console/api/OuyaFacade;->developerId:Ljava/lang/String;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunningOnOUYAHardware()Z
    .locals 4

    .prologue
    .line 121
    const-string v1, "cardhu"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ouya_1_1"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 122
    .local v0, "runningOnOuya":Z
    :goto_0
    if-nez v0, :cond_1

    .line 123
    const-string v1, "OUYAF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not running on Ouya hardware: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    return v0

    .line 121
    .end local v0    # "runningOnOuya":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 269
    const-string v0, "inAppPurchase"

    const-string v1, "Successfully bound to IapService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p2}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IIapServiceDefinition;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    .line 271
    :goto_0
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->pendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    .line 287
    return-void
.end method

.method public putGameData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 148
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "value"

    invoke-virtual {v6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 152
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "property_name = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    .local v7, "result":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "property_name = ?"

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://tv.ouya.userdata/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public requestGamerUuid(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
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
    .line 231
    .local p1, "gamerUuidListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;

    invoke-direct {v0, p0, p1}, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public requestProductList(Ljava/util/List;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Purchasable;",
            ">;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ltv/ouya/console/api/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "purchasables":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/Purchasable;>;"
    .local p2, "productListListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/ArrayList<Ltv/ouya/console/api/Product;>;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ljava/util/List;Ltv/ouya/console/api/OuyaResponseListener;)V

    .line 190
    .local v0, "requestProductListRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public requestPurchase(Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p1, "purchasable"    # Ltv/ouya/console/api/Purchasable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/Purchasable;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "purchaseListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;

    invoke-direct {v0, p0, p1, p2}, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/api/OuyaResponseListener;)V

    .line 211
    .local v0, "requestProductListRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public requestReceipts(Ltv/ouya/console/api/OuyaResponseListener;)V
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
    .line 221
    .local p1, "receiptListListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/OuyaFacade$1;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public setTestMode()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;

    invoke-direct {v0, p0}, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;)V

    .line 135
    .local v0, "setTestModeRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaFacade;->runRequest(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    iput-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->remoteService:Ltv/ouya/console/internal/IIapServiceDefinition;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/OuyaFacade;->bindRequestHasBeenMade:Z

    .line 102
    :cond_0
    iput-object v1, p0, Ltv/ouya/console/api/OuyaFacade;->context:Landroid/content/Context;

    .line 104
    :cond_1
    return-void
.end method
