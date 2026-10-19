.class public Lflexjson/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    .line 28
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 5
    .param p1, "fields"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    .line 31
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 32
    .local v1, "field":Ljava/lang/String;
    iget-object v4, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "field":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lflexjson/Path;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    new-instance v0, Lflexjson/Path;

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/Path;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lflexjson/Path;

    invoke-direct {v0}, Lflexjson/Path;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public enqueue(Ljava/lang/String;)Lflexjson/Path;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lflexjson/Path;

    .line 73
    .local v0, "path1":Lflexjson/Path;
    iget-object v3, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    iget-object v4, v0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public pop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[ "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 56
    .local v0, "afterFirst":Z
    iget-object v4, p0, Lflexjson/Path;->path:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "current":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "current":Ljava/lang/String;
    :cond_1
    const-string v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
