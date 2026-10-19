.class Lfi/iki/elonen/NanoHTTPD$1$1;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfi/iki/elonen/NanoHTTPD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfi/iki/elonen/NanoHTTPD$1;

.field final synthetic val$finalAccept:Ljava/net/Socket;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lfi/iki/elonen/NanoHTTPD$1;Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->this$1:Lfi/iki/elonen/NanoHTTPD$1;

    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 124
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->this$1:Lfi/iki/elonen/NanoHTTPD$1;

    iget-object v4, v4, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$300(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    move-result-object v4

    invoke-interface {v4}, Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;->create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-result-object v3

    .line 125
    .local v3, "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->this$1:Lfi/iki/elonen/NanoHTTPD$1;

    iget-object v4, v4, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {v2, v4, v3, v5, v1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 126
    .local v2, "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    :goto_0
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    .end local v2    # "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .end local v3    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v4, v0, Ljava/net/SocketException;

    if-eqz v4, :cond_0

    const-string v4, "NanoHttpd Shutdown"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_1
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 137
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 138
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$200(Ljava/net/Socket;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 136
    .restart local v2    # "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .restart local v3    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    :cond_2
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 137
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 138
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$200(Ljava/net/Socket;)V

    goto :goto_1

    .line 136
    .end local v2    # "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .end local v3    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 137
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 138
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$200(Ljava/net/Socket;)V

    throw v4
.end method
