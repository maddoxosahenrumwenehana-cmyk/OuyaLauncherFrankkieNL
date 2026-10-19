.class Ltv/ouya/console/api/UserManager$AddAccountCallback;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddAccountCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Ltv/ouya/console/api/OuyaResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 0
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
    .line 342
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$AddAccountCallback;->mListener:Ltv/ouya/console/api/OuyaResponseListener;

    .line 344
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 349
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 351
    iget-object v2, p0, Ltv/ouya/console/api/UserManager$AddAccountCallback;->mListener:Ltv/ouya/console/api/OuyaResponseListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ltv/ouya/console/api/OuyaResponseListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 359
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Landroid/accounts/OperationCanceledException;
    iget-object v2, p0, Ltv/ouya/console/api/UserManager$AddAccountCallback;->mListener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-interface {v2}, Ltv/ouya/console/api/OuyaResponseListener;->onCancel()V

    goto :goto_0

    .line 354
    .end local v1    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Ltv/ouya/console/api/UserManager$AddAccountCallback;->mListener:Ltv/ouya/console/api/OuyaResponseListener;

    const/16 v3, 0xbbb

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v5}, Ltv/ouya/console/api/OuyaResponseListener;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 357
    .local v1, "e":Landroid/accounts/AuthenticatorException;
    iget-object v2, p0, Ltv/ouya/console/api/UserManager$AddAccountCallback;->mListener:Ltv/ouya/console/api/OuyaResponseListener;

    const/16 v3, 0x7d1

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v5}, Ltv/ouya/console/api/OuyaResponseListener;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
