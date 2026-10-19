.class public Lflexjson/ChainedIterator;
.super Ljava/lang/Object;
.source "ChainedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field current:I

.field iterators:[Ljava/util/Iterator;


# direct methods
.method public varargs constructor <init>([Ljava/util/Set;)V
    .locals 3
    .param p1, "sets"    # [Ljava/util/Set;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lflexjson/ChainedIterator;->current:I

    .line 27
    array-length v1, p1

    new-array v1, v1, [Ljava/util/Iterator;

    iput-object v1, p0, Lflexjson/ChainedIterator;->iterators:[Ljava/util/Iterator;

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lflexjson/ChainedIterator;->iterators:[Ljava/util/Iterator;

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 34
    iget-object v1, p0, Lflexjson/ChainedIterator;->iterators:[Ljava/util/Iterator;

    iget v2, p0, Lflexjson/ChainedIterator;->current:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    iget v1, p0, Lflexjson/ChainedIterator;->current:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lflexjson/ChainedIterator;->current:I

    .line 38
    iget v1, p0, Lflexjson/ChainedIterator;->current:I

    iget-object v2, p0, Lflexjson/ChainedIterator;->iterators:[Ljava/util/Iterator;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lflexjson/ChainedIterator;->iterators:[Ljava/util/Iterator;

    iget v2, p0, Lflexjson/ChainedIterator;->current:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lflexjson/ChainedIterator;->iterators:[Ljava/util/Iterator;

    iget v1, p0, Lflexjson/ChainedIterator;->current:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lflexjson/ChainedIterator;->iterators:[Ljava/util/Iterator;

    iget v1, p0, Lflexjson/ChainedIterator;->current:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 49
    return-void
.end method
