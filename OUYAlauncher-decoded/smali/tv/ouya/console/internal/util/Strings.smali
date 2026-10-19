.class public Ltv/ouya/console/internal/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static formatDollarAmount(I)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # I

    .prologue
    .line 39
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 40
    .local v0, "currencyFormatter":Ljava/text/NumberFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ltv/ouya/console/internal/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/high16 v4, 0x10000

    new-array v0, v4, [C

    .line 20
    .local v0, "buffer":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .local v2, "out":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 24
    .local v1, "in":Ljava/io/Reader;
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .local v3, "read":I
    if-lez v3, :cond_0

    .line 25
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    .end local v3    # "read":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v4

    .line 27
    .restart local v3    # "read":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 29
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v4
.end method

.method public static hasLength(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 15
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ltv/ouya/console/internal/util/Strings;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "collection"    # [Ljava/lang/Object;

    .prologue
    .line 58
    const-string v2, ""

    .line 59
    .local v2, "del":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v6, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 61
    .local v5, "obj":Ljava/lang/Object;
    if-nez v5, :cond_1

    const/4 v1, 0x0

    .line 62
    .local v1, "asString":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 63
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-object v2, p0

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "asString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 67
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
