.class public Lflexjson/BeanAnalyzer;
.super Ljava/lang/Object;
.source "BeanAnalyzer.java"


# static fields
.field private static cache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lflexjson/BeanAnalyzer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private clazz:Ljava/lang/Class;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lflexjson/BeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field private superBean:Lflexjson/BeanAnalyzer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lflexjson/BeanAnalyzer;->cache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lflexjson/BeanAnalyzer;->clazz:Ljava/lang/Class;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lflexjson/BeanAnalyzer;->analyze(Ljava/lang/Class;)Lflexjson/BeanAnalyzer;

    move-result-object v0

    iput-object v0, p0, Lflexjson/BeanAnalyzer;->superBean:Lflexjson/BeanAnalyzer;

    .line 32
    invoke-direct {p0}, Lflexjson/BeanAnalyzer;->populateProperties()V

    .line 33
    return-void
.end method

.method public static analyze(Ljava/lang/Class;)Lflexjson/BeanAnalyzer;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 17
    sget-object v0, Lflexjson/BeanAnalyzer;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lflexjson/BeanAnalyzer;->cache:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_1
    sget-object v0, Lflexjson/BeanAnalyzer;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    sget-object v0, Lflexjson/BeanAnalyzer;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lflexjson/BeanAnalyzer;

    invoke-direct {v1, p0}, Lflexjson/BeanAnalyzer;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_2
    sget-object v0, Lflexjson/BeanAnalyzer;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/BeanAnalyzer;

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lflexjson/BeanAnalyzer;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 27
    return-void
.end method

.method private merge(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lflexjson/BeanProperty;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lflexjson/BeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lflexjson/BeanProperty;>;"
    .local p2, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lflexjson/BeanProperty;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private populateProperties()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    .line 36
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    iput-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    .line 37
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->clazz:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    .line 38
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 39
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 37
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v6, v9

    .line 42
    .local v6, "numberOfArgs":I
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v11, :cond_2

    const-string v9, "is"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 45
    :cond_2
    if-nez v6, :cond_6

    .line 46
    const-string v9, "get"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 47
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lflexjson/BeanAnalyzer;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "property":Ljava/lang/String;
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 49
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    new-instance v10, Lflexjson/BeanProperty;

    invoke-direct {v10, v7, p0}, Lflexjson/BeanProperty;-><init>(Ljava/lang/String;Lflexjson/BeanAnalyzer;)V

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_3
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lflexjson/BeanProperty;

    invoke-virtual {v9, v3}, Lflexjson/BeanProperty;->setReadMethod(Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 52
    .end local v7    # "property":Ljava/lang/String;
    :cond_4
    const-string v9, "is"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 53
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lflexjson/BeanAnalyzer;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    .restart local v7    # "property":Ljava/lang/String;
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 55
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    new-instance v10, Lflexjson/BeanProperty;

    invoke-direct {v10, v7, p0}, Lflexjson/BeanProperty;-><init>(Ljava/lang/String;Lflexjson/BeanAnalyzer;)V

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_5
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lflexjson/BeanProperty;

    invoke-virtual {v9, v3}, Lflexjson/BeanProperty;->setReadMethod(Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 59
    .end local v7    # "property":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 60
    const-string v9, "set"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 61
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lflexjson/BeanAnalyzer;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .restart local v7    # "property":Ljava/lang/String;
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 63
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    new-instance v10, Lflexjson/BeanProperty;

    invoke-direct {v10, v7, p0}, Lflexjson/BeanProperty;-><init>(Ljava/lang/String;Lflexjson/BeanAnalyzer;)V

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_7
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lflexjson/BeanProperty;

    invoke-virtual {v9, v3}, Lflexjson/BeanProperty;->addWriteMethod(Ljava/lang/reflect/Method;)V

    goto/16 :goto_1

    .line 70
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "modifiers":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "numberOfArgs":I
    .end local v7    # "property":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->clazz:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_b

    aget-object v8, v0, v1

    .line 71
    .local v8, "publicProperties":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 72
    .restart local v4    # "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 70
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_a
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 74
    iget-object v9, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lflexjson/BeanProperty;

    invoke-direct {v11, v8, p0}, Lflexjson/BeanProperty;-><init>(Ljava/lang/reflect/Field;Lflexjson/BeanAnalyzer;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 77
    .end local v4    # "modifiers":I
    .end local v8    # "publicProperties":Ljava/lang/reflect/Field;
    :cond_b
    return-void
.end method

.method private uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 89
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 86
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lflexjson/BeanAnalyzer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProperties()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lflexjson/BeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 105
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lflexjson/BeanProperty;>;"
    iget-object v0, p0, Lflexjson/BeanAnalyzer;->superBean:Lflexjson/BeanAnalyzer;

    .line 106
    .local v0, "current":Lflexjson/BeanAnalyzer;
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    iget-object v2, v0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lflexjson/BeanAnalyzer;->merge(Ljava/util/Map;Ljava/util/Map;)V

    .line 108
    iget-object v0, v0, Lflexjson/BeanAnalyzer;->superBean:Lflexjson/BeanAnalyzer;

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public getProperty(Ljava/lang/String;)Lflexjson/BeanProperty;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    move-object v0, p0

    .line 95
    .local v0, "current":Lflexjson/BeanAnalyzer;
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    iget-object v2, v0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflexjson/BeanProperty;

    .line 97
    .local v1, "property":Lflexjson/BeanProperty;
    if-eqz v1, :cond_0

    .line 100
    .end local v1    # "property":Lflexjson/BeanProperty;
    :goto_1
    return-object v1

    .line 98
    .restart local v1    # "property":Lflexjson/BeanProperty;
    :cond_0
    iget-object v0, v0, Lflexjson/BeanAnalyzer;->superBean:Lflexjson/BeanAnalyzer;

    .line 99
    goto :goto_0

    .line 100
    .end local v1    # "property":Lflexjson/BeanProperty;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSuperBean()Lflexjson/BeanAnalyzer;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lflexjson/BeanAnalyzer;->superBean:Lflexjson/BeanAnalyzer;

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lflexjson/BeanAnalyzer;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
