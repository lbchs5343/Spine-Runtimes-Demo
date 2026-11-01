.class public final Lg/efm;
.super Lg/os;
.source "SourceFile"


# instance fields
.field public final g:Lg/ayx;

.field public h:Z


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/os;-><init>(Lg/cyg;)V

    new-instance p1, Lg/ayx;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lg/ayx;-><init>(Lg/efm;Landroid/content/Context;)V

    iput-object p1, p0, Lg/efm;->g:Lg/ayx;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {p0}, Lg/acn;->_e()V

    :try_start_0
    invoke-virtual {p0}, Lg/efm;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "messages"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Reset local analytics data. records"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v0, v1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final k()V
    .locals 10

    const-string v0, "Error deleting app launch break from local database"

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-boolean v2, p0, Lg/efm;->h:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Lg/cyg;->v:Landroid/content/Context;

    const-string v3, "google_app_measurement_local.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_0
    if-ge v3, v2, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lg/efm;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v6, p0, Lg/efm;->h:Z

    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "messages"

    const-string v9, "type == ?"

    invoke-virtual {v5, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v7

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    iget-object v8, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v8, v7, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v6, p0, Lg/efm;->h:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :catch_1
    int-to-long v6, v4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_2

    :catch_2
    move-exception v7

    :try_start_2
    iget-object v8, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v8, v7, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v6, p0, Lg/efm;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_4
    throw v0

    :cond_5
    iget-object v0, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final l(I[B)Z
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v1}, Lg/acn;->_e()V

    iget-boolean v2, v1, Lg/efm;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "entry"

    move-object/from16 v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lg/cyg;->z:Lg/bgm;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    :goto_0
    if-ge v6, v5, :cond_c

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1}, Lg/efm;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v10, :cond_1

    :try_start_1
    iput-boolean v8, v1, Lg/efm;->h:Z

    :goto_1
    return v3

    :catchall_0
    move-exception v0

    move-object v3, v9

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v3, v9

    const/16 p2, 0x1

    const/16 v16, 0x0

    goto/16 :goto_9

    :catch_1
    move-object v3, v9

    const/16 v16, 0x0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v3, v9

    const/16 p2, 0x1

    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    invoke-virtual {v10, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_2

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const/16 p2, 0x1

    const/16 v16, 0x0

    goto/16 :goto_5

    :catch_4
    const/16 v16, 0x0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    const/16 p2, 0x1

    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_2
    :goto_2
    const-wide/32 v14, 0x186a0

    const-string v0, "messages"

    cmp-long v16, v12, v14

    if-ltz v16, :cond_3

    :try_start_3
    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v14, v4, Lg/bgm;->b:Lg/dvb;

    const-string v15, "Data loss, local db full"

    invoke-virtual {v14, v15}, Lg/dvb;->h(Ljava/lang/String;)V

    const-wide/32 v14, 0x186a1

    sub-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "rowid in (select rowid from messages order by rowid asc limit ?)"

    invoke-virtual {v10, v0, v13, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v16, v12, v14

    if-eqz v16, :cond_3

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v16, 0x0

    :try_start_4
    iget-object v3, v4, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Different delete count than expected in local db. expected, received, difference"
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 p2, 0x1

    :try_start_5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sub-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v5, v8, v9, v12}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    const/16 p2, 0x1

    goto :goto_5

    :catch_9
    move-exception v0

    const/16 p2, 0x1

    goto :goto_7

    :cond_3
    const/16 p2, 0x1

    const/16 v16, 0x0

    move-object v3, v9

    :goto_3
    invoke-virtual {v10, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return p2

    :goto_4
    move-object v9, v11

    goto/16 :goto_13

    :goto_5
    move-object v9, v10

    move-object v3, v11

    goto :goto_c

    :catch_a
    :goto_6
    move-object v9, v11

    goto :goto_10

    :goto_7
    move-object v9, v10

    move-object v3, v11

    goto/16 :goto_11

    :goto_8
    move-object v9, v3

    goto/16 :goto_13

    :goto_9
    move-object v9, v10

    goto :goto_c

    :goto_a
    move-object v9, v3

    goto :goto_10

    :goto_b
    move-object v9, v10

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v3, v9

    move-object v10, v9

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object v3, v9

    const/16 p2, 0x1

    const/16 v16, 0x0

    :goto_c
    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_d

    :catchall_3
    move-exception v0

    goto :goto_f

    :cond_5
    :goto_d
    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v4, Lg/bgm;->b:Lg/dvb;

    const-string v8, "Error writing entry to local database"

    invoke-virtual {v5, v0, v8}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lg/efm;->h:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v9, :cond_9

    :goto_e
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_12

    :goto_f
    move-object v10, v9

    goto :goto_8

    :catch_c
    move-object v3, v9

    const/16 v16, 0x0

    move-object v10, v9

    :goto_10
    int-to-long v11, v7

    :try_start_7
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    add-int/lit8 v7, v7, 0x14

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_12

    :catchall_4
    move-exception v0

    goto :goto_13

    :catch_d
    move-exception v0

    move-object v3, v9

    const/16 v16, 0x0

    :goto_11
    :try_start_8
    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v4, Lg/bgm;->b:Lg/dvb;

    const-string v8, "Error writing entry; local database full"

    invoke-virtual {v5, v0, v8}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lg/efm;->h:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v9, :cond_9

    goto :goto_e

    :cond_9
    :goto_12
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_0

    :goto_13
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_b
    throw v0

    :cond_c
    const/16 v16, 0x0

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v4, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    return v16
.end method

.method public final m()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-boolean v0, p0, Lg/efm;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lg/efm;->g:Lg/ayx;

    invoke-virtual {v0}, Lg/ayx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/efm;->h:Z

    return-object v1

    :cond_1
    return-object v0
.end method
