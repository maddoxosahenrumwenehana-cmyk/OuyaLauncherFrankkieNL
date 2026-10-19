.class Lfi/iki/elonen/NanoHTTPD$1;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfi/iki/elonen/NanoHTTPD;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method constructor <init>(Lfi/iki/elonen/NanoHTTPD;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 113
    :cond_0
    :try_start_0
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 114
    .local v1, "finalAccept":Ljava/net/Socket;
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 115
    .local v2, "inputStream":Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 116
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$200(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "finalAccept":Ljava/net/Socket;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    return-void

    .line 118
    .restart local v1    # "finalAccept":Ljava/net/Socket;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$500(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    move-result-object v3

    new-instance v4, Lfi/iki/elonen/NanoHTTPD$1$1;

    invoke-direct {v4, p0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$1$1;-><init>(Lfi/iki/elonen/NanoHTTPD$1;Ljava/net/Socket;Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->exec(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 143
    .end local v1    # "finalAccept":Ljava/net/Socket;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
