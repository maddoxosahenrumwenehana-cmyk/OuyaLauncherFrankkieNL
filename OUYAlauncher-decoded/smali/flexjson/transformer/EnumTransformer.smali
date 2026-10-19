.class public Lflexjson/transformer/EnumTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "EnumTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0}, Lflexjson/transformer/EnumTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v0

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/JSONContext;->writeQuoted(Ljava/lang/String;)V

    .line 22
    return-void
.end method
