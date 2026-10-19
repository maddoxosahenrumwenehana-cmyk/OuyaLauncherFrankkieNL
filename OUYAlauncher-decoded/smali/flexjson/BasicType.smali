.class public final enum Lflexjson/BasicType;
.super Ljava/lang/Enum;
.source "BasicType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lflexjson/BasicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lflexjson/BasicType;

.field public static final enum ARRAY:Lflexjson/BasicType;

.field public static final enum OBJECT:Lflexjson/BasicType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lflexjson/BasicType;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1, v2}, Lflexjson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lflexjson/BasicType;->OBJECT:Lflexjson/BasicType;

    new-instance v0, Lflexjson/BasicType;

    const-string v1, "ARRAY"

    invoke-direct {v0, v1, v3}, Lflexjson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lflexjson/BasicType;->ARRAY:Lflexjson/BasicType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lflexjson/BasicType;

    sget-object v1, Lflexjson/BasicType;->OBJECT:Lflexjson/BasicType;

    aput-object v1, v0, v2

    sget-object v1, Lflexjson/BasicType;->ARRAY:Lflexjson/BasicType;

    aput-object v1, v0, v3

    sput-object v0, Lflexjson/BasicType;->$VALUES:[Lflexjson/BasicType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lflexjson/BasicType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lflexjson/BasicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lflexjson/BasicType;

    return-object v0
.end method

.method public static values()[Lflexjson/BasicType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lflexjson/BasicType;->$VALUES:[Lflexjson/BasicType;

    invoke-virtual {v0}, [Lflexjson/BasicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lflexjson/BasicType;

    return-object v0
.end method
