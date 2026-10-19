.class public Lflexjson/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private index:I

.field private lastChar:C

.field private reader:Ljava/io/Reader;

.field private useLastChar:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "reader":Ljava/io/Reader;
    :goto_0
    iput-object p1, p0, Lflexjson/JSONTokener;->reader:Ljava/io/Reader;

    .line 59
    iput-boolean v1, p0, Lflexjson/JSONTokener;->useLastChar:Z

    .line 60
    iput v1, p0, Lflexjson/JSONTokener;->index:I

    .line 61
    return-void

    .line 57
    .restart local p1    # "reader":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lflexjson/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 71
    return-void
.end method

.method public static dehexchar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 98
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 99
    add-int/lit8 v0, p0, -0x30

    .line 107
    :goto_0
    return v0

    .line 101
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 102
    add-int/lit8 v0, p0, -0x37

    goto :goto_0

    .line 104
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 105
    add-int/lit8 v0, p0, -0x57

    goto :goto_0

    .line 107
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private parseObject()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 444
    .local v1, "jsonObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v3

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_1

    .line 445
    const-string v3, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 483
    .local v0, "c":C
    .local v2, "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 448
    .end local v0    # "c":C
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v0

    .line 449
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_0

    .line 455
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 456
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v0

    .line 464
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_3

    .line 465
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_2

    .line 466
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 471
    :cond_2
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lflexjson/JSONTokener;->putOnce(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 488
    const-string v3, "Expected a \',\' or \'}\'"

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 451
    .end local v2    # "key":Ljava/lang/String;
    :sswitch_0
    const-string v3, "A JSONObject text must end with \'}\'"

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 468
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x3a

    if-eq v0, v3, :cond_2

    .line 469
    const-string v3, "Expected a \':\' after a key"

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 480
    :sswitch_1
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_0

    .line 486
    .end local v2    # "key":Ljava/lang/String;
    :sswitch_2
    return-object v1

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 477
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private putOnce(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "jsonObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 495
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_0
    return-void

    .line 498
    :cond_1
    new-instance v0, Lflexjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 549
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 552
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1
    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 555
    :cond_2
    const-string v3, "false"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 556
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 558
    :cond_3
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 559
    const/4 p1, 0x0

    goto :goto_0

    .line 570
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 571
    .local v0, "b":C
    if-lt v0, v6, :cond_5

    const/16 v3, 0x39

    if-le v0, v3, :cond_6

    :cond_5
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_6

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_6

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_0

    .line 572
    :cond_6
    if-ne v0, v6, :cond_9

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_8

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x58

    if-ne v3, v4, :cond_8

    .line 576
    :cond_7
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object p1

    goto :goto_0

    .line 583
    :cond_8
    const/16 v3, 0x8

    :try_start_1
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 584
    :catch_0
    move-exception v3

    .line 590
    :cond_9
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object p1, v3

    goto :goto_0

    .line 591
    :catch_1
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object p1, v3

    goto :goto_0

    .line 594
    :catch_2
    move-exception v2

    .line 596
    .local v2, "f":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object p1, v3

    goto/16 :goto_0

    .line 597
    :catch_3
    move-exception v3

    goto/16 :goto_0

    .line 578
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "f":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p0, Lflexjson/JSONTokener;->useLastChar:Z

    if-nez v0, :cond_0

    iget v0, p0, Lflexjson/JSONTokener;->index:I

    if-gtz v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Lflexjson/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iget v0, p0, Lflexjson/JSONTokener;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lflexjson/JSONTokener;->index:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflexjson/JSONTokener;->useLastChar:Z

    .line 87
    return-void
.end method

.method public more()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 120
    .local v0, "nextChar":C
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 124
    :goto_0
    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 124
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-boolean v3, p0, Lflexjson/JSONTokener;->useLastChar:Z

    if-eqz v3, :cond_1

    .line 136
    iput-boolean v2, p0, Lflexjson/JSONTokener;->useLastChar:Z

    .line 137
    iget-char v2, p0, Lflexjson/JSONTokener;->lastChar:C

    if-eqz v2, :cond_0

    .line 138
    iget v2, p0, Lflexjson/JSONTokener;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lflexjson/JSONTokener;->index:I

    .line 140
    :cond_0
    iget-char v2, p0, Lflexjson/JSONTokener;->lastChar:C

    .line 155
    :goto_0
    return v2

    .line 144
    :cond_1
    :try_start_0
    iget-object v3, p0, Lflexjson/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 149
    .local v0, "c":I
    if-gtz v0, :cond_2

    .line 150
    iput-char v2, p0, Lflexjson/JSONTokener;->lastChar:C

    goto :goto_0

    .line 145
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 146
    .local v1, "exc":Ljava/io/IOException;
    new-instance v2, Lflexjson/JSONException;

    invoke-direct {v2, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 153
    .end local v1    # "exc":Ljava/io/IOException;
    .restart local v0    # "c":I
    :cond_2
    iget v2, p0, Lflexjson/JSONTokener;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lflexjson/JSONTokener;->index:I

    .line 154
    int-to-char v2, v0

    iput-char v2, p0, Lflexjson/JSONTokener;->lastChar:C

    .line 155
    iget-char v2, p0, Lflexjson/JSONTokener;->lastChar:C

    goto :goto_0
.end method

.method public next(C)C
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 168
    .local v0, "n":C
    if-eq v0, p1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v1

    throw v1

    .line 172
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    const-string v4, ""

    .line 214
    :goto_0
    return-object v4

    .line 190
    :cond_0
    new-array v0, p1, [C

    .line 191
    .local v0, "buffer":[C
    const/4 v3, 0x0

    .line 193
    .local v3, "pos":I
    iget-boolean v4, p0, Lflexjson/JSONTokener;->useLastChar:Z

    if-eqz v4, :cond_1

    .line 194
    iput-boolean v5, p0, Lflexjson/JSONTokener;->useLastChar:Z

    .line 195
    iget-char v4, p0, Lflexjson/JSONTokener;->lastChar:C

    aput-char v4, v0, v5

    .line 196
    const/4 v3, 0x1

    .line 201
    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    :try_start_0
    iget-object v4, p0, Lflexjson/JSONTokener;->reader:Ljava/io/Reader;

    sub-int v5, p1, v3

    invoke-virtual {v4, v0, v3, v5}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 202
    add-int/2addr v3, v2

    goto :goto_1

    .line 204
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 205
    .local v1, "exc":Ljava/io/IOException;
    new-instance v4, Lflexjson/JSONException;

    invoke-direct {v4, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 207
    .end local v1    # "exc":Ljava/io/IOException;
    :cond_2
    iget v4, p0, Lflexjson/JSONTokener;->index:I

    add-int/2addr v4, v3

    iput v4, p0, Lflexjson/JSONTokener;->index:I

    .line 209
    if-ge v3, p1, :cond_3

    .line 210
    const-string v4, "Substring bounds error"

    invoke-virtual {p0, v4}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v4

    throw v4

    .line 213
    :cond_3
    add-int/lit8 v4, p1, -0x1

    aget-char v4, v0, v4

    iput-char v4, p0, Lflexjson/JSONTokener;->lastChar:C

    .line 214
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 226
    :cond_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 227
    .local v0, "c":C
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 228
    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 250
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 284
    if-ne v0, p1, :cond_0

    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 254
    :sswitch_0
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v2

    throw v2

    .line 256
    :sswitch_1
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 257
    sparse-switch v0, :sswitch_data_1

    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 259
    :sswitch_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :sswitch_6
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :sswitch_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lflexjson/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :sswitch_8
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lflexjson/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 257
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .param p1, "d"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 305
    .local v0, "c":C
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 306
    :cond_0
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 309
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 311
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "delimiters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 328
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 330
    :cond_0
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 333
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 335
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v0

    .line 351
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 375
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 354
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :sswitch_0
    invoke-virtual {p0, v0}, Lflexjson/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v3

    .line 384
    :goto_1
    return-object v3

    .line 356
    :sswitch_1
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 357
    invoke-direct {p0}, Lflexjson/JSONTokener;->parseObject()Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    .line 360
    :sswitch_2
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 361
    invoke-virtual {p0}, Lflexjson/JSONTokener;->parseArray()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 378
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "s":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 384
    :cond_1
    invoke-direct {p0, v1}, Lflexjson/JSONTokener;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_2
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public parseArray()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 504
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v0

    .line 508
    .local v0, "c":C
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_1

    .line 509
    const/16 v2, 0x5d

    .line 515
    .local v2, "q":C
    :goto_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 541
    :cond_0
    return-object v1

    .line 510
    .end local v2    # "q":C
    :cond_1
    const/16 v3, 0x28

    if-ne v0, v3, :cond_2

    .line 511
    const/16 v2, 0x29

    .restart local v2    # "q":C
    goto :goto_0

    .line 513
    .end local v2    # "q":C
    :cond_2
    const-string v3, "A JSONArray text must start with \'[\'"

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 518
    .restart local v2    # "q":C
    :cond_3
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 520
    :goto_1
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_4

    .line 521
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 522
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_2
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v0

    .line 528
    sparse-switch v0, :sswitch_data_0

    .line 543
    const-string v3, "Expected a \',\' or \']\'"

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 524
    :cond_4
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    .line 525
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 531
    :sswitch_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->nextClean()C

    move-result v3

    if-eq v3, v5, :cond_0

    .line 534
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    goto :goto_1

    .line 538
    :sswitch_1
    if-eq v2, v0, :cond_0

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lflexjson/JSONTokener;->syntaxError(Ljava/lang/String;)Lflexjson/JSONException;

    move-result-object v3

    throw v3

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 5
    .param p1, "to"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    .line 400
    :try_start_0
    iget v2, p0, Lflexjson/JSONTokener;->index:I

    .line 401
    .local v2, "startIndex":I
    iget-object v3, p0, Lflexjson/JSONTokener;->reader:Ljava/io/Reader;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Ljava/io/Reader;->mark(I)V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lflexjson/JSONTokener;->next()C

    move-result v0

    .line 404
    .local v0, "c":C
    if-nez v0, :cond_1

    .line 405
    iget-object v3, p0, Lflexjson/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->reset()V

    .line 406
    iput v2, p0, Lflexjson/JSONTokener;->index:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return v0

    .line 409
    :cond_1
    if-ne v0, p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lflexjson/JSONTokener;->back()V

    goto :goto_0

    .line 410
    .end local v0    # "c":C
    .end local v2    # "startIndex":I
    :catch_0
    move-exception v1

    .line 411
    .local v1, "exc":Ljava/io/IOException;
    new-instance v3, Lflexjson/JSONException;

    invoke-direct {v3, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public syntaxError(Ljava/lang/String;)Lflexjson/JSONException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 425
    new-instance v0, Lflexjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lflexjson/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lflexjson/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
