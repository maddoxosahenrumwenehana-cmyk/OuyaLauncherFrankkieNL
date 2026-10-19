.class public final enum Lflexjson/SerializationType;
.super Ljava/lang/Enum;
.source "SerializationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lflexjson/SerializationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lflexjson/SerializationType;

.field public static final enum DEEP:Lflexjson/SerializationType;

.field public static final enum SHALLOW:Lflexjson/SerializationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lflexjson/SerializationType;

    const-string v1, "DEEP"

    invoke-direct {v0, v1, v2}, Lflexjson/SerializationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lflexjson/SerializationType;->DEEP:Lflexjson/SerializationType;

    new-instance v0, Lflexjson/SerializationType;

    const-string v1, "SHALLOW"

    invoke-direct {v0, v1, v3}, Lflexjson/SerializationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lflexjson/SerializationType;

    sget-object v1, Lflexjson/SerializationType;->DEEP:Lflexjson/SerializationType;

    aput-object v1, v0, v2

    sget-object v1, Lflexjson/SerializationType;->SHALLOW:Lflexjson/SerializationType;

    aput-object v1, v0, v3

    sput-object v0, Lflexjson/SerializationType;->$VALUES:[Lflexjson/SerializationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lflexjson/SerializationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lflexjson/SerializationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lflexjson/SerializationType;

    return-object v0
.end method

.method public static values()[Lflexjson/SerializationType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lflexjson/SerializationType;->$VALUES:[Lflexjson/SerializationType;

    invoke-virtual {v0}, [Lflexjson/SerializationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lflexjson/SerializationType;

    return-object v0
.end method
