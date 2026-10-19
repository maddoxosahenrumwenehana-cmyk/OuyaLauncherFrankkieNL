.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$Status;
    }
.end annotation


# instance fields
.field private data:Ljava/io/InputStream;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private status:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 497
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 498
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 499
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 500
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "txt"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 506
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 507
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 509
    if-eqz p3, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_1
    return-void

    .line 509
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 490
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1, p1}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method static synthetic access$700(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD$Response;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    return-void
.end method

.method private send(Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 526
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 527
    .local v5, "mime":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 528
    .local v2, "gmtFrmt":Ljava/text/SimpleDateFormat;
    const-string v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 531
    :try_start_0
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    if-nez v10, :cond_0

    .line 532
    new-instance v10, Ljava/lang/Error;

    const-string v11, "sendResponse(): Status can\'t be null."

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 576
    :catch_0
    move-exception v10

    .line 579
    :goto_0
    return-void

    .line 534
    :cond_0
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 535
    .local v7, "pw":Ljava/io/PrintWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP/1.1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v11}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    if-eqz v5, :cond_1

    .line 538
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    :cond_1
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v11, "Date"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 542
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Date: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    :cond_3
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v10, :cond_4

    .line 546
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 547
    .local v4, "key":Ljava/lang/String;
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 548
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 552
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 553
    .local v6, "pending":I
    :goto_2
    if-lez v6, :cond_5

    .line 554
    const-string v10, "Connection: keep-alive\r\n"

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    :cond_5
    const-string v10, "\r\n"

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 561
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v11, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v10, :cond_6

    .line 562
    const/16 v0, 0x4000

    .line 563
    .local v0, "BUFFER_SIZE":I
    new-array v1, v0, [B

    .line 564
    .local v1, "buff":[B
    :goto_3
    if-lez v6, :cond_6

    .line 565
    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    const/4 v12, 0x0

    if-le v6, v0, :cond_8

    move v10, v0

    :goto_4
    invoke-virtual {v11, v1, v12, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 566
    .local v8, "read":I
    if-gtz v8, :cond_9

    .line 574
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "buff":[B
    .end local v8    # "read":I
    :cond_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 575
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {v10}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 552
    .end local v6    # "pending":I
    :cond_7
    const/4 v6, -0x1

    goto :goto_2

    .restart local v0    # "BUFFER_SIZE":I
    .restart local v1    # "buff":[B
    .restart local v6    # "pending":I
    :cond_8
    move v10, v6

    .line 565
    goto :goto_4

    .line 569
    .restart local v8    # "read":I
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p1, v1, v10, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    sub-int/2addr v6, v8

    .line 572
    goto :goto_3
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 602
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 603
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 594
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .locals 0
    .param p1, "requestMethod"    # Lfi/iki/elonen/NanoHTTPD$Method;

    .prologue
    .line 610
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 611
    return-void
.end method

.method public setStatus(Lfi/iki/elonen/NanoHTTPD$Response$Status;)V
    .locals 0
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .prologue
    .line 586
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 587
    return-void
.end method
