.class public Lflexjson/factories/SortedSetObjectFactory;
.super Ljava/lang/Object;
.source "SortedSetObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .param p4, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 12
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 13
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p1, p2, v1, p3}, Lflexjson/ObjectBinder;->bindIntoCollection(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 15
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 16
    .local v0, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
