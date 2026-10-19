.class public Lflexjson/JSONContext;
.super Ljava/lang/Object;
.source "JSONContext.java"


# static fields
.field private static context:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lflexjson/JSONContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private indent:I

.field private objectStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private out:Lflexjson/OutputHandler;

.field private path:Lflexjson/Path;

.field private pathExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lflexjson/PathExpression;",
            ">;"
        }
    .end annotation
.end field

.field private pathTransformerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lflexjson/Path;",
            "Lflexjson/transformer/Transformer;",
            ">;"
        }
    .end annotation
.end field

.field private prettyPrint:Z

.field private rootName:Ljava/lang/String;

.field private serializationType:Lflexjson/SerializationType;

.field private typeContextStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lflexjson/TypeContext;",
            ">;"
        }
    .end annotation
.end field

.field private typeTransformerMap:Lflexjson/transformer/TypeTransformerMap;

.field private visits:Lflexjson/ChainedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lflexjson/JSONContext$1;

    invoke-direct {v0}, Lflexjson/JSONContext$1;-><init>()V

    sput-object v0, Lflexjson/JSONContext;->context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lflexjson/JSONContext;->prettyPrint:Z

    .line 35
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lflexjson/JSONContext;->typeContextStack:Ljava/util/Stack;

    .line 37
    iput v1, p0, Lflexjson/JSONContext;->indent:I

    .line 42
    sget-object v0, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    iput-object v0, p0, Lflexjson/JSONContext;->serializationType:Lflexjson/SerializationType;

    .line 44
    new-instance v0, Lflexjson/ChainedSet;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1}, Lflexjson/ChainedSet;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lflexjson/JSONContext;->visits:Lflexjson/ChainedSet;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lflexjson/JSONContext;->objectStack:Ljava/util/LinkedList;

    .line 47
    new-instance v0, Lflexjson/Path;

    invoke-direct {v0}, Lflexjson/Path;-><init>()V

    iput-object v0, p0, Lflexjson/JSONContext;->path:Lflexjson/Path;

    .line 50
    return-void
.end method

.method public static cleanup()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lflexjson/JSONContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 331
    return-void
.end method

.method public static get()Lflexjson/JSONContext;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lflexjson/JSONContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/JSONContext;

    return-object v0
.end method

.method private getPathTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 96
    if-nez p1, :cond_0

    invoke-direct {p0, p1}, Lflexjson/JSONContext;->getTypeTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lflexjson/JSONContext;->pathTransformerMap:Ljava/util/Map;

    iget-object v1, p0, Lflexjson/JSONContext;->path:Lflexjson/Path;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/transformer/Transformer;

    goto :goto_0
.end method

.method private getTypeTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v0, p0, Lflexjson/JSONContext;->typeTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    invoke-virtual {v0, p1}, Lflexjson/transformer/TypeTransformerMap;->getTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v0

    return-object v0
.end method

.method private unicode(C)V
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 306
    iget-object v3, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v4, "\\u"

    invoke-interface {v3, v4}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 307
    move v2, p1

    .line 308
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 309
    const v3, 0xf000

    and-int/2addr v3, v2

    shr-int/lit8 v0, v3, 0xc

    .line 310
    .local v0, "digit":I
    iget-object v3, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    sget-object v4, Lflexjson/JSONSerializer;->HEX:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 311
    shl-int/lit8 v2, v2, 0x4

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "digit":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getObjectStack()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lflexjson/JSONContext;->objectStack:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getOut()Lflexjson/OutputHandler;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    return-object v0
.end method

.method public getPath()Lflexjson/Path;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lflexjson/JSONContext;->path:Lflexjson/Path;

    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lflexjson/JSONContext;->rootName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lflexjson/JSONContext;->getPathTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v0

    .line 87
    .local v0, "transformer":Lflexjson/transformer/Transformer;
    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lflexjson/JSONContext;->getTypeTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v0

    .line 91
    :cond_0
    return-object v0
.end method

.method public getVisits()Lflexjson/ChainedSet;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lflexjson/JSONContext;->visits:Lflexjson/ChainedSet;

    return-object v0
.end method

.method public isIncluded(Lflexjson/BeanProperty;)Z
    .locals 6
    .param p1, "prop"    # Lflexjson/BeanProperty;

    .prologue
    const/4 v3, 0x1

    .line 364
    iget-object v4, p0, Lflexjson/JSONContext;->pathExpressions:Ljava/util/List;

    invoke-virtual {p0, v4}, Lflexjson/JSONContext;->matches(Ljava/util/List;)Lflexjson/PathExpression;

    move-result-object v1

    .line 365
    .local v1, "expression":Lflexjson/PathExpression;
    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {v1}, Lflexjson/PathExpression;->isIncluded()Z

    move-result v3

    .line 378
    :cond_0
    :goto_0
    return v3

    .line 369
    :cond_1
    invoke-virtual {p1}, Lflexjson/BeanProperty;->isAnnotated()Ljava/lang/Boolean;

    move-result-object v0

    .line 370
    .local v0, "annotation":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 374
    :cond_2
    iget-object v4, p0, Lflexjson/JSONContext;->serializationType:Lflexjson/SerializationType;

    sget-object v5, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    if-ne v4, v5, :cond_0

    .line 375
    invoke-virtual {p1}, Lflexjson/BeanProperty;->getPropertyType()Ljava/lang/Class;

    move-result-object v2

    .line 376
    .local v2, "propType":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_3

    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isIncluded(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 384
    iget-object v3, p0, Lflexjson/JSONContext;->pathExpressions:Ljava/util/List;

    invoke-virtual {p0, v3}, Lflexjson/JSONContext;->matches(Ljava/util/List;)Lflexjson/PathExpression;

    move-result-object v0

    .line 385
    .local v0, "expression":Lflexjson/PathExpression;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lflexjson/PathExpression;->isIncluded()Z

    move-result v3

    .line 407
    :goto_0
    return v3

    .line 389
    :cond_0
    sget-object v3, Lflexjson/JSONContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflexjson/JSONContext;

    invoke-virtual {v3}, Lflexjson/JSONContext;->getRootName()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "rootName":Ljava/lang/String;
    if-eqz p2, :cond_4

    iget-object v3, p0, Lflexjson/JSONContext;->serializationType:Lflexjson/SerializationType;

    sget-object v5, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    if-ne v3, v5, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lflexjson/JSONContext;->path:Lflexjson/Path;

    invoke-virtual {v3}, Lflexjson/Path;->length()I

    move-result v3

    if-gt v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lflexjson/JSONContext;->serializationType:Lflexjson/SerializationType;

    sget-object v5, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    if-ne v3, v5, :cond_4

    if-nez v1, :cond_4

    .line 403
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 404
    .local v2, "type":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .end local v2    # "type":Ljava/lang/Class;
    :cond_4
    move v3, v4

    .line 407
    goto :goto_0
.end method

.method public isIncluded(Ljava/lang/reflect/Field;)Z
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v2, 0x1

    .line 412
    iget-object v3, p0, Lflexjson/JSONContext;->pathExpressions:Ljava/util/List;

    invoke-virtual {p0, v3}, Lflexjson/JSONContext;->matches(Ljava/util/List;)Lflexjson/PathExpression;

    move-result-object v0

    .line 413
    .local v0, "expression":Lflexjson/PathExpression;
    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Lflexjson/PathExpression;->isIncluded()Z

    move-result v2

    .line 425
    :cond_0
    :goto_0
    return v2

    .line 417
    :cond_1
    const-class v3, Lflexjson/JSON;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    const-class v2, Lflexjson/JSON;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lflexjson/JSON;

    invoke-interface {v2}, Lflexjson/JSON;->include()Z

    move-result v2

    goto :goto_0

    .line 421
    :cond_2
    iget-object v3, p0, Lflexjson/JSONContext;->serializationType:Lflexjson/SerializationType;

    sget-object v4, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    if-ne v3, v4, :cond_0

    .line 422
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 423
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isValidField(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 430
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected matches(Ljava/util/List;)Lflexjson/PathExpression;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lflexjson/PathExpression;",
            ">;)",
            "Lflexjson/PathExpression;"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "expressions":Ljava/util/List;, "Ljava/util/List<Lflexjson/PathExpression;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/PathExpression;

    .line 435
    .local v0, "expr":Lflexjson/PathExpression;
    iget-object v2, p0, Lflexjson/JSONContext;->path:Lflexjson/Path;

    invoke-virtual {v0, v2}, Lflexjson/PathExpression;->matches(Lflexjson/Path;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    .end local v0    # "expr":Lflexjson/PathExpression;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekTypeContext()Lflexjson/TypeContext;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lflexjson/JSONContext;->typeContextStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lflexjson/JSONContext;->typeContextStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/TypeContext;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popTypeContext()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lflexjson/JSONContext;->typeContextStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public pushTypeContext(Lflexjson/TypeContext;)V
    .locals 1
    .param p1, "contextEnum"    # Lflexjson/TypeContext;

    .prologue
    .line 134
    iget-object v0, p0, Lflexjson/JSONContext;->typeContextStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public serializationType(Lflexjson/SerializationType;)V
    .locals 0
    .param p1, "serializationType"    # Lflexjson/SerializationType;

    .prologue
    .line 54
    iput-object p1, p0, Lflexjson/JSONContext;->serializationType:Lflexjson/SerializationType;

    .line 55
    return-void
.end method

.method public setOut(Lflexjson/OutputHandler;)V
    .locals 0
    .param p1, "out"    # Lflexjson/OutputHandler;

    .prologue
    .line 156
    iput-object p1, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    .line 157
    return-void
.end method

.method public setPathExpressions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lflexjson/PathExpression;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "pathExpressions":Ljava/util/List;, "Ljava/util/List<Lflexjson/PathExpression;>;"
    iput-object p1, p0, Lflexjson/JSONContext;->pathExpressions:Ljava/util/List;

    .line 361
    return-void
.end method

.method public setPathTransformers(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lflexjson/Path;",
            "Lflexjson/transformer/Transformer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "pathTransformerMap":Ljava/util/Map;, "Ljava/util/Map<Lflexjson/Path;Lflexjson/transformer/Transformer;>;"
    iput-object p1, p0, Lflexjson/JSONContext;->pathTransformerMap:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public setPrettyPrint(Z)V
    .locals 0
    .param p1, "prettyPrint"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lflexjson/JSONContext;->prettyPrint:Z

    .line 131
    return-void
.end method

.method public setRootName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootName"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lflexjson/JSONContext;->rootName:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setTypeTransformers(Lflexjson/transformer/TypeTransformerMap;)V
    .locals 0
    .param p1, "typeTransformerMap"    # Lflexjson/transformer/TypeTransformerMap;

    .prologue
    .line 110
    iput-object p1, p0, Lflexjson/JSONContext;->typeTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    .line 111
    return-void
.end method

.method public setVisits(Lflexjson/ChainedSet;)V
    .locals 0
    .param p1, "visits"    # Lflexjson/ChainedSet;

    .prologue
    .line 340
    iput-object p1, p0, Lflexjson/JSONContext;->visits:Lflexjson/ChainedSet;

    .line 341
    return-void
.end method

.method public transform(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lflexjson/JSONContext;->getPathTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v0

    .line 69
    .local v0, "transformer":Lflexjson/transformer/Transformer;
    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lflexjson/JSONContext;->getTypeTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v0

    .line 73
    :cond_0
    invoke-interface {v0, p1}, Lflexjson/transformer/Transformer;->transform(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-virtual {p0}, Lflexjson/JSONContext;->peekTypeContext()Lflexjson/TypeContext;

    move-result-object v0

    .line 175
    .local v0, "currentTypeContext":Lflexjson/TypeContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflexjson/TypeContext;->getBasicType()Lflexjson/BasicType;

    move-result-object v1

    sget-object v2, Lflexjson/BasicType;->ARRAY:Lflexjson/BasicType;

    if-ne v1, v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lflexjson/JSONContext;->writeIndent()V

    .line 179
    :cond_0
    iget-object v1, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    invoke-interface {v1, p1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 180
    return-void
.end method

.method public writeCloseArray()V
    .locals 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 248
    iget v0, p0, Lflexjson/JSONContext;->indent:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lflexjson/JSONContext;->indent:I

    .line 249
    invoke-virtual {p0}, Lflexjson/JSONContext;->writeIndent()V

    .line 251
    :cond_0
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, "]"

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 252
    invoke-virtual {p0}, Lflexjson/JSONContext;->popTypeContext()V

    .line 253
    return-void
.end method

.method public writeCloseObject()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 203
    iget v0, p0, Lflexjson/JSONContext;->indent:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lflexjson/JSONContext;->indent:I

    .line 204
    invoke-virtual {p0}, Lflexjson/JSONContext;->writeIndent()V

    .line 206
    :cond_0
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, "}"

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 207
    invoke-virtual {p0}, Lflexjson/JSONContext;->popTypeContext()V

    .line 208
    return-void
.end method

.method public writeComma()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, ","

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 222
    iget-boolean v0, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 225
    :cond_0
    return-void
.end method

.method public writeIndent()V
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lflexjson/JSONContext;->indent:I

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v2, " "

    invoke-interface {v1, v2}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public writeName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v0, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lflexjson/JSONContext;->writeIndent()V

    .line 212
    :cond_0
    if-eqz p1, :cond_2

    .line 213
    invoke-virtual {p0, p1}, Lflexjson/JSONContext;->writeQuoted(Ljava/lang/String;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, ":"

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 217
    iget-boolean v0, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v1, " "

    invoke-interface {v0, v1}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 218
    :cond_1
    return-void

    .line 215
    :cond_2
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeOpenArray()Lflexjson/TypeContext;
    .locals 4

    .prologue
    .line 228
    iget-boolean v2, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lflexjson/JSONContext;->peekTypeContext()Lflexjson/TypeContext;

    move-result-object v0

    .line 230
    .local v0, "currentTypeContext":Lflexjson/TypeContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflexjson/TypeContext;->getBasicType()Lflexjson/BasicType;

    move-result-object v2

    sget-object v3, Lflexjson/BasicType;->ARRAY:Lflexjson/BasicType;

    if-ne v2, v3, :cond_0

    .line 232
    invoke-virtual {p0}, Lflexjson/JSONContext;->writeIndent()V

    .line 235
    .end local v0    # "currentTypeContext":Lflexjson/TypeContext;
    :cond_0
    new-instance v1, Lflexjson/TypeContext;

    sget-object v2, Lflexjson/BasicType;->ARRAY:Lflexjson/BasicType;

    invoke-direct {v1, v2}, Lflexjson/TypeContext;-><init>(Lflexjson/BasicType;)V

    .line 236
    .local v1, "typeContext":Lflexjson/TypeContext;
    invoke-virtual {p0, v1}, Lflexjson/JSONContext;->pushTypeContext(Lflexjson/TypeContext;)V

    .line 237
    iget-object v2, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v3, "["

    invoke-interface {v2, v3}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 238
    iget-boolean v2, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v2, :cond_1

    .line 239
    iget v2, p0, Lflexjson/JSONContext;->indent:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lflexjson/JSONContext;->indent:I

    .line 240
    iget-object v2, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v3, "\n"

    invoke-interface {v2, v3}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 242
    :cond_1
    return-object v1
.end method

.method public writeOpenObject()Lflexjson/TypeContext;
    .locals 4

    .prologue
    .line 183
    iget-boolean v2, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p0}, Lflexjson/JSONContext;->peekTypeContext()Lflexjson/TypeContext;

    move-result-object v0

    .line 185
    .local v0, "currentTypeContext":Lflexjson/TypeContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflexjson/TypeContext;->getBasicType()Lflexjson/BasicType;

    move-result-object v2

    sget-object v3, Lflexjson/BasicType;->ARRAY:Lflexjson/BasicType;

    if-ne v2, v3, :cond_0

    .line 187
    invoke-virtual {p0}, Lflexjson/JSONContext;->writeIndent()V

    .line 190
    .end local v0    # "currentTypeContext":Lflexjson/TypeContext;
    :cond_0
    new-instance v1, Lflexjson/TypeContext;

    sget-object v2, Lflexjson/BasicType;->OBJECT:Lflexjson/BasicType;

    invoke-direct {v1, v2}, Lflexjson/TypeContext;-><init>(Lflexjson/BasicType;)V

    .line 191
    .local v1, "typeContext":Lflexjson/TypeContext;
    invoke-virtual {p0, v1}, Lflexjson/JSONContext;->pushTypeContext(Lflexjson/TypeContext;)V

    .line 192
    iget-object v2, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v3, "{"

    invoke-interface {v2, v3}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 193
    iget-boolean v2, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v2, :cond_1

    .line 194
    iget v2, p0, Lflexjson/JSONContext;->indent:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lflexjson/JSONContext;->indent:I

    .line 195
    iget-object v2, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v3, "\n"

    invoke-interface {v2, v3}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 197
    :cond_1
    return-object v1
.end method

.method public writeQuoted(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-boolean v5, p0, Lflexjson/JSONContext;->prettyPrint:Z

    if-eqz v5, :cond_0

    .line 268
    invoke-virtual {p0}, Lflexjson/JSONContext;->peekTypeContext()Lflexjson/TypeContext;

    move-result-object v1

    .line 269
    .local v1, "currentTypeContext":Lflexjson/TypeContext;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lflexjson/TypeContext;->getBasicType()Lflexjson/BasicType;

    move-result-object v5

    sget-object v6, Lflexjson/BasicType;->ARRAY:Lflexjson/BasicType;

    if-ne v5, v6, :cond_0

    .line 271
    invoke-virtual {p0}, Lflexjson/JSONContext;->writeIndent()V

    .line 275
    .end local v1    # "currentTypeContext":Lflexjson/TypeContext;
    :cond_0
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\""

    invoke-interface {v5, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 278
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_9

    .line 279
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 280
    .local v0, "c":C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    .line 281
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\\\""

    invoke-interface {v5, p1, v3, v2, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 278
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_2
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_3

    .line 283
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\\\\"

    invoke-interface {v5, p1, v3, v2, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 284
    :cond_3
    const/16 v5, 0x8

    if-ne v0, v5, :cond_4

    .line 285
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\\b"

    invoke-interface {v5, p1, v3, v2, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 286
    :cond_4
    const/16 v5, 0xc

    if-ne v0, v5, :cond_5

    .line 287
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\\f"

    invoke-interface {v5, p1, v3, v2, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 288
    :cond_5
    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    .line 289
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\\n"

    invoke-interface {v5, p1, v3, v2, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 290
    :cond_6
    const/16 v5, 0xd

    if-ne v0, v5, :cond_7

    .line 291
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\\r"

    invoke-interface {v5, p1, v3, v2, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 292
    :cond_7
    const/16 v5, 0x9

    if-ne v0, v5, :cond_8

    .line 293
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\\t"

    invoke-interface {v5, p1, v3, v2, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 294
    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    invoke-interface {v5, p1, v3, v2}, Lflexjson/OutputHandler;->write(Ljava/lang/String;II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 296
    invoke-direct {p0, v0}, Lflexjson/JSONContext;->unicode(C)V

    goto :goto_1

    .line 299
    .end local v0    # "c":C
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 300
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v5, p1, v3, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;II)I

    .line 302
    :cond_a
    iget-object v5, p0, Lflexjson/JSONContext;->out:Lflexjson/OutputHandler;

    const-string v6, "\""

    invoke-interface {v5, v6}, Lflexjson/OutputHandler;->write(Ljava/lang/String;)Lflexjson/OutputHandler;

    .line 303
    return-void
.end method
