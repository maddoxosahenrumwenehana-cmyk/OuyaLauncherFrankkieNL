.class public Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;
.super Landroid/os/AsyncTask;
.source "DatabaseBatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/wotuu/database/DatabaseBatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/wotuu/database/DatabaseBatchManager;


# direct methods
.method public constructor <init>(Lnl/wotuu/database/DatabaseBatchManager;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessDeleteQueries()V
    .locals 5

    .prologue
    .line 233
    iget-object v3, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v3}, Lnl/wotuu/database/DatabaseBatchManager;->access$000(Lnl/wotuu/database/DatabaseBatchManager;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v3

    iget-object v2, v3, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 234
    .local v2, "writeableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 236
    :try_start_0
    iget-object v3, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v3}, Lnl/wotuu/database/DatabaseBatchManager;->access$500(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-object v3, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v3}, Lnl/wotuu/database/DatabaseBatchManager;->access$500(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;

    .line 238
    .local v1, "query":Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;
    iget-object v3, v1, Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;->rawQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "query":Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 241
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v3}, Lnl/wotuu/database/DatabaseBatchManager;->access$500(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 245
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    return-void
.end method

.method public ProcessInsertQueries()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 160
    const-string v8, "Batch processing insert queries start .."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lnl/wotuu/database/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const/4 v5, 0x0

    .line 162
    .local v5, "queryCount":I
    new-instance v6, Lnl/wotuu/database/Stopwatch;

    invoke-direct {v6}, Lnl/wotuu/database/Stopwatch;-><init>()V

    .line 164
    .local v6, "stopwatch":Lnl/wotuu/database/Stopwatch;
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$000(Lnl/wotuu/database/DatabaseBatchManager;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v8

    iget-object v7, v8, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    .local v7, "writeableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 167
    :try_start_0
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$100(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :try_start_1
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$100(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;>;>;"
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$000(Lnl/wotuu/database/DatabaseBatchManager;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInsertHelper(Ljava/lang/String;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v3

    .line 172
    .local v3, "insertHelper":Landroid/database/DatabaseUtils$InsertHelper;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;

    .line 173
    .local v4, "query":Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;
    iget-object v8, v4, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;->databaseRow:Lnl/wotuu/database/DatabaseRow;

    iget-object v10, v4, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v10}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, v8, Lnl/wotuu/database/DatabaseRow;->id:I

    .line 174
    add-int/lit8 v5, v5, 0x1

    .line 175
    goto :goto_0

    .line 178
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "insertHelper":Landroid/database/DatabaseUtils$InsertHelper;
    .end local v4    # "query":Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;
    :cond_1
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$100(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 179
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$200(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    :try_start_3
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$200(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;

    .line 182
    .local v4, "query":Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;
    iget-object v8, v4, Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;->rawQuery:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 183
    add-int/lit8 v5, v5, 0x1

    .line 184
    goto :goto_1

    .line 179
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "query":Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    :catchall_1
    move-exception v8

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 186
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_6
    iget-object v8, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseBatchManager;->access$200(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 187
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    :try_start_7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 190
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Batch processing insert queries finish! Processed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " inserts in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lnl/wotuu/database/Stopwatch;->elapsedTime()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " s."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lnl/wotuu/database/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    return-void

    .line 187
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public ProcessUpdateQueries()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 199
    const-string v5, "Batch processing update queries start .."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lnl/wotuu/database/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "queryCount":I
    new-instance v3, Lnl/wotuu/database/Stopwatch;

    invoke-direct {v3}, Lnl/wotuu/database/Stopwatch;-><init>()V

    .line 202
    .local v3, "stopwatch":Lnl/wotuu/database/Stopwatch;
    iget-object v5, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v5}, Lnl/wotuu/database/DatabaseBatchManager;->access$000(Lnl/wotuu/database/DatabaseBatchManager;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v5

    iget-object v4, v5, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 203
    .local v4, "writeableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 205
    :try_start_0
    iget-object v5, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v5}, Lnl/wotuu/database/DatabaseBatchManager;->access$300(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    iget-object v5, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v5}, Lnl/wotuu/database/DatabaseBatchManager;->access$300(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;

    .line 207
    .local v1, "query":Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;
    iget-object v5, v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;->tableName:Ljava/lang/String;

    iget-object v7, v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;->contentValues:Landroid/content/ContentValues;

    iget-object v8, v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;->whereClause:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    goto :goto_0

    .line 211
    .end local v1    # "query":Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;
    :cond_0
    iget-object v5, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v5}, Lnl/wotuu/database/DatabaseBatchManager;->access$300(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 212
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :try_start_2
    iget-object v5, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v5}, Lnl/wotuu/database/DatabaseBatchManager;->access$400(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    :try_start_3
    iget-object v5, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v5}, Lnl/wotuu/database/DatabaseBatchManager;->access$400(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;

    .line 215
    .local v1, "query":Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;
    iget-object v5, v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;->rawQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 216
    add-int/lit8 v2, v2, 0x1

    .line 217
    goto :goto_1

    .line 212
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "query":Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 224
    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 219
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_6
    iget-object v5, p0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-static {v5}, Lnl/wotuu/database/DatabaseBatchManager;->access$400(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 220
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 222
    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 224
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Batch processing update queries finish! Processed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updates in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lnl/wotuu/database/Stopwatch;->elapsedTime()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lnl/wotuu/database/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    return-void

    .line 220
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 254
    :goto_0
    :try_start_0
    invoke-static {}, Lnl/wotuu/database/DatabaseBatchManager;->access$600()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 256
    invoke-virtual {p0}, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->ProcessInsertQueries()V

    .line 258
    invoke-virtual {p0}, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->ProcessUpdateQueries()V

    .line 260
    invoke-virtual {p0}, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;->ProcessDeleteQueries()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method
