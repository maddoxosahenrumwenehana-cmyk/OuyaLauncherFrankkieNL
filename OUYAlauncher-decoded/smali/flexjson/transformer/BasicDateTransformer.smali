.class public Lflexjson/transformer/BasicDateTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "BasicDateTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0}, Lflexjson/transformer/BasicDateTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v0

    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 24
    return-void
.end method
