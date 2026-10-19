.class public Lflexjson/transformer/DateTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "DateTransformer.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# instance fields
.field simpleDateFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lflexjson/transformer/DateTransformer;->simpleDateFormatter:Ljava/text/SimpleDateFormat;

    .line 22
    return-void
.end method


# virtual methods
.method public instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .param p4, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lflexjson/transformer/DateTransformer;->simpleDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Lflexjson/JSONException;

    const-string v2, "Failed to parse %s with %s pattern."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lflexjson/transformer/DateTransformer;->simpleDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public transform(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0}, Lflexjson/transformer/DateTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v0

    iget-object v1, p0, Lflexjson/transformer/DateTransformer;->simpleDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/JSONContext;->writeQuoted(Ljava/lang/String;)V

    .line 27
    return-void
.end method
