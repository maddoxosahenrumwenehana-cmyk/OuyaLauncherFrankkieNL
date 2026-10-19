.class final Lflexjson/JSONContext$1;
.super Ljava/lang/ThreadLocal;
.source "JSONContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflexjson/JSONContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lflexjson/JSONContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lflexjson/JSONContext;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lflexjson/JSONContext;

    invoke-direct {v0}, Lflexjson/JSONContext;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lflexjson/JSONContext$1;->initialValue()Lflexjson/JSONContext;

    move-result-object v0

    return-object v0
.end method
