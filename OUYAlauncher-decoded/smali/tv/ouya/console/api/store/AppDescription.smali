.class public Ltv/ouya/console/api/store/AppDescription;
.super Ljava/lang/Object;
.source "AppDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/store/AppDescription$AppVersion;
    }
.end annotation


# static fields
.field private static final APP_STATUSES:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/store/AppDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyy-MM-dd\'T\'HH:mm:ss\'Z\'"


# instance fields
.field private mainImageFullUrl:Ljava/lang/String;

.field private tagNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private versions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rejected"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unsubmitted"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "submitted"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "under_review"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "approved"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "published"

    aput-object v2, v0, v1

    sput-object v0, Ltv/ouya/console/api/store/AppDescription;->APP_STATUSES:[Ljava/lang/String;

    .line 40
    new-instance v0, Ltv/ouya/console/api/store/AppDescription$1;

    invoke-direct {v0}, Ltv/ouya/console/api/store/AppDescription$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/AppDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ltv/ouya/console/api/store/AppDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p4, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    .local p5, "tagNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Ltv/ouya/console/api/store/AppDescription;->mainImageFullUrl:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    .line 98
    iput-object p5, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    const/4 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltv/ouya/console/api/store/AppDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 87
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
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDescription;->readFromJSON(Lorg/json/JSONObject;)V

    .line 83
    return-void
.end method

.method private getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;
    .locals 5

    .prologue
    .line 246
    iget-object v4, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 247
    sget-object v4, Ltv/ouya/console/api/store/AppDescription$AppVersion;->EMPTY_VERSION:Ltv/ouya/console/api/store/AppDescription$AppVersion;

    .line 254
    :goto_0
    return-object v4

    .line 249
    :cond_0
    sget-object v0, Ltv/ouya/console/api/store/AppDescription;->APP_STATUSES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 250
    .local v3, "status":Ljava/lang/String;
    iget-object v4, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    iget-object v4, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    goto :goto_0

    .line 249
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    .end local v3    # "status":Ljava/lang/String;
    :cond_2
    sget-object v4, Ltv/ouya/console/api/store/AppDescription$AppVersion;->EMPTY_VERSION:Ltv/ouya/console/api/store/AppDescription$AppVersion;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/store/AppDescription;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 170
    check-cast v0, Ltv/ouya/console/api/store/AppDescription;

    .line 172
    .local v0, "that":Ltv/ouya/console/api/store/AppDescription;
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 173
    :cond_5
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 174
    :cond_8
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-nez v3, :cond_9

    .line 175
    :cond_b
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    iget-object v4, v0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_c
    iget-object v3, v0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 260
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v4, "tv.ouya.intent.category.GAME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0}, Ltv/ouya/console/api/store/AppDescription;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 265
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 267
    const-string v4, "tv.ouya.intent.category.GAME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 268
    const-string v4, "tv.ouya.intent.category.APP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 272
    :cond_0
    if-nez v2, :cond_1

    move-object v0, v3

    .line 278
    .end local v0    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 276
    .restart local v0    # "mainIntent":Landroid/content/Intent;
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getMainImageFullUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->mainImageFullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMostRecentVersionMainImageFullUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Ltv/ouya/console/api/store/AppDescription;->getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getMainImageFullUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentVersionUploadedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Ltv/ouya/console/api/store/AppDescription;->getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUploadedAt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentVersionUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ltv/ouya/console/api/store/AppDescription;->getMostRecentVersion()Ltv/ouya/console/api/store/AppDescription$AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 183
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 184
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 185
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 182
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 183
    goto :goto_1
.end method

.method public readFromJSON(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 199
    const-string v6, "uuid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    .line 200
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    .line 202
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    .line 204
    const-string v6, "versions"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    const-string v6, "versions"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 206
    .local v5, "versionsJSON":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 207
    .local v4, "versionKeys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    new-instance v7, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Ltv/ouya/console/api/store/AppDescription$AppVersion;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "versionKeys":Ljava/util/Iterator;
    .end local v5    # "versionsJSON":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-direct {v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;-><init>()V

    .line 213
    .local v0, "fakeVersion":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    const-string v6, "version"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUuid(Ljava/lang/String;)V

    .line 215
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    const-string v7, "approved"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v0    # "fakeVersion":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    .line 220
    const-string v6, "tags"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    const-string v6, "tags"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 222
    .local v3, "tagsJSON":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 223
    iget-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "i":I
    .end local v3    # "tagsJSON":Lorg/json/JSONArray;
    :cond_2
    const-string v6, "mainImageFullUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 228
    const-string v6, "mainImageFullUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/ouya/console/api/store/AppDescription;->mainImageFullUrl:Ljava/lang/String;

    .line 230
    :cond_3
    return-void
.end method

.method public setMainImageFullUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mainImageFullUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->mainImageFullUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setVersions(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$AppVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDescription{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, -0x1

    .line 141
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->title:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->mainImageFullUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 145
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    :cond_0
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    if-nez v3, :cond_3

    .line 156
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    :cond_1
    return-void

    .line 147
    :cond_2
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v3}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v3}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getUploadedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->versions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-virtual {v3}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->getMainImageFullUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->tagNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "tagName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
