.class public Lnl/wotuu/database/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final ENTRY_MAX_LEN:I = 0xfa0

.field private static final LOG_TAG:Ljava/lang/String; = "getrainer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 25
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lnl/wotuu/database/Logger;->log(IZLjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static varargs debugEntire(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 32
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lnl/wotuu/database/Logger;->log(IZLjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 44
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lnl/wotuu/database/Logger;->log(IZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method private static varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    :try_start_0
    const-string v2, "\\{\\}"

    const-string v3, "%s"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    .local v1, "formatted":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 82
    .end local v1    # "formatted":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "formatted":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 36
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lnl/wotuu/database/Logger;->log(IZLjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method private static varargs log(IZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p0, "priority"    # I
    .param p1, "ignoreLimit"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v10, 0xfa0

    const/16 v9, 0xa

    const/4 v8, -0x1

    .line 49
    if-eqz p3, :cond_0

    array-length v6, p3

    if-lez v6, :cond_0

    array-length v6, p3

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p3, v6

    instance-of v6, v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 50
    array-length v6, p3

    add-int/lit8 v6, v6, -0x1

    invoke-static {p3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 51
    .local v5, "truncated":[Ljava/lang/Object;
    array-length v6, p3

    add-int/lit8 v6, v6, -0x1

    aget-object v0, p3, v6

    check-cast v0, Ljava/lang/Throwable;

    .line 52
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, v5}, Lnl/wotuu/database/Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v5    # "truncated":[Ljava/lang/Object;
    .local v4, "print":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    .line 57
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 58
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 59
    .local v1, "lastNewLine":I
    if-eq v1, v8, :cond_1

    move v3, v1

    .line 60
    .local v3, "nextEnd":I
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "next":Ljava/lang/String;
    const-string v6, "getrainer"

    invoke-static {p0, v6, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eq v1, v8, :cond_2

    .line 64
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 54
    .end local v1    # "lastNewLine":I
    .end local v2    # "next":Ljava/lang/String;
    .end local v3    # "nextEnd":I
    .end local v4    # "print":Ljava/lang/String;
    :cond_0
    invoke-static {p2, p3}, Lnl/wotuu/database/Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "print":Ljava/lang/String;
    goto :goto_0

    .line 59
    .restart local v1    # "lastNewLine":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 66
    .restart local v2    # "next":Ljava/lang/String;
    .restart local v3    # "nextEnd":I
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 70
    .end local v1    # "lastNewLine":I
    .end local v2    # "next":Ljava/lang/String;
    .end local v3    # "nextEnd":I
    :cond_3
    const-string v6, "getrainer"

    invoke-static {p0, v6, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_4
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 40
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lnl/wotuu/database/Logger;->log(IZLjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method
