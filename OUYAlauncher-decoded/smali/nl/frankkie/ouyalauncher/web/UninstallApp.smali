.class public Lnl/frankkie/ouyalauncher/web/UninstallApp;
.super Lnl/frankkie/ouyalauncher/web/WebPage;
.source "UninstallApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/web/WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lfi/iki/elonen/NanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 23
    .local v2, "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v3, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 24
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v5, "text/html"

    const-string v6, "App not found, try restarting server"

    invoke-direct {v3, v4, v5, v6}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_0
    return-object v3

    .line 27
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "packageName"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    .local v1, "packageUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v2    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v4, "text/html"

    const-string v5, "ok"

    invoke-direct {v2, v3, v4, v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object v3, v2

    .line 34
    goto :goto_0
.end method
