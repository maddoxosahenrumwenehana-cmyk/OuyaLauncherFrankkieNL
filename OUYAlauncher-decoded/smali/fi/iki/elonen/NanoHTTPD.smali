.class public abstract Lfi/iki/elonen/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$ResponseException;,
        Lfi/iki/elonen/NanoHTTPD$HTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$Response;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFile;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$AsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$Method;
    }
.end annotation


# static fields
.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"


# instance fields
.field private asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field private myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 94
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    .line 95
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V

    .line 96
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V

    .line 97
    return-void
.end method

.method static synthetic access$100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 60
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/Socket;

    .prologue
    .line 60
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$300(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 60
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/Closeable;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/Closeable;

    .prologue
    .line 60
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$500(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 60
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    return-object v0
.end method

.method private static final safeClose(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 1122
    if-eqz p0, :cond_0

    .line 1124
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final safeClose(Ljava/net/ServerSocket;)V
    .locals 1
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .prologue
    .line 1104
    if-eqz p0, :cond_0

    .line 1106
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final safeClose(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 1113
    if-eqz p0, :cond_0

    .line 1115
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    .line 246
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 248
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "e":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 250
    .local v4, "sep":I
    if-ltz v4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "propertyName":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 252
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    if-ltz v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "propertyValue":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_0

    .line 256
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 254
    .restart local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 260
    .end local v0    # "e":Ljava/lang/String;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v4    # "sep":I
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_4
    return-object v1
.end method

.method protected decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getListeningPort()I
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public final isAlive()Z
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->wasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected serve(Lfi/iki/elonen/NanoHTTPD$HTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 12
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    .prologue
    .line 191
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->access$600(Lfi/iki/elonen/NanoHTTPD$HTTPSession;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v2

    .line 203
    .local v2, "method":Lfi/iki/elonen/NanoHTTPD$Method;
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getParms()Ljava/util/Map;

    move-result-object v4

    .line 204
    .local v4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .line 205
    invoke-virtual/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD;->serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v6

    .line 196
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "text/plain"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v9, v10}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 198
    .local v7, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response;

    invoke-virtual {v7}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-virtual {v7}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v9, v10}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
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
.end method

.method public setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V
    .locals 0
    .param p1, "asyncRunner"    # Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .prologue
    .line 296
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .line 297
    return-void
.end method

.method public setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V
    .locals 0
    .param p1, "tempFileManagerFactory"    # Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .prologue
    .line 343
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .line 344
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 106
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    iget v3, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfi/iki/elonen/NanoHTTPD$1;

    invoke-direct {v1, p0}, Lfi/iki/elonen/NanoHTTPD$1;-><init>(Lfi/iki/elonen/NanoHTTPD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 149
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 150
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v1, "NanoHttpd Main Listener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/net/ServerSocket;)V

    .line 160
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final wasStarted()Z
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
