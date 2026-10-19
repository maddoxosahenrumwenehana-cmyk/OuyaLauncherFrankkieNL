.class public Lflexjson/ChainedSet;
.super Ljava/lang/Object;
.source "ChainedSet.java"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field child:Ljava/util/Set;

.field parent:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/Set;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    .line 30
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 74
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 87
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 70
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Ljava/util/Set;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lflexjson/ChainedIterator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Set;

    const/4 v2, 0x0

    iget-object v3, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lflexjson/ChainedIterator;-><init>([Ljava/util/Set;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 82
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 78
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v3, p0, Lflexjson/ChainedSet;->child:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "carr":[Ljava/lang/Object;
    iget-object v3, p0, Lflexjson/ChainedSet;->parent:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "parr":[Ljava/lang/Object;
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v1, v3, [Ljava/lang/Object;

    .line 52
    .local v1, "combined":[Ljava/lang/Object;
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v3, v0

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemeneted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
