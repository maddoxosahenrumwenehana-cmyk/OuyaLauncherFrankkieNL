.class public Lflexjson/PathExpression;
.super Ljava/lang/Object;
.source "PathExpression.java"


# instance fields
.field expression:[Ljava/lang/String;

.field included:Z

.field wildcard:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "anInclude"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lflexjson/PathExpression;->wildcard:Z

    .line 30
    iput-boolean v0, p0, Lflexjson/PathExpression;->included:Z

    .line 33
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    .line 34
    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lflexjson/PathExpression;->wildcard:Z

    .line 35
    iput-boolean p2, p0, Lflexjson/PathExpression;->included:Z

    .line 36
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 84
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

    .line 86
    check-cast v0, Lflexjson/PathExpression;

    .line 88
    .local v0, "that":Lflexjson/PathExpression;
    iget-object v3, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    iget-object v4, v0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncluded()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lflexjson/PathExpression;->included:Z

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lflexjson/PathExpression;->wildcard:Z

    return v0
.end method

.method public matches(Lflexjson/Path;)Z
    .locals 7
    .param p1, "path"    # Lflexjson/Path;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "exprCurrentIndex":I
    const/4 v2, 0x0

    .line 54
    .local v2, "pathCurrentIndex":I
    :goto_0
    invoke-virtual {p1}, Lflexjson/Path;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 55
    invoke-virtual {p1}, Lflexjson/Path;->getPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "current":Ljava/lang/String;
    iget-object v5, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v5, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v5, v1, -0x1

    if-ltz v5, :cond_2

    iget-object v5, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 70
    .end local v0    # "current":Ljava/lang/String;
    :cond_3
    :goto_1
    return v3

    .line 67
    :cond_4
    if-lez v1, :cond_6

    iget-object v5, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 68
    invoke-virtual {p1}, Lflexjson/Path;->length()I

    move-result v5

    if-lt v2, v5, :cond_5

    iget-object v5, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    :cond_5
    move v3, v4

    goto :goto_1

    .line 70
    :cond_6
    invoke-virtual {p1}, Lflexjson/Path;->length()I

    move-result v5

    if-lt v2, v5, :cond_7

    invoke-virtual {p1}, Lflexjson/Path;->length()I

    move-result v5

    if-gtz v5, :cond_3

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 42
    iget-object v2, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v2, p0, Lflexjson/PathExpression;->expression:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 44
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
