.class public Lflexjson/JSONDeserializer;
.super Ljava/lang/Object;
.source "JSONDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private pathFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lflexjson/Path;",
            "Lflexjson/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private typeFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lflexjson/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/JSONDeserializer;->typeFactories:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/JSONDeserializer;->pathFactories:Ljava/util/Map;

    .line 148
    return-void
.end method

.method private createObjectBinder()Lflexjson/ObjectBinder;
    .locals 5

    .prologue
    .line 281
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    new-instance v0, Lflexjson/ObjectBinder;

    invoke-direct {v0}, Lflexjson/ObjectBinder;-><init>()V

    .line 282
    .local v0, "binder":Lflexjson/ObjectBinder;
    iget-object v4, p0, Lflexjson/JSONDeserializer;->typeFactories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 283
    .local v1, "clazz":Ljava/lang/Class;
    iget-object v4, p0, Lflexjson/JSONDeserializer;->typeFactories:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflexjson/ObjectFactory;

    invoke-virtual {v0, v1, v4}, Lflexjson/ObjectBinder;->use(Ljava/lang/Class;Lflexjson/ObjectFactory;)Lflexjson/ObjectBinder;

    goto :goto_0

    .line 285
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    iget-object v4, p0, Lflexjson/JSONDeserializer;->pathFactories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflexjson/Path;

    .line 286
    .local v3, "p":Lflexjson/Path;
    iget-object v4, p0, Lflexjson/JSONDeserializer;->pathFactories:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflexjson/ObjectFactory;

    invoke-virtual {v0, v3, v4}, Lflexjson/ObjectBinder;->use(Lflexjson/Path;Lflexjson/ObjectFactory;)Lflexjson/ObjectBinder;

    goto :goto_1

    .line 288
    .end local v3    # "p":Lflexjson/Path;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public deserialize(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    invoke-direct {p0}, Lflexjson/JSONDeserializer;->createObjectBinder()Lflexjson/ObjectBinder;

    move-result-object v0

    .line 170
    .local v0, "binder":Lflexjson/ObjectBinder;
    new-instance v1, Lflexjson/JSONTokener;

    invoke-direct {v1, p1}, Lflexjson/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserialize(Ljava/io/Reader;Lflexjson/ObjectFactory;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "factory"    # Lflexjson/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lflexjson/ObjectFactory;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lflexjson/JSONDeserializer;->use(Ljava/lang/String;Lflexjson/ObjectFactory;)Lflexjson/JSONDeserializer;

    .line 224
    invoke-direct {p0}, Lflexjson/JSONDeserializer;->createObjectBinder()Lflexjson/ObjectBinder;

    move-result-object v0

    .line 225
    .local v0, "binder":Lflexjson/ObjectBinder;
    new-instance v1, Lflexjson/JSONTokener;

    invoke-direct {v1, p1}, Lflexjson/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "root"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    invoke-direct {p0}, Lflexjson/JSONDeserializer;->createObjectBinder()Lflexjson/ObjectBinder;

    move-result-object v0

    .line 197
    .local v0, "binder":Lflexjson/ObjectBinder;
    new-instance v1, Lflexjson/JSONTokener;

    invoke-direct {v1, p1}, Lflexjson/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    invoke-direct {p0}, Lflexjson/JSONDeserializer;->createObjectBinder()Lflexjson/ObjectBinder;

    move-result-object v0

    .line 158
    .local v0, "binder":Lflexjson/ObjectBinder;
    new-instance v1, Lflexjson/JSONTokener;

    invoke-direct {v1, p1}, Lflexjson/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserialize(Ljava/lang/String;Lflexjson/ObjectFactory;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "factory"    # Lflexjson/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lflexjson/ObjectFactory;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lflexjson/JSONDeserializer;->use(Ljava/lang/String;Lflexjson/ObjectFactory;)Lflexjson/JSONDeserializer;

    .line 210
    invoke-direct {p0}, Lflexjson/JSONDeserializer;->createObjectBinder()Lflexjson/ObjectBinder;

    move-result-object v0

    .line 211
    .local v0, "binder":Lflexjson/ObjectBinder;
    new-instance v1, Lflexjson/JSONTokener;

    invoke-direct {v1, p1}, Lflexjson/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    invoke-direct {p0}, Lflexjson/JSONDeserializer;->createObjectBinder()Lflexjson/ObjectBinder;

    move-result-object v0

    .line 184
    .local v0, "binder":Lflexjson/ObjectBinder;
    new-instance v1, Lflexjson/JSONTokener;

    invoke-direct {v1, p1}, Lflexjson/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lflexjson/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserializeInto(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    .local p2, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lflexjson/factories/ExistingObjectFactory;

    invoke-direct {v0, p2}, Lflexjson/factories/ExistingObjectFactory;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lflexjson/JSONDeserializer;->deserialize(Ljava/io/Reader;Lflexjson/ObjectFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeInto(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    .local p2, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lflexjson/factories/ExistingObjectFactory;

    invoke-direct {v0, p2}, Lflexjson/factories/ExistingObjectFactory;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lflexjson/JSONDeserializer;->deserialize(Ljava/lang/String;Lflexjson/ObjectFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs use(Lflexjson/ObjectFactory;[Ljava/lang/String;)Lflexjson/JSONDeserializer;
    .locals 4
    .param p1, "factory"    # Lflexjson/ObjectFactory;
    .param p2, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflexjson/ObjectFactory;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lflexjson/JSONDeserializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 275
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lflexjson/JSONDeserializer;->use(Ljava/lang/String;Lflexjson/ObjectFactory;)Lflexjson/JSONDeserializer;

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v3    # "p":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public use(Ljava/lang/Class;Lflexjson/ObjectFactory;)Lflexjson/JSONDeserializer;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "factory"    # Lflexjson/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lflexjson/ObjectFactory;",
            ")",
            "Lflexjson/JSONDeserializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    iget-object v0, p0, Lflexjson/JSONDeserializer;->typeFactories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-object p0
.end method

.method public use(Ljava/lang/String;Lflexjson/ClassLocator;)Lflexjson/JSONDeserializer;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "locator"    # Lflexjson/ClassLocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lflexjson/ClassLocator;",
            ")",
            "Lflexjson/JSONDeserializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    iget-object v0, p0, Lflexjson/JSONDeserializer;->pathFactories:Ljava/util/Map;

    invoke-static {p1}, Lflexjson/Path;->parse(Ljava/lang/String;)Lflexjson/Path;

    move-result-object v1

    new-instance v2, Lflexjson/factories/ClassLocatorObjectFactory;

    invoke-direct {v2, p2}, Lflexjson/factories/ClassLocatorObjectFactory;-><init>(Lflexjson/ClassLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-object p0
.end method

.method public use(Ljava/lang/String;Lflexjson/ObjectFactory;)Lflexjson/JSONDeserializer;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "factory"    # Lflexjson/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lflexjson/ObjectFactory;",
            ")",
            "Lflexjson/JSONDeserializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    iget-object v0, p0, Lflexjson/JSONDeserializer;->pathFactories:Ljava/util/Map;

    invoke-static {p1}, Lflexjson/Path;->parse(Ljava/lang/String;)Lflexjson/Path;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-object p0
.end method

.method public use(Ljava/lang/String;Ljava/lang/Class;)Lflexjson/JSONDeserializer;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Lflexjson/JSONDeserializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lflexjson/JSONDeserializer;, "Lflexjson/JSONDeserializer<TT;>;"
    new-instance v0, Lflexjson/locators/StaticClassLocator;

    invoke-direct {v0, p2}, Lflexjson/locators/StaticClassLocator;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lflexjson/JSONDeserializer;->use(Ljava/lang/String;Lflexjson/ClassLocator;)Lflexjson/JSONDeserializer;

    move-result-object v0

    return-object v0
.end method
