.class public Ltv/ouya/console/api/Receipt;
.super Ljava/lang/Object;
.source "Receipt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/Receipt;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_PARSER:Ljava/text/SimpleDateFormat;


# instance fields
.field private generatedDate:Ljava/util/Date;

.field private identifier:Ljava/lang/String;

.field private priceInCents:I

.field private purchaseDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltv/ouya/console/api/Receipt;->DATE_PARSER:Ljava/text/SimpleDateFormat;

    .line 23
    sget-object v0, Ltv/ouya/console/api/Receipt;->DATE_PARSER:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 58
    new-instance v0, Ltv/ouya/console/api/Receipt$1;

    invoke-direct {v0}, Ltv/ouya/console/api/Receipt$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/Receipt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "priceInCents"    # I
    .param p3, "purchaseDate"    # Ljava/util/Date;
    .param p4, "generatedDate"    # Ljava/util/Date;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ltv/ouya/console/api/Receipt;->identifier:Ljava/lang/String;

    .line 52
    iput p2, p0, Ltv/ouya/console/api/Receipt;->priceInCents:I

    .line 53
    iput-object p3, p0, Ltv/ouya/console/api/Receipt;->purchaseDate:Ljava/util/Date;

    .line 54
    iput-object p4, p0, Ltv/ouya/console/api/Receipt;->generatedDate:Ljava/util/Date;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    if-ne p0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/Receipt;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 185
    check-cast v0, Ltv/ouya/console/api/Receipt;

    .line 187
    .local v0, "receipt":Ltv/ouya/console/api/Receipt;
    iget v3, p0, Ltv/ouya/console/api/Receipt;->priceInCents:I

    iget v4, v0, Ltv/ouya/console/api/Receipt;->priceInCents:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 188
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/Receipt;->purchaseDate:Ljava/util/Date;

    iget-object v4, v0, Ltv/ouya/console/api/Receipt;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 189
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/Receipt;->identifier:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Receipt;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getGeneratedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ltv/ouya/console/api/Receipt;->generatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltv/ouya/console/api/Receipt;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceInCents()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Ltv/ouya/console/api/Receipt;->priceInCents:I

    return v0
.end method

.method public getPurchaseDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ltv/ouya/console/api/Receipt;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Ltv/ouya/console/api/Receipt;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 202
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltv/ouya/console/api/Receipt;->priceInCents:I

    add-int v0, v1, v2

    .line 203
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/Receipt;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 204
    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    sget-object v1, Ltv/ouya/console/api/Receipt;->DATE_PARSER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltv/ouya/console/api/Receipt;->setPurchaseDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Ltv/ouya/console/api/Receipt;->identifier:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPriceInCents(I)V
    .locals 0
    .param p1, "priceInCents"    # I

    .prologue
    .line 114
    iput p1, p0, Ltv/ouya/console/api/Receipt;->priceInCents:I

    .line 115
    return-void
.end method

.method public setPurchaseDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "purchaseDate"    # Ljava/util/Date;

    .prologue
    .line 123
    iput-object p1, p0, Ltv/ouya/console/api/Receipt;->purchaseDate:Ljava/util/Date;

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 168
    iget-object v0, p0, Ltv/ouya/console/api/Receipt;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Ltv/ouya/console/api/Receipt;->priceInCents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Ltv/ouya/console/api/Receipt;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget-object v0, p0, Ltv/ouya/console/api/Receipt;->generatedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    return-void
.end method
