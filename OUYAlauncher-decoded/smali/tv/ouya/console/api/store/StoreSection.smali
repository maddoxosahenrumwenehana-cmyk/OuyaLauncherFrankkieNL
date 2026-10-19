.class public Ltv/ouya/console/api/store/StoreSection;
.super Ljava/lang/Object;
.source "StoreSection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/store/StoreSection$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/store/StoreSection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private subsections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/StoreSection;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ltv/ouya/console/api/store/StoreSection$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ltv/ouya/console/api/store/StoreSection$1;

    invoke-direct {v0}, Ltv/ouya/console/api/store/StoreSection$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/StoreSection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/StoreSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "subsections":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/store/StoreSection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/api/store/StoreSection$Type;->valueOf(Ljava/lang/String;)Ltv/ouya/console/api/store/StoreSection$Type;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    .line 59
    iput-object p3, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/StoreSection;->readFromJSON(Lorg/json/JSONObject;)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/store/StoreSection;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 91
    check-cast v0, Ltv/ouya/console/api/store/StoreSection;

    .line 93
    .local v0, "that":Ltv/ouya/console/api/store/StoreSection;
    iget-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 94
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    iget-object v4, v0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    invoke-virtual {v3, v4}, Ltv/ouya/console/api/store/StoreSection$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 95
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    iget-object v4, v0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubsections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/StoreSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ltv/ouya/console/api/store/StoreSection$Type;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 103
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    invoke-virtual {v2}, Ltv/ouya/console/api/store/StoreSection$Type;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 104
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 105
    return v0
.end method

.method public readFromJSON(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    .line 130
    :try_start_0
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/api/store/StoreSection$Type;->valueOf(Ljava/lang/String;)Ltv/ouya/console/api/store/StoreSection$Type;

    move-result-object v3

    iput-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    .line 135
    const-string v3, "contents"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    const-string v3, "contents"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 137
    .local v0, "contents":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 138
    iget-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    new-instance v4, Ltv/ouya/console/api/store/StoreSection;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltv/ouya/console/api/store/StoreSection;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 128
    .end local v0    # "contents":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Ltv/ouya/console/api/store/StoreSection$Type;->LIST:Ltv/ouya/console/api/store/StoreSection$Type;

    iput-object v3, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    goto :goto_1

    .line 141
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSubsections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/StoreSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "subsections":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/store/StoreSection;>;"
    iput-object p1, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setType(Ltv/ouya/console/api/store/StoreSection$Type;)V
    .locals 0
    .param p1, "type"    # Ltv/ouya/console/api/store/StoreSection$Type;

    .prologue
    .line 75
    iput-object p1, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    .line 76
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-object v1, p0, Ltv/ouya/console/api/store/StoreSection;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Ltv/ouya/console/api/store/StoreSection;->type:Ltv/ouya/console/api/store/StoreSection$Type;

    invoke-virtual {v1}, Ltv/ouya/console/api/store/StoreSection$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Ltv/ouya/console/api/store/StoreSection;->subsections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/ouya/console/api/store/StoreSection;

    invoke-virtual {v1, p1, p2}, Ltv/ouya/console/api/store/StoreSection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method
