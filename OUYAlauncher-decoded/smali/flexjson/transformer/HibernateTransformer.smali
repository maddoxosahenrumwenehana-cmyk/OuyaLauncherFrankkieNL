.class public Lflexjson/transformer/HibernateTransformer;
.super Lflexjson/transformer/ObjectTransformer;
.source "HibernateTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lflexjson/transformer/ObjectTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public findBeanClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getHibernateLazyInitializer"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 15
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    .local v0, "initializer":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPersistentClass"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 17
    .local v2, "pmethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v0    # "initializer":Ljava/lang/Object;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "pmethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 20
    :catch_0
    move-exception v3

    .line 22
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 19
    :catch_1
    move-exception v3

    goto :goto_1

    .line 18
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method protected resolveClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lflexjson/transformer/HibernateTransformer;->findBeanClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
