.class public Lflexjson/BeanProperty;
.super Ljava/lang/Object;
.source "BeanProperty.java"


# instance fields
.field private bean:Lflexjson/BeanAnalyzer;

.field private name:Ljava/lang/String;

.field protected property:Ljava/lang/reflect/Field;

.field private propertyType:Ljava/lang/Class;

.field protected readMethod:Ljava/lang/reflect/Method;

.field protected writeMethod:Ljava/lang/reflect/Method;

.field protected writeMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lflexjson/BeanAnalyzer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bean"    # Lflexjson/BeanAnalyzer;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/BeanProperty;->writeMethods:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lflexjson/BeanProperty;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    .line 21
    invoke-virtual {p2, p1}, Lflexjson/BeanAnalyzer;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Lflexjson/BeanAnalyzer;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/reflect/Field;
    .param p2, "bean"    # Lflexjson/BeanAnalyzer;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/BeanProperty;->writeMethods:Ljava/util/Map;

    .line 25
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lflexjson/BeanProperty;->name:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    .line 27
    iput-object p1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    .line 28
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    .line 29
    return-void
.end method


# virtual methods
.method public addWriteMethod(Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 67
    .local v0, "clazz":Ljava/lang/Class;
    iget-object v1, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 68
    iput-object v0, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    .line 70
    :cond_0
    iget-object v1, p0, Lflexjson/BeanProperty;->writeMethods:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lflexjson/BeanProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    return-object v0
.end method

.method public getReadMethod()Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lflexjson/BeanProperty;->readMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    invoke-virtual {v0}, Lflexjson/BeanAnalyzer;->getSuperBean()Lflexjson/BeanAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    invoke-virtual {v0}, Lflexjson/BeanAnalyzer;->getSuperBean()Lflexjson/BeanAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lflexjson/BeanProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lflexjson/BeanAnalyzer;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    invoke-virtual {v0}, Lflexjson/BeanAnalyzer;->getSuperBean()Lflexjson/BeanAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lflexjson/BeanProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lflexjson/BeanAnalyzer;->getProperty(Ljava/lang/String;)Lflexjson/BeanProperty;

    move-result-object v0

    invoke-virtual {v0}, Lflexjson/BeanProperty;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lflexjson/BeanProperty;->readMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lflexjson/BeanProperty;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 101
    .local v0, "rm":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 102
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    iget-object v2, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 104
    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getWriteMethod()Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lflexjson/BeanProperty;->writeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lflexjson/BeanProperty;->writeMethods:Ljava/util/Map;

    iget-object v1, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lflexjson/BeanProperty;->writeMethod:Ljava/lang/reflect/Method;

    .line 54
    iget-object v0, p0, Lflexjson/BeanProperty;->writeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    invoke-virtual {v0}, Lflexjson/BeanAnalyzer;->getSuperBean()Lflexjson/BeanAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    invoke-virtual {v0}, Lflexjson/BeanAnalyzer;->getSuperBean()Lflexjson/BeanAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lflexjson/BeanProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lflexjson/BeanAnalyzer;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lflexjson/BeanProperty;->bean:Lflexjson/BeanAnalyzer;

    invoke-virtual {v0}, Lflexjson/BeanAnalyzer;->getSuperBean()Lflexjson/BeanAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lflexjson/BeanProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lflexjson/BeanAnalyzer;->getProperty(Ljava/lang/String;)Lflexjson/BeanProperty;

    move-result-object v0

    invoke-virtual {v0}, Lflexjson/BeanProperty;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lflexjson/BeanProperty;->writeMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public getWriteMethods()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lflexjson/BeanProperty;->writeMethods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotated()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lflexjson/BeanProperty;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 87
    .local v0, "rm":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 88
    const-class v1, Lflexjson/JSON;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-class v1, Lflexjson/JSON;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lflexjson/JSON;

    invoke-interface {v1}, Lflexjson/JSON;->include()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 91
    :cond_0
    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    const-class v2, Lflexjson/JSON;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    const-class v2, Lflexjson/JSON;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lflexjson/JSON;

    invoke-interface {v1}, Lflexjson/JSON;->include()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReadable()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lflexjson/BeanProperty;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    .local v0, "rm":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWritable()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lflexjson/BeanProperty;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 117
    .local v0, "wm":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lflexjson/BeanProperty;->property:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setReadMethod(Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    .line 77
    iput-object p1, p0, Lflexjson/BeanProperty;->readMethod:Ljava/lang/reflect/Method;

    .line 78
    iget-object v0, p0, Lflexjson/BeanProperty;->readMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lflexjson/BeanProperty;->propertyType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iput-object p1, p0, Lflexjson/BeanProperty;->readMethod:Ljava/lang/reflect/Method;

    .line 81
    iget-object v0, p0, Lflexjson/BeanProperty;->readMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_0
.end method
