.class public Ltv/ouya/console/api/OuyaAuthenticationHelper;
.super Ljava/lang/Object;
.source "OuyaAuthenticationHelper.java"


# static fields
.field public static final OUYA_ACCOUNT_TYPE:Ljava/lang/String; = "tv.ouya.account.v1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleError(Landroid/app/Activity;ILjava/lang/String;Landroid/os/Bundle;ILtv/ouya/console/api/OuyaResponseListener;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "authActivityId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    const/4 v6, 0x1

    .line 38
    const/16 v5, 0x7d0

    if-ne p1, v5, :cond_1

    .line 41
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v7, "tv.ouya.account.v1"

    invoke-virtual {v5, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 42
    .local v3, "ouyaAccounts":[Landroid/accounts/Account;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_4

    .line 43
    :cond_0
    invoke-static {p0}, Ltv/ouya/console/api/UserManager;->getInstance(Landroid/content/Context;)Ltv/ouya/console/api/UserManager;

    move-result-object v5

    invoke-virtual {v5, p0, p5}, Ltv/ouya/console/api/UserManager;->requestUserAddsAccount(Landroid/app/Activity;Ltv/ouya/console/api/OuyaResponseListener;)V

    move v5, v6

    .line 72
    .end local v3    # "ouyaAccounts":[Landroid/accounts/Account;
    :goto_0
    return v5

    .line 47
    :cond_1
    const/16 v5, 0x7d1

    if-ne p1, v5, :cond_2

    .line 49
    const-string v5, "intent"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50
    const-string v5, "intent"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {p0, v5, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v5, v6

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    const/16 v5, 0x7de

    if-eq p1, v5, :cond_3

    const/16 v5, 0x7e4

    if-eq p1, v5, :cond_3

    const/16 v5, 0x7e5

    if-eq p1, v5, :cond_3

    const/16 v5, 0x7e3

    if-ne p1, v5, :cond_4

    .line 59
    :cond_3
    const-string v0, "ERROR_CODE"

    .line 61
    .local v0, "CreditCardErrorActivity_EXTRA_ERROR_CODE":Ljava/lang/String;
    const-string v4, "tv.ouya.console"

    .line 62
    .local v4, "packageName":Ljava/lang/String;
    const-string v1, ".launcher.settings.CreditCardErrorActivity"

    .line 64
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 66
    const-string v5, "ERROR_CODE"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v2, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v5, v6

    .line 69
    goto :goto_0

    .line 72
    .end local v0    # "CreditCardErrorActivity_EXTRA_ERROR_CODE":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method
