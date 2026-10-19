.class public Lnl/wotuu/database/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/wotuu/database/DatabaseOpenHelper$1;,
        Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x3

.field private static instance:Lnl/wotuu/database/DatabaseOpenHelper;


# instance fields
.field private BatchManager:Lnl/wotuu/database/DatabaseBatchManager;

.field private InsertHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/DatabaseUtils$InsertHelper;",
            ">;"
        }
    .end annotation
.end field

.field public ReadableDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private TableNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;",
            ">;"
        }
    .end annotation
.end field

.field public WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private databaseSyncLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 69
    const-string v0, "frankkie_ouya_launcher"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v5, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->databaseSyncLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->TableNames:Ljava/util/HashMap;

    .line 72
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->TableNames:Ljava/util/HashMap;

    const-string v1, "appinfo"

    new-instance v2, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;

    const-string v3, "appinfo"

    const-class v4, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-direct {v2, p0, v3, v4, v5}, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;-><init>(Lnl/wotuu/database/DatabaseOpenHelper;Ljava/lang/String;Ljava/lang/Class;Lnl/wotuu/database/DatabaseOpenHelper$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->TableNames:Ljava/util/HashMap;

    const-string v1, "folder"

    new-instance v2, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;

    const-string v3, "folder"

    const-class v4, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    invoke-direct {v2, p0, v3, v4, v5}, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;-><init>(Lnl/wotuu/database/DatabaseOpenHelper;Ljava/lang/String;Ljava/lang/Class;Lnl/wotuu/database/DatabaseOpenHelper$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->TableNames:Ljava/util/HashMap;

    const-string v1, "appwidget"

    new-instance v2, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;

    const-string v3, "appwidget"

    const-class v4, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    invoke-direct {v2, p0, v3, v4, v5}, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;-><init>(Lnl/wotuu/database/DatabaseOpenHelper;Ljava/lang/String;Ljava/lang/Class;Lnl/wotuu/database/DatabaseOpenHelper$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    invoke-virtual {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->ReadableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    new-instance v0, Lnl/wotuu/database/DatabaseBatchManager;

    invoke-direct {v0, p0}, Lnl/wotuu/database/DatabaseBatchManager;-><init>(Lnl/wotuu/database/DatabaseOpenHelper;)V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->BatchManager:Lnl/wotuu/database/DatabaseBatchManager;

    .line 80
    return-void
.end method

.method public static CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lnl/wotuu/database/DatabaseOpenHelper;->instance:Lnl/wotuu/database/DatabaseOpenHelper;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lnl/wotuu/database/DatabaseOpenHelper;

    invoke-direct {v0, p0}, Lnl/wotuu/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnl/wotuu/database/DatabaseOpenHelper;->instance:Lnl/wotuu/database/DatabaseOpenHelper;

    .line 53
    :cond_0
    sget-object v0, Lnl/wotuu/database/DatabaseOpenHelper;->instance:Lnl/wotuu/database/DatabaseOpenHelper;

    return-object v0
.end method

.method public static GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lnl/wotuu/database/DatabaseOpenHelper;->instance:Lnl/wotuu/database/DatabaseOpenHelper;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call CreateInstance first!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    sget-object v0, Lnl/wotuu/database/DatabaseOpenHelper;->instance:Lnl/wotuu/database/DatabaseOpenHelper;

    return-object v0
.end method


# virtual methods
.method public CreateTable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "c"    # Ljava/lang/Class;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 228
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v9, v4

    if-nez v9, :cond_0

    .line 229
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Cannot create Create Table SQL string from class without fields."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 232
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CREATE TABLE IF NOT EXISTS `"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "` "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "result":Ljava/lang/String;
    const/4 v7, 0x0

    .line 236
    .local v7, "primaryKeyField":Ljava/lang/reflect/Field;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v3, "fieldStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_a

    aget-object v1, v0, v5

    .line 238
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v9, Lnl/wotuu/database/annotations/DatabaseExclude;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "`"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "` "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "fieldString":Ljava/lang/String;
    const-class v9, Lnl/wotuu/database/annotations/DatabasePrimaryKey;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 243
    if-eqz v7, :cond_1

    .line 244
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "Cannot have database table with two primary keys."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 246
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 247
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "Cannot have primary key that is not of Integer or int type!."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 249
    :cond_2
    move-object v7, v1

    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v2    # "fieldString":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 253
    .restart local v2    # "fieldString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 254
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 255
    :cond_6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TEXT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 257
    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Float;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Double;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 259
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " REAL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 260
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " NOT NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 267
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldString":Ljava/lang/String;
    :cond_a
    if-nez v7, :cond_b

    .line 268
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "Cannot have database table without a primary key! (For your own good.)"

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 271
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-static {v3, v10}, Lnl/wotuu/database/Utils;->Join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 273
    return-object v8
.end method

.method public GetInsertHelper(Ljava/lang/String;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lnl/wotuu/database/DatabaseOpenHelper;->InsertHelpers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/DatabaseUtils$InsertHelper;

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public GetTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 103
    iget-object v2, p0, Lnl/wotuu/database/DatabaseOpenHelper;->TableNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;

    iget-object v2, v2, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableClass:Ljava/lang/Class;

    if-ne v2, p1, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;

    iget-object v2, v2, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableName:Ljava/lang/String;

    .line 107
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public SynchronizedDelete(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "rawQuery"    # Ljava/lang/String;
    .param p2, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 210
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->BatchManager:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-virtual {v0, p1}, Lnl/wotuu/database/DatabaseBatchManager;->QueueDelete(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lnl/wotuu/database/DatabaseOpenHelper;->databaseSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SynchronizedInsert(Ljava/lang/String;Landroid/content/ContentValues;Lnl/wotuu/database/DatabaseRow;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "databaseRow"    # Lnl/wotuu/database/DatabaseRow;
    .param p4, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 144
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->BatchManager:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-virtual {v0, p1, p2, p3}, Lnl/wotuu/database/DatabaseBatchManager;->QueueInsert(Ljava/lang/String;Landroid/content/ContentValues;Lnl/wotuu/database/DatabaseRow;)V

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lnl/wotuu/database/DatabaseOpenHelper;->databaseSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p3, Lnl/wotuu/database/DatabaseRow;->id:I

    .line 149
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SynchronizedInsert(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "rawQuery"    # Ljava/lang/String;
    .param p2, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 160
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->BatchManager:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-virtual {v0, p1}, Lnl/wotuu/database/DatabaseBatchManager;->QueueInsert(Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lnl/wotuu/database/DatabaseOpenHelper;->databaseSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SynchronizedUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 178
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->BatchManager:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-virtual {v0, p1, p2, p3}, Lnl/wotuu/database/DatabaseBatchManager;->QueueUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lnl/wotuu/database/DatabaseOpenHelper;->databaseSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SynchronizedUpdate(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "rawQuery"    # Ljava/lang/String;
    .param p2, "mayQueue"    # Ljava/lang/Boolean;

    .prologue
    .line 194
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->BatchManager:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-virtual {v0, p1}, Lnl/wotuu/database/DatabaseBatchManager;->QueueUpdate(Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lnl/wotuu/database/DatabaseOpenHelper;->databaseSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 122
    iget-object v2, p0, Lnl/wotuu/database/DatabaseOpenHelper;->TableNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;

    .line 123
    .local v1, "tableNameMap":Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;
    iget-object v2, v1, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableClass:Ljava/lang/Class;

    iget-object v3, v1, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateTable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v1    # "tableNameMap":Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;
    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lnl/wotuu/database/DatabaseOpenHelper;->InsertHelpers:Ljava/util/HashMap;

    .line 115
    iget-object v2, p0, Lnl/wotuu/database/DatabaseOpenHelper;->TableNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;

    .line 116
    .local v1, "tableNameMap":Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;
    iget-object v2, p0, Lnl/wotuu/database/DatabaseOpenHelper;->InsertHelpers:Ljava/util/HashMap;

    iget-object v3, v1, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableName:Ljava/lang/String;

    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v5, v1, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableName:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v1    # "tableNameMap":Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 129
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 131
    const-class v0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    const-string v1, "appwidget"

    invoke-virtual {p0, v0, v1}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateTable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    :cond_0
    return-void
.end method
