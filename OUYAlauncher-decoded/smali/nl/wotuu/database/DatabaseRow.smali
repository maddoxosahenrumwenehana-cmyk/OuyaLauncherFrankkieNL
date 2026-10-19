.class public abstract Lnl/wotuu/database/DatabaseRow;
.super Ljava/lang/Object;
.source "DatabaseRow.java"

# interfaces
.implements Lnl/wotuu/database/ISaveable;


# annotations
.annotation build Lproguard/annotation/KeepPublicClassMemberNames;
.end annotation


# static fields
.field public static NO_QUERIES:Ljava/lang/Boolean;
    .annotation runtime Lnl/wotuu/database/annotations/DatabaseExclude;
    .end annotation
.end field


# instance fields
.field public id:I
    .annotation runtime Lnl/wotuu/database/annotations/DatabasePrimaryKey;
    .end annotation
.end field

.field private tableName:Ljava/lang/String;
    .annotation runtime Lnl/wotuu/database/annotations/DatabaseExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lnl/wotuu/database/DatabaseRow;->NO_QUERIES:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Table name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lnl/wotuu/database/DatabaseRow;->tableName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Table name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lnl/wotuu/database/DatabaseRow;->tableName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private GetDatabaseFieldNames()Ljava/util/List;
    .locals 7
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
    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v2, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 314
    .local v3, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 315
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    return-object v2
.end method

.method private GetDatabaseFieldValues()Ljava/util/List;
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
    .line 328
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldNames()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private GetDatabaseFieldValues(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 340
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Cannot get field values of 0 fields!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 342
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v2, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 346
    .local v3, "fields":[Ljava/lang/reflect/Field;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 348
    .local v7, "s":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 350
    .local v1, "f":Ljava/lang/reflect/Field;
    const-class v8, Lnl/wotuu/database/annotations/DatabaseExclude;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 352
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 355
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_3
    return-object v2

    .line 356
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "s":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private GetDatabaseFields()[Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "databaseFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 296
    .local v3, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 297
    .local v2, "f":Ljava/lang/reflect/Field;
    const-class v6, Lnl/wotuu/database/annotations/DatabaseExclude;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 298
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/reflect/Field;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Field;

    return-object v6
.end method

.method private GetValueOfCursor(Landroid/database/Cursor;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "index"    # I

    .prologue
    .line 273
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 275
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_2
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    :cond_3
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_4
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    :cond_5
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to assign value from cursor to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". This type is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public InDatabase()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnl/wotuu/database/DatabaseRow;->InDatabase(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public InDatabase(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, "compareColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v2

    .line 153
    .local v2, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v6, v2, Lnl/wotuu/database/DatabaseOpenHelper;->ReadableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 154
    .local v6, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT `id` FROM `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnl/wotuu/database/DatabaseRow;->tableName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "` WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "query":Ljava/lang/String;
    iget v7, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    if-ge v7, v10, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "queryAddition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "` = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-static {v5, v8}, Lnl/wotuu/database/Utils;->Join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .end local v1    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "queryAddition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    sget-object v7, Lnl/wotuu/database/DatabaseRow;->NO_QUERIES:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 170
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 172
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    .line 173
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 178
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_2
    return-object v7

    .line 166
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "`id` = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 178
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_2
.end method

.method public OnDelete()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnl/wotuu/database/DatabaseRow;->OnDelete(Ljava/lang/Boolean;)V

    .line 138
    return-void
.end method

.method public OnDelete(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 120
    iget v2, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    if-gtz v2, :cond_0

    .line 121
    new-instance v2, Landroid/database/sqlite/SQLiteMisuseException;

    const-string v3, "Cannot delete user whose ID is not set!"

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteMisuseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v0

    .line 124
    .local v0, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnl/wotuu/database/DatabaseRow;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WHERE `id` = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "query":Ljava/lang/String;
    sget-object v2, Lnl/wotuu/database/DatabaseRow;->NO_QUERIES:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {v0, v1, p1}, Lnl/wotuu/database/DatabaseOpenHelper;->SynchronizedDelete(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    :cond_1
    return-void
.end method

.method public OnInsert()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnl/wotuu/database/DatabaseRow;->OnInsert(Ljava/lang/Boolean;)V

    .line 79
    return-void
.end method

.method public OnInsert(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 51
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v3

    .line 53
    .local v3, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldNames()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldValues()Ljava/util/List;

    move-result-object v2

    .line 56
    .local v2, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 57
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v6, "Field names count does not equal field values count!"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 61
    :cond_1
    new-instance v5, Landroid/database/sqlite/SQLiteException;

    const-string v6, "Cannot insert into database if implementing class doesn\'t have any fields!"

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 63
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, "contentValues":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 65
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_3
    sget-object v5, Lnl/wotuu/database/DatabaseRow;->NO_QUERIES:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 69
    iget-object v5, p0, Lnl/wotuu/database/DatabaseRow;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0, p0, p1}, Lnl/wotuu/database/DatabaseOpenHelper;->SynchronizedInsert(Ljava/lang/String;Landroid/content/ContentValues;Lnl/wotuu/database/DatabaseRow;Ljava/lang/Boolean;)V

    .line 71
    :cond_4
    return-void
.end method

.method public OnLoad()V
    .locals 15

    .prologue
    .line 186
    iget v12, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    if-gtz v12, :cond_0

    .line 187
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Cannot load object from database whose ID is not set."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 190
    :cond_0
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v6

    .line 191
    .local v6, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v11, v6, Lnl/wotuu/database/DatabaseOpenHelper;->ReadableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    .local v11, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM `"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lnl/wotuu/database/DatabaseRow;->tableName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "` WHERE `id` = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "query":Ljava/lang/String;
    sget-object v12, Lnl/wotuu/database/DatabaseRow;->NO_QUERIES:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_4

    .line 195
    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 196
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 197
    .local v5, "fields":[Ljava/lang/reflect/Field;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 198
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 199
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "columnName":Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v4, v0, v8

    .line 201
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 203
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {p0, v2, v12, v7}, Lnl/wotuu/database/DatabaseRow;->GetValueOfCursor(Landroid/database/Cursor;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 205
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v12, Ljava/lang/NullPointerException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot fetch value from database! Type of column name "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not supported."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 200
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i":I
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot find database row with id = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lnl/wotuu/database/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    :cond_4
    return-void
.end method

.method public OnLoad(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "columnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_0

    .line 224
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load data from class \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' when 0 column names are given"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 229
    :cond_0
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v8

    iget-object v5, v8, Lnl/wotuu/database/DatabaseOpenHelper;->ReadableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 230
    .local v5, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT `id` FROM `"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnl/wotuu/database/DatabaseOpenHelper;->GetTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "`"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "query":Ljava/lang/String;
    invoke-direct {p0, p1}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 235
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v4, "queryAddition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 237
    .local v0, "count":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 238
    .local v6, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " `"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "` = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 240
    goto :goto_0

    .line 242
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 243
    new-instance v8, Lnl/wotuu/database/exceptions/DatabaseLoadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load data from class \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' when query would not contain WHERE clause."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lnl/wotuu/database/exceptions/DatabaseLoadException;-><init>(Lnl/wotuu/database/DatabaseRow;Ljava/lang/String;)V

    throw v8

    .line 246
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-static {v4, v9}, Lnl/wotuu/database/Utils;->Join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 251
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_3

    .line 252
    new-instance v8, Lnl/wotuu/database/exceptions/DatabaseLoadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Didn\'t find a matching row to load this DatabaseRow from (query: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lnl/wotuu/database/exceptions/DatabaseLoadException;-><init>(Lnl/wotuu/database/DatabaseRow;Ljava/lang/String;)V

    throw v8

    .line 253
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 254
    new-instance v8, Lnl/wotuu/database/exceptions/DatabaseLoadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found multiple rows matching the query (\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\') ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lnl/wotuu/database/exceptions/DatabaseLoadException;-><init>(Lnl/wotuu/database/DatabaseRow;Ljava/lang/String;)V

    throw v8

    .line 255
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v8, v11, :cond_5

    .line 256
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 258
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    .line 260
    invoke-virtual {p0}, Lnl/wotuu/database/DatabaseRow;->OnLoad()V

    .line 262
    :cond_5
    return-void
.end method

.method public OnUpdate()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnl/wotuu/database/DatabaseRow;->OnUpdate(Ljava/lang/Boolean;)V

    .line 114
    return-void
.end method

.method public OnUpdate(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 85
    iget v6, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    if-gtz v6, :cond_0

    .line 86
    new-instance v6, Landroid/database/sqlite/SQLiteException;

    const-string v7, "Cannot update user whose ID is not set!"

    invoke-direct {v6, v7}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    :cond_0
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v3

    .line 90
    .local v3, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldNames()Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnl/wotuu/database/DatabaseRow;->GetDatabaseFieldValues()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 94
    :cond_1
    new-instance v6, Landroid/database/sqlite/SQLiteException;

    const-string v7, "Cannot update database if implementing class doesn\'t have any fields!"

    invoke-direct {v6, v7}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "contentValues":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 98
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "`id` = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lnl/wotuu/database/DatabaseRow;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\';"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "whereClause":Ljava/lang/String;
    sget-object v6, Lnl/wotuu/database/DatabaseRow;->NO_QUERIES:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 104
    iget-object v6, p0, Lnl/wotuu/database/DatabaseRow;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0, v5, p1}, Lnl/wotuu/database/DatabaseOpenHelper;->SynchronizedUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    :cond_4
    return-void
.end method
