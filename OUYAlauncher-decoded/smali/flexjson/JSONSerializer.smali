.class public Lflexjson/JSONSerializer;
.super Ljava/lang/Object;
.source "JSONSerializer.java"


# static fields
.field public static final HEX:[C


# instance fields
.field private pathExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lflexjson/PathExpression;",
            ">;"
        }
    .end annotation
.end field

.field private pathTransformerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lflexjson/Path;",
            "Lflexjson/transformer/Transformer;",
            ">;"
        }
    .end annotation
.end field

.field private prettyPrint:Z

.field private rootName:Ljava/lang/String;

.field private typeTransformerMap:Lflexjson/transformer/TypeTransformerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lflexjson/JSONSerializer;->HEX:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lflexjson/transformer/TypeTransformerMap;

    invoke-static {}, Lflexjson/TransformerUtil;->getDefaultTypeTransformers()Lflexjson/transformer/TypeTransformerMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/transformer/TypeTransformerMap;-><init>(Lflexjson/transformer/TypeTransformerMap;)V

    iput-object v0, p0, Lflexjson/JSONSerializer;->typeTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/JSONSerializer;->pathTransformerMap:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addExclude(Ljava/lang/String;)V
    .locals 5
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 441
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 442
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 443
    new-instance v0, Lflexjson/PathExpression;

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lflexjson/PathExpression;-><init>(Ljava/lang/String;Z)V

    .line 444
    .local v0, "expression":Lflexjson/PathExpression;
    invoke-virtual {v0}, Lflexjson/PathExpression;->isWildcard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    iget-object v2, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v0    # "expression":Lflexjson/PathExpression;
    :cond_0
    iget-object v2, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    new-instance v3, Lflexjson/PathExpression;

    invoke-direct {v3, p1, v4}, Lflexjson/PathExpression;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method protected addInclude(Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v0, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    new-instance v1, Lflexjson/PathExpression;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lflexjson/PathExpression;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public deepSerialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 301
    sget-object v0, Lflexjson/SerializationType;->DEEP:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/StringBuilderOutputHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v2}, Lflexjson/StringBuilderOutputHandler;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deepSerialize(Ljava/lang/Object;Lflexjson/OutputHandler;)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Lflexjson/OutputHandler;

    .prologue
    .line 351
    sget-object v0, Lflexjson/SerializationType;->DEEP:Lflexjson/SerializationType;

    invoke-virtual {p0, p1, v0, p2}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deepSerialize(Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/lang/StringBuffer;

    .prologue
    .line 339
    sget-object v0, Lflexjson/SerializationType;->DEEP:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/StringBufferOutputHandler;

    invoke-direct {v1, p2}, Lflexjson/StringBufferOutputHandler;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deepSerialize(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 327
    sget-object v0, Lflexjson/SerializationType;->DEEP:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/StringBuilderOutputHandler;

    invoke-direct {v1, p2}, Lflexjson/StringBuilderOutputHandler;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deepSerialize(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/Writer;

    .prologue
    .line 315
    sget-object v0, Lflexjson/SerializationType;->DEEP:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/WriterOutputHandler;

    invoke-direct {v1, p2}, Lflexjson/WriterOutputHandler;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    .line 316
    return-void
.end method

.method public varargs exclude([Ljava/lang/String;)Lflexjson/JSONSerializer;
    .locals 4
    .param p1, "fields"    # [Ljava/lang/String;

    .prologue
    .line 475
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 476
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lflexjson/JSONSerializer;->addExclude(Ljava/lang/String;)V

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "field":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public getExcludes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lflexjson/PathExpression;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v0, "excludes":Ljava/util/List;, "Ljava/util/List<Lflexjson/PathExpression;>;"
    iget-object v3, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflexjson/PathExpression;

    .line 528
    .local v1, "expression":Lflexjson/PathExpression;
    invoke-virtual {v1}, Lflexjson/PathExpression;->isIncluded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 529
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    .end local v1    # "expression":Lflexjson/PathExpression;
    :cond_1
    return-object v0
.end method

.method public getIncludes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lflexjson/PathExpression;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lflexjson/PathExpression;>;"
    iget-object v3, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/PathExpression;

    .line 513
    .local v0, "expression":Lflexjson/PathExpression;
    invoke-virtual {v0}, Lflexjson/PathExpression;->isIncluded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    .end local v0    # "expression":Lflexjson/PathExpression;
    :cond_1
    return-object v1
.end method

.method public varargs include([Ljava/lang/String;)Lflexjson/JSONSerializer;
    .locals 4
    .param p1, "fields"    # [Ljava/lang/String;

    .prologue
    .line 497
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 498
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lflexjson/JSONSerializer;->addInclude(Ljava/lang/String;)V

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v1    # "field":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public prettyPrint(Z)Lflexjson/JSONSerializer;
    .locals 0
    .param p1, "prettyPrint"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lflexjson/JSONSerializer;->prettyPrint:Z

    .line 210
    return-object p0
.end method

.method public rootName(Ljava/lang/String;)Lflexjson/JSONSerializer;
    .locals 0
    .param p1, "rootName"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lflexjson/JSONSerializer;->rootName:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 235
    sget-object v0, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/StringBuilderOutputHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v2}, Lflexjson/StringBuilderOutputHandler;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lflexjson/OutputHandler;)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Lflexjson/OutputHandler;

    .prologue
    .line 285
    sget-object v0, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    invoke-virtual {p0, p1, v0, p2}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "serializationType"    # Lflexjson/SerializationType;
    .param p3, "out"    # Lflexjson/OutputHandler;

    .prologue
    .line 362
    const-string v1, ""

    .line 364
    .local v1, "output":Ljava/lang/String;
    invoke-static {}, Lflexjson/JSONContext;->get()Lflexjson/JSONContext;

    move-result-object v0

    .line 365
    .local v0, "context":Lflexjson/JSONContext;
    iget-object v3, p0, Lflexjson/JSONSerializer;->rootName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lflexjson/JSONContext;->setRootName(Ljava/lang/String;)V

    .line 366
    iget-boolean v3, p0, Lflexjson/JSONSerializer;->prettyPrint:Z

    invoke-virtual {v0, v3}, Lflexjson/JSONContext;->setPrettyPrint(Z)V

    .line 367
    invoke-virtual {v0, p3}, Lflexjson/JSONContext;->setOut(Lflexjson/OutputHandler;)V

    .line 368
    invoke-virtual {v0, p2}, Lflexjson/JSONContext;->serializationType(Lflexjson/SerializationType;)V

    .line 369
    iget-object v3, p0, Lflexjson/JSONSerializer;->typeTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    invoke-virtual {v0, v3}, Lflexjson/JSONContext;->setTypeTransformers(Lflexjson/transformer/TypeTransformerMap;)V

    .line 370
    iget-object v3, p0, Lflexjson/JSONSerializer;->pathTransformerMap:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lflexjson/JSONContext;->setPathTransformers(Ljava/util/Map;)V

    .line 371
    iget-object v3, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    invoke-virtual {v0, v3}, Lflexjson/JSONContext;->setPathExpressions(Ljava/util/List;)V

    .line 375
    :try_start_0
    invoke-virtual {v0}, Lflexjson/JSONContext;->getRootName()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "rootName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    :cond_0
    invoke-virtual {v0, p1}, Lflexjson/JSONContext;->transform(Ljava/lang/Object;)V

    .line 385
    :goto_0
    invoke-virtual {v0}, Lflexjson/JSONContext;->getOut()Lflexjson/OutputHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 388
    invoke-static {}, Lflexjson/JSONContext;->cleanup()V

    .line 391
    return-object v1

    .line 379
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lflexjson/JSONContext;->writeOpenObject()Lflexjson/TypeContext;

    .line 380
    invoke-virtual {v0, v2}, Lflexjson/JSONContext;->writeName(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p1}, Lflexjson/JSONContext;->transform(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v0}, Lflexjson/JSONContext;->writeCloseObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    .end local v2    # "rootName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {}, Lflexjson/JSONContext;->cleanup()V

    throw v3
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/lang/StringBuffer;

    .prologue
    .line 273
    sget-object v0, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/StringBufferOutputHandler;

    invoke-direct {v1, p2}, Lflexjson/StringBufferOutputHandler;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 261
    sget-object v0, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/StringBuilderOutputHandler;

    invoke-direct {v1, p2}, Lflexjson/StringBuilderOutputHandler;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/Writer;

    .prologue
    .line 249
    sget-object v0, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    new-instance v1, Lflexjson/WriterOutputHandler;

    invoke-direct {v1, p2}, Lflexjson/WriterOutputHandler;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;Lflexjson/SerializationType;Lflexjson/OutputHandler;)Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setExcludes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 562
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lflexjson/JSONSerializer;->addExclude(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    .end local v0    # "field":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setIncludes(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    .local v0, "field":Ljava/lang/String;
    iget-object v2, p0, Lflexjson/JSONSerializer;->pathExpressions:Ljava/util/List;

    new-instance v3, Lflexjson/PathExpression;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lflexjson/PathExpression;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v0    # "field":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public varargs transform(Lflexjson/transformer/Transformer;[Ljava/lang/Class;)Lflexjson/JSONSerializer;
    .locals 6
    .param p1, "transformer"    # Lflexjson/transformer/Transformer;
    .param p2, "types"    # [Ljava/lang/Class;

    .prologue
    .line 429
    new-instance v3, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v3, p1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    .line 431
    .end local p1    # "transformer":Lflexjson/transformer/Transformer;
    .local v3, "transformer":Lflexjson/transformer/Transformer;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 432
    .local v4, "type":Ljava/lang/Class;
    iget-object v5, p0, Lflexjson/JSONSerializer;->typeTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    invoke-virtual {v5, v4, v3}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v4    # "type":Ljava/lang/Class;
    :cond_0
    return-object p0
.end method

.method public varargs transform(Lflexjson/transformer/Transformer;[Ljava/lang/String;)Lflexjson/JSONSerializer;
    .locals 8
    .param p1, "transformer"    # Lflexjson/transformer/Transformer;
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    .line 408
    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, p1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    .line 409
    .end local p1    # "transformer":Lflexjson/transformer/Transformer;
    .local v4, "transformer":Lflexjson/transformer/Transformer;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 410
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 411
    iget-object v5, p0, Lflexjson/JSONSerializer;->pathTransformerMap:Ljava/util/Map;

    new-instance v6, Lflexjson/Path;

    invoke-direct {v6}, Lflexjson/Path;-><init>()V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    :cond_0
    iget-object v5, p0, Lflexjson/JSONSerializer;->pathTransformerMap:Ljava/util/Map;

    new-instance v6, Lflexjson/Path;

    const-string v7, "\\."

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lflexjson/Path;-><init>([Ljava/lang/String;)V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 416
    .end local v1    # "field":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
