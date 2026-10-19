.class public Lnl/frankkie/ouyalauncher/web/Index;
.super Lnl/frankkie/ouyalauncher/web/WebPage;
.source "Index.java"


# static fields
.field public static final page:Ljava/lang/String; = "<html><head><title>BAXY</title></head><body><h2>BAXY</h2><ul><li><a href=\"/upload\">Upload</a><li><a href=\"/files\">Files</a><li><a href=\"/apps\">Apps</a></ul></body></html>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/web/WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 5
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
    .line 26
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 27
    .local v0, "response":Lfi/iki/elonen/NanoHTTPD$Response;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "<html><head><title>BAXY</title></head><body><h2>BAXY</h2><ul><li><a href=\"/upload\">Upload</a><li><a href=\"/files\">Files</a><li><a href=\"/apps\">Apps</a></ul></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v0    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "text/html"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .restart local v0    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    return-object v0
.end method
