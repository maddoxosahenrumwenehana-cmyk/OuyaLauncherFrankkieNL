.class public Lflexjson/factories/ClassLocatorObjectFactory;
.super Ljava/lang/Object;
.source "ClassLocatorObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# instance fields
.field private locator:Lflexjson/ClassLocator;


# direct methods
.method public constructor <init>(Lflexjson/ClassLocator;)V
    .locals 0
    .param p1, "locator"    # Lflexjson/ClassLocator;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lflexjson/factories/ClassLocatorObjectFactory;->locator:Lflexjson/ClassLocator;

    .line 21
    return-void
.end method

.method private createTargetObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 60
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 61
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "target":Ljava/lang/Object;
    return-object v1
.end method


# virtual methods
.method public getLocator()Lflexjson/ClassLocator;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lflexjson/factories/ClassLocatorObjectFactory;->locator:Lflexjson/ClassLocator;

    return-object v0
.end method

.method public instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .param p4, "targetClass"    # Ljava/lang/Class;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    iget-object v6, p0, Lflexjson/factories/ClassLocatorObjectFactory;->locator:Lflexjson/ClassLocator;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Lflexjson/ClassLocator;->locate(Lflexjson/ObjectBinder;Lflexjson/Path;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lflexjson/factories/ClassLocatorObjectFactory;->createTargetObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {p1, p2, v5, p3}, Lflexjson/ObjectBinder;->bindIntoCollection(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v5

    .line 43
    :cond_0
    :goto_0
    return-object v5

    .line 30
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 31
    instance-of v5, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 32
    move-object v0, p3

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v4, v0

    .line 33
    .local v4, "ptype":Ljava/lang/reflect/ParameterizedType;
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lflexjson/factories/ClassLocatorObjectFactory;->createTargetObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {p1, p2, v5, v6, v7}, Lflexjson/ObjectBinder;->bindIntoMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 35
    .end local v4    # "ptype":Ljava/lang/reflect/ParameterizedType;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lflexjson/factories/ClassLocatorObjectFactory;->createTargetObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v5, v6, v7}, Lflexjson/ObjectBinder;->bindIntoMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 37
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, p2, Ljava/util/Map;

    if-eqz v5, :cond_4

    .line 38
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lflexjson/factories/ClassLocatorObjectFactory;->createTargetObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2, v5, v1}, Lflexjson/ObjectBinder;->bindIntoObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 40
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1, p2, v1}, Lflexjson/ObjectBinder;->bindPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    goto :goto_0

    .line 45
    .end local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 46
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s: Could not find class %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 47
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s: Could not instantiate class %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 49
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s: Problem while instantiating class %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 51
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s: Could not find a no-arg constructor for %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 53
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s: Problem while invoking the no-arg constructor for %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
