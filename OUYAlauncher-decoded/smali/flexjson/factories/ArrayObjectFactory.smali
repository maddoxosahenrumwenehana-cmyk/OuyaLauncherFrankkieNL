.class public Lflexjson/factories/ArrayObjectFactory;
.super Ljava/lang/Object;
.source "ArrayObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .param p4, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 14
    move-object v3, p2

    check-cast v3, Ljava/util/List;

    .line 15
    .local v3, "list":Ljava/util/List;
    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v6

    const-string v7, "values"

    invoke-virtual {v6, v7}, Lflexjson/Path;->enqueue(Ljava/lang/String;)Lflexjson/Path;

    .line 17
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 18
    .local v4, "memberClass":Ljava/lang/Class;
    :goto_0
    if-nez v4, :cond_1

    new-instance v6, Lflexjson/JSONException;

    const-string v7, "Missing concrete class for array.  You might require a use() method."

    invoke-direct {v6, v7}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v4    # "memberClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    new-instance v6, Lflexjson/JSONException;

    const-string v7, "%s: Could not find class %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v7

    invoke-virtual {v7}, Lflexjson/Path;->pop()Ljava/lang/String;

    throw v6

    .line 17
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v6

    invoke-virtual {p1, v6}, Lflexjson/ObjectBinder;->findClassAtPath(Lflexjson/Path;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    .line 19
    .restart local v4    # "memberClass":Ljava/lang/Class;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 21
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    .local v5, "v":Ljava/lang/Object;
    invoke-static {v0, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    .end local v5    # "v":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v6

    invoke-virtual {v6}, Lflexjson/Path;->pop()Ljava/lang/String;

    return-object v0
.end method
