.class public Lflexjson/transformer/ObjectTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "ObjectTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0}, Lflexjson/transformer/ObjectTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v1

    .line 24
    .local v1, "context":Lflexjson/JSONContext;
    invoke-virtual {v1}, Lflexjson/JSONContext;->getPath()Lflexjson/Path;

    move-result-object v5

    .line 25
    .local v5, "path":Lflexjson/Path;
    invoke-virtual {v1}, Lflexjson/JSONContext;->getVisits()Lflexjson/ChainedSet;

    move-result-object v10

    .line 27
    .local v10, "visits":Lflexjson/ChainedSet;
    :try_start_0
    invoke-virtual {v10, p1}, Lflexjson/ChainedSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 28
    new-instance v11, Lflexjson/ChainedSet;

    invoke-direct {v11, v10}, Lflexjson/ChainedSet;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v11}, Lflexjson/JSONContext;->setVisits(Lflexjson/ChainedSet;)V

    .line 29
    invoke-virtual {v1}, Lflexjson/JSONContext;->getVisits()Lflexjson/ChainedSet;

    move-result-object v11

    invoke-virtual {v11, p1}, Lflexjson/ChainedSet;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0, p1}, Lflexjson/transformer/ObjectTransformer;->resolveClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lflexjson/BeanAnalyzer;->analyze(Ljava/lang/Class;)Lflexjson/BeanAnalyzer;

    move-result-object v0

    .line 32
    .local v0, "analyzer":Lflexjson/BeanAnalyzer;
    invoke-virtual {v1}, Lflexjson/JSONContext;->writeOpenObject()Lflexjson/TypeContext;

    move-result-object v8

    .line 33
    .local v8, "typeContext":Lflexjson/TypeContext;
    invoke-virtual {v0}, Lflexjson/BeanAnalyzer;->getProperties()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflexjson/BeanProperty;

    .line 34
    .local v6, "prop":Lflexjson/BeanProperty;
    invoke-virtual {v6}, Lflexjson/BeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lflexjson/Path;->enqueue(Ljava/lang/String;)Lflexjson/Path;

    .line 36
    invoke-virtual {v1, v6}, Lflexjson/JSONContext;->isIncluded(Lflexjson/BeanProperty;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 37
    invoke-virtual {v6, p1}, Lflexjson/BeanProperty;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 38
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lflexjson/JSONContext;->getVisits()Lflexjson/ChainedSet;

    move-result-object v11

    invoke-virtual {v11, v9}, Lflexjson/ChainedSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 40
    invoke-virtual {v1, v9}, Lflexjson/JSONContext;->getTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v7

    check-cast v7, Lflexjson/transformer/TransformerWrapper;

    .line 42
    .local v7, "transformer":Lflexjson/transformer/TransformerWrapper;
    invoke-virtual {v7}, Lflexjson/transformer/TransformerWrapper;->isInline()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    .line 43
    invoke-virtual {v8}, Lflexjson/TypeContext;->isFirst()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1}, Lflexjson/JSONContext;->writeComma()V

    .line 44
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lflexjson/TypeContext;->setFirst(Z)V

    .line 45
    invoke-virtual {v1, v4}, Lflexjson/JSONContext;->writeName(Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {v8, v4}, Lflexjson/TypeContext;->setPropertyName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v7, v9}, Lflexjson/transformer/TransformerWrapper;->transform(Ljava/lang/Object;)V

    .line 52
    .end local v7    # "transformer":Lflexjson/transformer/TransformerWrapper;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Lflexjson/Path;->pop()Ljava/lang/String;
    :try_end_0
    .catch Lflexjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 58
    .end local v0    # "analyzer":Lflexjson/BeanAnalyzer;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "prop":Lflexjson/BeanProperty;
    .end local v8    # "typeContext":Lflexjson/TypeContext;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lflexjson/JSONException;
    throw v2

    .line 54
    .end local v2    # "e":Lflexjson/JSONException;
    .restart local v0    # "analyzer":Lflexjson/BeanAnalyzer;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v8    # "typeContext":Lflexjson/TypeContext;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lflexjson/JSONContext;->writeCloseObject()V

    .line 55
    invoke-virtual {v1}, Lflexjson/JSONContext;->getVisits()Lflexjson/ChainedSet;

    move-result-object v11

    invoke-virtual {v11}, Lflexjson/ChainedSet;->getParent()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Lflexjson/ChainedSet;

    invoke-virtual {v1, v11}, Lflexjson/JSONContext;->setVisits(Lflexjson/ChainedSet;)V
    :try_end_1
    .catch Lflexjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .end local v0    # "analyzer":Lflexjson/BeanAnalyzer;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "typeContext":Lflexjson/TypeContext;
    :cond_4
    return-void

    .line 60
    :catch_1
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Lflexjson/JSONException;

    const-string v12, "Error trying to deepSerialize"

    invoke-direct {v11, v12, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method
