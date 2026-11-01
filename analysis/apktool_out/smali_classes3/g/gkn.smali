.class public final synthetic Lg/gkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bqq;
.implements Lg/dbd;
.implements Lg/fbg;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/boj;Lg/dwt;Lg/bto;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gkn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gkn;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkn;->a:Ljava/lang/Object;

    check-cast p3, Lg/avu;

    iput-object p3, p0, Lg/gkn;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/cga;Ljava/lang/Object;Lg/ku;I)V
    .locals 0

    iput p4, p0, Lg/gkn;->c:I

    iput-object p1, p0, Lg/gkn;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkn;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/gkn;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/gkn;->c:I

    iput-object p1, p0, Lg/gkn;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/gkn;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, Lg/gkn;->c:I

    const-string v3, "bytes"

    const-string v4, "PRAGMA page_size"

    const-string v5, "PRAGMA page_count"

    const/4 v6, 0x2

    iget-object v7, v1, Lg/gkn;->b:Ljava/lang/Object;

    iget-object v8, v1, Lg/gkn;->a:Ljava/lang/Object;

    iget-object v9, v1, Lg/gkn;->d:Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast v9, Lg/cga;

    check-cast v8, Ljava/util/HashMap;

    check-cast v7, Lg/duw;

    move-object/from16 v0, p1

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v12, Lg/gwo;->REASON_UNKNOWN:Lg/gwo;

    invoke-virtual {v12}, Lg/gwo;->b()I

    move-result v13

    if-ne v3, v13, :cond_0

    goto :goto_2

    :cond_0
    sget-object v13, Lg/gwo;->MESSAGE_TOO_OLD:Lg/gwo;

    invoke-virtual {v13}, Lg/gwo;->b()I

    move-result v14

    if-ne v3, v14, :cond_1

    :goto_1
    move-object v12, v13

    goto :goto_2

    :cond_1
    sget-object v13, Lg/gwo;->CACHE_FULL:Lg/gwo;

    invoke-virtual {v13}, Lg/gwo;->b()I

    move-result v14

    if-ne v3, v14, :cond_2

    goto :goto_1

    :cond_2
    sget-object v13, Lg/gwo;->PAYLOAD_TOO_BIG:Lg/gwo;

    invoke-virtual {v13}, Lg/gwo;->b()I

    move-result v14

    if-ne v3, v14, :cond_3

    goto :goto_1

    :cond_3
    sget-object v13, Lg/gwo;->MAX_RETRIES_REACHED:Lg/gwo;

    invoke-virtual {v13}, Lg/gwo;->b()I

    move-result v14

    if-ne v3, v14, :cond_4

    goto :goto_1

    :cond_4
    sget-object v13, Lg/gwo;->INVALID_PAYLOD:Lg/gwo;

    invoke-virtual {v13}, Lg/gwo;->b()I

    move-result v14

    if-ne v3, v14, :cond_5

    goto :goto_1

    :cond_5
    sget-object v13, Lg/gwo;->SERVER_ERROR:Lg/gwo;

    invoke-virtual {v13}, Lg/gwo;->b()I

    move-result v14

    if-ne v3, v14, :cond_6

    goto :goto_1

    :cond_6
    const-string v13, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v14, "SQLiteEventStore"

    invoke-static {v14, v13, v3}, Lg/baf;->ax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lg/gvb;

    invoke-direct {v3, v13, v14, v12}, Lg/gvb;-><init>(JLg/gwo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget v3, Lg/azl;->a:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v6, Lg/azl;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v3, v2}, Lg/azl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, v7, Lg/duw;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v0, v9, Lg/cga;->f:Lg/cqi;

    invoke-interface {v0}, Lg/cqi;->l()J

    move-result-wide v2

    invoke-virtual {v9}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v0, Lg/byy;

    invoke-direct {v0, v10, v11, v2, v3}, Lg/byy;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iput-object v0, v7, Lg/duw;->h:Ljava/lang/Object;

    invoke-virtual {v9}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    invoke-virtual {v9}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    mul-long v4, v4, v2

    sget-object v0, Lg/gnn;->a:Lg/gnn;

    iget-wide v2, v0, Lg/gnn;->d:J

    new-instance v0, Lg/edr;

    invoke-direct {v0, v4, v5, v2, v3}, Lg/edr;-><init>(JJ)V

    new-instance v2, Lg/fnn;

    invoke-direct {v2, v0}, Lg/fnn;-><init>(Lg/edr;)V

    iput-object v2, v7, Lg/duw;->e:Ljava/lang/Object;

    iget-object v0, v9, Lg/cga;->d:Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lg/duw;->f:Ljava/lang/Object;

    new-instance v0, Lg/dwq;

    iget-object v2, v7, Lg/duw;->h:Ljava/lang/Object;

    check-cast v2, Lg/byy;

    iget-object v3, v7, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v7, Lg/duw;->e:Ljava/lang/Object;

    check-cast v4, Lg/fnn;

    iget-object v5, v7, Lg/duw;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lg/dwq;-><init>(Lg/byy;Ljava/util/List;Lg/fnn;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_0
    check-cast v9, Lg/cga;

    check-cast v7, Ljava/util/ArrayList;

    check-cast v8, Lg/ku;

    move-object/from16 v0, p1

    check-cast v0, Landroid/database/Cursor;

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v12, 0x7

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    new-instance v13, Lg/daw;

    invoke-direct {v13, v11}, Lg/daw;-><init>(I)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iput-object v14, v13, Lg/daw;->g:Ljava/lang/Object;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    iput-object v14, v13, Lg/daw;->e:Ljava/lang/Object;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lg/daw;->b:Ljava/lang/Object;

    const/4 v14, 0x3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lg/daw;->d:Ljava/lang/Object;

    const/4 v14, 0x4

    if-eqz v12, :cond_c

    new-instance v12, Lg/csl;

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_b

    sget-object v14, Lg/cga;->a:Lg/cep;

    goto :goto_7

    :cond_b
    new-instance v15, Lg/cep;

    invoke-direct {v15, v14}, Lg/cep;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    :goto_7
    const/4 v15, 0x5

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    invoke-direct {v12, v14, v15}, Lg/csl;-><init>(Lg/cep;[B)V

    iput-object v12, v13, Lg/daw;->a:Ljava/lang/Object;

    move-object/from16 v20, v9

    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_c
    new-instance v12, Lg/csl;

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    sget-object v14, Lg/cga;->a:Lg/cep;

    goto :goto_8

    :cond_d
    new-instance v15, Lg/cep;

    invoke-direct {v15, v14}, Lg/cep;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    :goto_8
    invoke-virtual {v9}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const-string v22, "sequence_num"

    const-string v16, "event_payloads"

    const-string v18, "event_id = ?"

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_9
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v2, v2

    add-int/2addr v11, v2

    goto :goto_9

    :cond_e
    const/16 v18, 0x0

    new-array v2, v11, [B

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v11, v10, :cond_f

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object/from16 p1, v6

    array-length v6, v10

    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-static {v10, v9, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/2addr v1, v6

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, p1

    move-object/from16 v9, v20

    goto :goto_a

    :cond_f
    move-object/from16 v20, v9

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-direct {v12, v14, v2}, Lg/csl;-><init>(Lg/cep;[B)V

    iput-object v12, v13, Lg/daw;->a:Ljava/lang/Object;

    :goto_b
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v13, Lg/daw;->f:Ljava/lang/Object;

    :cond_10
    invoke-virtual {v13}, Lg/daw;->y()Lg/gfj;

    move-result-object v1

    new-instance v2, Lg/ess;

    invoke-direct {v2, v4, v5, v8, v1}, Lg/ess;-><init>(JLg/ku;Lg/gfj;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v9, v20

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/16 v18, 0x0

    return-object v18

    :pswitch_1
    const/16 v18, 0x0

    check-cast v9, Lg/cga;

    check-cast v7, Lg/gfj;

    iget-object v0, v7, Lg/gfj;->f:Lg/csl;

    iget-object v1, v7, Lg/gfj;->c:Ljava/lang/String;

    check-cast v8, Lg/ku;

    move-object/from16 v2, p1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v10

    invoke-virtual {v9}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    mul-long v4, v4, v10

    iget-object v10, v9, Lg/cga;->c:Lg/gnn;

    iget-wide v11, v10, Lg/gnn;->d:J

    cmp-long v13, v4, v11

    if-ltz v13, :cond_13

    const-wide/16 v2, 0x1

    sget-object v0, Lg/gwo;->CACHE_FULL:Lg/gwo;

    invoke-virtual {v9, v2, v3, v0, v1}, Lg/cga;->l(JLg/gwo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_11

    :cond_13
    invoke-static {v2, v8}, Lg/cga;->i(Landroid/database/sqlite/SQLiteDatabase;Lg/ku;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_c

    :cond_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "backend_name"

    iget-object v9, v8, Lg/ku;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, Lg/ku;->c:Lg/cq;

    invoke-static {v5}, Lg/eow;->c(Lg/cq;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "priority"

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "next_request_ms"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v8, Lg/ku;->b:[B

    if-eqz v5, :cond_15

    const-string v8, "extras"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string v5, "transport_contexts"

    move-object/from16 v8, v18

    invoke-virtual {v2, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_c
    iget v8, v10, Lg/gnn;->c:I

    iget-object v9, v0, Lg/csl;->b:[B

    array-length v10, v9

    if-gt v10, v8, :cond_16

    const/4 v10, 0x1

    goto :goto_d

    :cond_16
    const/4 v10, 0x0

    :goto_d
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "context_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "transport_name"

    invoke-virtual {v11, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v7, Lg/gfj;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "timestamp_ms"

    invoke-virtual {v11, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v4, v7, Lg/gfj;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "uptime_ms"

    invoke-virtual {v11, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v0, Lg/csl;->a:Lg/cep;

    iget-object v0, v0, Lg/cep;->a:Ljava/lang/String;

    const-string v1, "payload_encoding"

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    iget-object v1, v7, Lg/gfj;->e:Ljava/lang/Integer;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "num_attempts"

    invoke-virtual {v11, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "inline"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v10, :cond_17

    move-object v0, v9

    goto :goto_e

    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_e
    const-string v1, "payload"

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-string v0, "event_id"

    if-nez v10, :cond_18

    array-length v1, v9

    int-to-double v10, v1

    int-to-double v12, v8

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v1, v10

    const/4 v11, 0x1

    :goto_f
    if-gt v11, v1, :cond_18

    add-int/lit8 v6, v11, -0x1

    mul-int v6, v6, v8

    mul-int v10, v11, v8

    array-length v12, v9

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v6, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "sequence_num"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v10, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "event_payloads"

    const/4 v12, 0x0

    invoke-virtual {v2, v6, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_18
    iget-object v1, v7, Lg/gfj;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "value"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "event_metadata"

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_10

    :cond_19
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_11
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lg/eje;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lg/gkn;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gkn;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lg/gkn;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/gkn;->b:Ljava/lang/Object;

    check-cast v2, Lg/cvw;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, Lg/td;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lg/td;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V

    sget-object v5, Lg/fj;->INSTANCE:Lg/fj;

    iget-object v6, p1, Lg/eje;->d:Lg/frr;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4, v5}, Lg/zi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance v4, Lg/gtt;

    const/4 v5, 0x5

    invoke-direct {v4, v3, p1, v2, v5}, Lg/gtt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lg/gkn;->d:Ljava/lang/Object;

    check-cast v0, Lg/boj;

    iget-object v1, p0, Lg/gkn;->a:Ljava/lang/Object;

    check-cast v1, Lg/dwt;

    iget-object v2, p0, Lg/gkn;->b:Ljava/lang/Object;

    check-cast v2, Lg/avu;

    sget-object v3, Lg/dwm;->o:Lg/dwm;

    invoke-interface {v0, v3}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v3

    check-cast v3, Lg/dta;

    new-instance v4, Lg/fvi;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v3}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    sget-object v3, Lg/fj;->INSTANCE:Lg/fj;

    iget-object v5, p1, Lg/eje;->d:Lg/frr;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4, v3}, Lg/zi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    invoke-static {v0}, Lg/aky;->q(Lg/boj;)Lg/dlg;

    move-result-object v0

    new-instance v3, Lg/hdz;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p1, v4}, Lg/hdz;-><init>(Lg/bto;Lg/eje;Lg/bdp;)V

    const/4 p1, 0x1

    invoke-static {v0, v4, v1, v3, p1}, Lg/baf;->al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/gkn;->d:Ljava/lang/Object;

    check-cast v0, Lg/fyn;

    iget-object v1, p0, Lg/gkn;->a:Ljava/lang/Object;

    check-cast v1, Lg/ku;

    iget-object v2, p0, Lg/gkn;->b:Ljava/lang/Object;

    check-cast v2, Lg/gfj;

    iget-object v3, v0, Lg/fyn;->b:Lg/ahy;

    check-cast v3, Lg/cga;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lg/ku;->c:Lg/cq;

    const-string v5, "SQLiteEventStore"

    invoke-static {v5}, Lg/baf;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Storing event with priority="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v4, Lg/gkn;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v2, v1, v5}, Lg/gkn;-><init>(Lg/cga;Ljava/lang/Object;Lg/ku;I)V

    invoke-virtual {v3, v4}, Lg/cga;->j(Lg/fbg;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/fyn;->d:Lg/ahe;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lg/ahe;->d(Lg/ku;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method
