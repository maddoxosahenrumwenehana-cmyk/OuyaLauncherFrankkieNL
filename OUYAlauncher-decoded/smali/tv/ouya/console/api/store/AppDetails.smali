.class public final Ltv/ouya/console/api/store/AppDetails;
.super Ljava/lang/Object;
.source "AppDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/store/AppDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkFileSize:Ljava/lang/Long;

.field public description:Ljava/lang/String;

.field public developer:Ljava/lang/String;

.field public founder:Z

.field public imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public latestVersion:Ljava/lang/String;

.field public likeCount:Ljava/lang/Long;

.field public mainImageFullUrl:Ljava/lang/String;

.field public overview:Ljava/lang/String;

.field public publishedAt:Ljava/lang/String;

.field public rating:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public versionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ltv/ouya/console/api/store/AppDetails$1;

    invoke-direct {v0}, Ltv/ouya/console/api/store/AppDetails$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/AppDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "mainImageFullUrl"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "apkFileSize"    # Ljava/lang/Long;
    .param p6, "versionNumber"    # Ljava/lang/String;
    .param p7, "publishedAt"    # Ljava/lang/String;
    .param p9, "likeCount"    # Ljava/lang/Long;
    .param p10, "overview"    # Ljava/lang/String;
    .param p11, "rating"    # Ljava/lang/String;
    .param p12, "latestVersion"    # Ljava/lang/String;
    .param p13, "founder"    # Ljava/lang/Boolean;
    .param p14, "developer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p8, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    .line 77
    iput-object p6, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    .line 78
    iput-object p7, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    .line 79
    iput-object p8, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    .line 80
    iput-object p9, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    .line 81
    iput-object p10, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    .line 82
    iput-object p11, p0, Ltv/ouya/console/api/store/AppDetails;->rating:Ljava/lang/String;

    .line 83
    iput-object p12, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    .line 84
    invoke-virtual {p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    .line 85
    iput-object p14, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    .line 86
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDetails;->readFromJSON(Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/store/AppDetails;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 93
    check-cast v0, Ltv/ouya/console/api/store/AppDetails;

    .line 95
    .local v0, "that":Ltv/ouya/console/api/store/AppDetails;
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 96
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 97
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 98
    :cond_5
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 99
    :cond_6
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 100
    :cond_7
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 101
    :cond_8
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 102
    :cond_9
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 103
    :cond_a
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 104
    :cond_b
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->rating:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->rating:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    goto/16 :goto_0

    .line 105
    :cond_c
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    goto/16 :goto_0

    .line 106
    :cond_d
    iget-boolean v3, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    iget-boolean v4, v0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    goto/16 :goto_0

    .line 107
    :cond_e
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 115
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 116
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 117
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 118
    return v0
.end method

.method public readFromJSON(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    .line 151
    const-string v2, "description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    .line 152
    const-string v2, "mainImageFullUrl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    .line 153
    const-string v2, "uuid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    .line 154
    const-string v2, "apkFileSize"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    .line 155
    const-string v2, "versionNumber"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    .line 156
    const-string v2, "publishedAt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    .line 157
    const-string v2, "contentRating"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->rating:Ljava/lang/String;

    .line 158
    const-string v2, "latestVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    .line 162
    const-string v2, "filepickerScreenshots"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 163
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 164
    :cond_0
    const-string v2, "screenshots"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 167
    :cond_1
    if-eqz v0, :cond_2

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 169
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_2
    const-string v2, "likeCount"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    .line 174
    const-string v2, "overview"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    .line 175
    const-string v2, "founder"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    .line 176
    const-string v2, "developer"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 128
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->apkFileSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->versionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->publishedAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->imageUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->likeCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->overview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->rating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->latestVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->founder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->developer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
