.class public final Lg/dqg;
.super Lg/aiq;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Long;

.field public c:Lg/tl;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Long;

.field public j:Ljava/util/HashSet;


# virtual methods
.method public final i()V
    .locals 0

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 46

    move-object/from16 v1, p0

    const-string v8, "current_results"

    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lg/cyg;

    invoke-static/range {p1 .. p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lg/ckd;->k(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    iput-object v0, v1, Lg/dqg;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lg/dqg;->j:Ljava/util/HashSet;

    new-instance v0, Lg/tl;

    invoke-direct {v0}, Lg/tl;-><init>()V

    iput-object v0, v1, Lg/dqg;->c:Lg/tl;

    move-object/from16 v0, p4

    iput-object v0, v1, Lg/dqg;->b:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v1, Lg/dqg;->h:Ljava/lang/Long;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/kk;

    invoke-virtual {v2}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lg/fdd;->c()V

    iget-object v0, v9, Lg/cyg;->e:Lg/dsd;

    iget-object v3, v9, Lg/cyg;->e:Lg/dsd;

    iget-object v4, v1, Lg/dqg;->g:Ljava/lang/String;

    sget-object v5, Lg/gad;->aj:Lg/tw;

    invoke-virtual {v0, v4, v5}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v12

    invoke-static {}, Lg/fdd;->c()V

    iget-object v0, v1, Lg/dqg;->g:Ljava/lang/String;

    sget-object v4, Lg/gad;->r:Lg/tw;

    invoke-virtual {v3, v0, v4}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v13

    iget-object v14, v1, Lg/af;->a:Lg/bsz;

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v4

    iget-object v5, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v4}, Lg/aiq;->n()V

    invoke-virtual {v4}, Lg/bgf;->_e()V

    invoke-static {v5}, Lg/ckd;->bf(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "current_session_count"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {v4}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const-string v15, "events"

    const-string v10, "app_id = ?"

    invoke-virtual {v6, v15, v0, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v4, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-virtual {v4}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v4

    invoke-virtual {v4}, Lg/bgm;->v()Lg/dvb;

    move-result-object v4

    const-string v6, "Error resetting session-scoped event counts. appId"

    invoke-static {v5}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v10, "Failed to merge filter. appId"

    const-string v15, "Database error querying filters. appId"

    const-string v4, "data"

    const-string v5, "audience_id"

    if-eqz v13, :cond_9

    if-eqz v12, :cond_9

    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v7

    iget-object v6, v7, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    iget-object v11, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-static {v11}, Lg/ckd;->bf(Ljava/lang/String;)V

    move/from16 v16, v2

    new-instance v2, Lg/tl;

    invoke-direct {v2}, Lg/tl;-><init>()V

    invoke-virtual {v7}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_1
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v19

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "event_filters"

    const-string v20, "app_id=?"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v17, :cond_6

    move-object/from16 v17, v4

    :goto_2
    const/4 v4, 0x1

    :try_start_3
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lg/azv;->b()Lg/hae;

    move-result-object v4

    invoke-static {v4, v0}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object v0

    check-cast v0, Lg/hae;

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/azv;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Lg/azv;->o()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v19, v6

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v18, :cond_4

    move-object/from16 v19, v6

    :try_start_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v6}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_4
    move-object/from16 v19, v6

    move-object/from16 v6, v18

    :goto_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v19, v6

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v4

    invoke-virtual {v4}, Lg/bgm;->v()Lg/dvb;

    move-result-object v4

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v4, v6, v10, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v2

    goto :goto_d

    :cond_5
    move-object/from16 v6, v19

    goto :goto_2

    :cond_6
    move-object/from16 v17, v4

    :goto_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_7
    move-object v11, v0

    goto :goto_d

    :goto_8
    move-object v6, v7

    goto :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    goto :goto_a

    :goto_9
    const/4 v6, 0x0

    goto :goto_c

    :goto_a
    const/4 v7, 0x0

    :goto_b
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v2, v4, v15, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_7

    goto :goto_6

    :goto_c
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    move/from16 v16, v2

    move-object/from16 v17, v4

    goto :goto_7

    :goto_d
    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v0

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v4, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lg/aiq;->n()V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-static {v4}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    :try_start_8
    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v20

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const-string v19, "audience_filter_values"

    const-string v21, "app_id=?"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    move-object/from16 v21, v5

    goto/16 :goto_18

    :catchall_2
    move-exception v0

    move-object/from16 v22, v6

    goto/16 :goto_13

    :catch_6
    move-exception v0

    move-object/from16 v18, v2

    :goto_e
    move-object/from16 v20, v4

    :goto_f
    move-object/from16 v21, v5

    :goto_10
    move-object/from16 v22, v6

    goto/16 :goto_14

    :cond_a
    :try_start_a
    new-instance v7, Lg/tl;

    invoke-direct {v7}, Lg/tl;-><init>()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v18, v2

    :goto_11
    const/4 v2, 0x0

    :try_start_b
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-static {}, Lg/gpz;->h()Lg/gxg;

    move-result-object v2

    invoke-static {v2, v0}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object v0

    check-cast v0, Lg/gxg;

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/gpz;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    goto :goto_12

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual/range {v18 .. v18}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v20, v4

    :try_start_e
    const-string v4, "Failed to merge filter results. appId, audienceId, error"
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v21, v5

    :try_start_f
    invoke-static/range {v20 .. v20}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object/from16 v22, v6

    :try_start_10
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v0}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-nez v0, :cond_b

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    goto :goto_18

    :cond_b
    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    goto :goto_11

    :catchall_3
    move-exception v0

    goto :goto_13

    :catch_9
    move-exception v0

    goto :goto_14

    :catch_a
    move-exception v0

    goto :goto_10

    :catch_b
    move-exception v0

    goto :goto_f

    :goto_13
    move-object/from16 v6, v22

    goto/16 :goto_64

    :goto_14
    move-object/from16 v6, v22

    goto :goto_17

    :catchall_4
    move-exception v0

    goto :goto_15

    :catch_c
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_16

    :goto_15
    const/4 v6, 0x0

    goto/16 :goto_64

    :goto_16
    const/4 v6, 0x0

    :goto_17
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    const-string v4, "Database error querying filter results. appId"

    invoke-static/range {v20 .. v20}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v2, v5, v4, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v2, v0

    :goto_18
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v22, v9

    :cond_d
    move-object/from16 v12, v17

    move-object/from16 v9, v21

    goto/16 :goto_35

    :cond_e
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v16, :cond_26

    iget-object v5, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v6

    iget-object v7, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v6}, Lg/aiq;->n()V

    invoke-virtual {v6}, Lg/bgf;->_e()V

    invoke-static {v7}, Lg/ckd;->bf(Ljava/lang/String;)V

    new-instance v0, Lg/tl;

    invoke-direct {v0}, Lg/tl;-><init>()V

    move-object/from16 v16, v4

    invoke-virtual {v6}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object/from16 v18, v5

    :try_start_12
    filled-new-array {v7, v7}, [Ljava/lang/String;

    move-result-object v5
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v19, v7

    :try_start_13
    const-string v7, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    invoke-virtual {v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_f
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v7}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const/4 v5, 0x1

    goto :goto_19

    :catchall_5
    move-exception v0

    goto :goto_1b

    :catch_d
    move-exception v0

    goto :goto_1e

    :goto_19
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_d
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-nez v5, :cond_f

    :goto_1a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    :cond_11
    :try_start_15
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_1a

    :goto_1b
    move-object v6, v4

    goto/16 :goto_29

    :catchall_6
    move-exception v0

    goto :goto_1c

    :catch_e
    move-exception v0

    goto :goto_1d

    :goto_1c
    const/4 v6, 0x0

    goto/16 :goto_29

    :catch_f
    move-exception v0

    move-object/from16 v19, v7

    :goto_1d
    const/4 v4, 0x0

    :goto_1e
    :try_start_16
    iget-object v5, v6, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    invoke-virtual {v5}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v5

    invoke-virtual {v5}, Lg/bgm;->v()Lg/dvb;

    move-result-object v5

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static/range {v19 .. v19}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v7

    invoke-virtual {v5, v7, v6, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v4, :cond_12

    goto :goto_1a

    :cond_12
    :goto_1f
    invoke-static/range {v18 .. v18}, Lg/ckd;->bf(Ljava/lang/String;)V

    new-instance v4, Lg/tl;

    invoke-direct {v4}, Lg/tl;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    move-object/from16 v22, v9

    move/from16 v20, v12

    goto/16 :goto_28

    :cond_14
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gpz;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_16

    :cond_15
    move-object/from16 v25, v3

    move-object/from16 v18, v5

    move-object/from16 v22, v9

    move/from16 v20, v12

    goto/16 :goto_27

    :cond_16
    move-object/from16 v18, v5

    invoke-virtual {v14}, Lg/bsz;->bb()Lg/fit;

    move-result-object v5

    invoke-virtual {v7}, Lg/gpz;->q()Ljava/util/List;

    move-result-object v20

    move-object/from16 v22, v9

    move-object/from16 v9, v20

    check-cast v9, Lg/boh;

    invoke-virtual {v5, v9, v0}, Lg/fit;->am(Lg/boh;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_24

    invoke-virtual {v7}, Lg/cys;->ah()Lg/crf;

    move-result-object v9

    check-cast v9, Lg/gxg;

    invoke-virtual {v9}, Lg/gxg;->c()V

    move/from16 v20, v12

    iget-boolean v12, v9, Lg/crf;->i:Z

    if-eqz v12, :cond_17

    invoke-virtual {v9}, Lg/crf;->p()V

    const/4 v12, 0x0

    iput-boolean v12, v9, Lg/crf;->i:Z

    :cond_17
    iget-object v12, v9, Lg/crf;->k:Lg/cys;

    check-cast v12, Lg/gpz;

    invoke-static {v12, v5}, Lg/gpz;->b(Lg/gpz;Ljava/util/List;)V

    invoke-virtual {v14}, Lg/bsz;->bb()Lg/fit;

    move-result-object v5

    invoke-virtual {v7}, Lg/gpz;->s()Ljava/util/List;

    move-result-object v12

    check-cast v12, Lg/boh;

    invoke-virtual {v5, v12, v0}, Lg/fit;->am(Lg/boh;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v9}, Lg/gxg;->b()V

    iget-boolean v12, v9, Lg/crf;->i:Z

    if-eqz v12, :cond_18

    invoke-virtual {v9}, Lg/crf;->p()V

    const/4 v12, 0x0

    iput-boolean v12, v9, Lg/crf;->i:Z

    :cond_18
    iget-object v12, v9, Lg/crf;->k:Lg/cys;

    check-cast v12, Lg/gpz;

    invoke-static {v12, v5}, Lg/gpz;->l(Lg/gpz;Ljava/lang/Iterable;)V

    invoke-static {}, Lg/gzi;->c()V

    sget-object v5, Lg/gad;->aw:Lg/tw;

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v5}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lg/gpz;->w()Lg/cwe;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_21
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v12, v24

    check-cast v12, Lg/bvd;

    invoke-virtual {v12}, Lg/bvd;->e()I

    move-result v24

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    move-object/from16 v3, v25

    const/4 v12, 0x0

    goto :goto_21

    :cond_1a
    move-object/from16 v25, v3

    invoke-virtual {v9}, Lg/gxg;->f()V

    iget-boolean v3, v9, Lg/crf;->i:Z

    if-eqz v3, :cond_1b

    invoke-virtual {v9}, Lg/crf;->p()V

    const/4 v12, 0x0

    iput-boolean v12, v9, Lg/crf;->i:Z

    :cond_1b
    iget-object v3, v9, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/gpz;

    invoke-static {v3, v5}, Lg/gpz;->e(Lg/gpz;Ljava/util/ArrayList;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lg/gpz;->r()Lg/cwe;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/ezy;

    invoke-virtual {v7}, Lg/ezy;->i()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_1d
    invoke-virtual {v9}, Lg/gxg;->e()V

    iget-boolean v0, v9, Lg/crf;->i:Z

    if-eqz v0, :cond_1e

    invoke-virtual {v9}, Lg/crf;->p()V

    const/4 v12, 0x0

    iput-boolean v12, v9, Lg/crf;->i:Z

    :cond_1e
    iget-object v0, v9, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/gpz;

    invoke-static {v0, v3}, Lg/gpz;->k(Lg/gpz;Ljava/lang/Iterable;)V

    goto :goto_25

    :cond_1f
    move-object/from16 v25, v3

    const/4 v3, 0x0

    :goto_23
    invoke-virtual {v7}, Lg/gpz;->p()I

    move-result v5

    if-ge v3, v5, :cond_21

    invoke-virtual {v7, v3}, Lg/gpz;->u(I)Lg/bvd;

    move-result-object v5

    invoke-virtual {v5}, Lg/bvd;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v9, v3}, Lg/gxg;->a(I)V

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v7}, Lg/gpz;->o()I

    move-result v5

    if-ge v3, v5, :cond_23

    invoke-virtual {v7, v3}, Lg/gpz;->t(I)Lg/ezy;

    move-result-object v5

    invoke-virtual {v5}, Lg/ezy;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v9, v3}, Lg/gxg;->d(I)V

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_23
    :goto_25
    invoke-virtual {v9}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/gpz;

    invoke-virtual {v4, v6, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    move-object/from16 v5, v18

    move-object/from16 v0, v19

    move/from16 v12, v20

    move-object/from16 v9, v22

    move-object/from16 v3, v25

    goto/16 :goto_20

    :cond_24
    move-object/from16 v5, v18

    move-object/from16 v0, v19

    move-object/from16 v9, v22

    goto/16 :goto_20

    :goto_27
    invoke-virtual {v4, v6, v7}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :goto_28
    move-object v9, v4

    goto :goto_2a

    :goto_29
    if-eqz v6, :cond_25

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_25
    throw v0

    :cond_26
    move-object/from16 v16, v4

    move-object/from16 v22, v9

    move/from16 v20, v12

    move-object v9, v2

    :goto_2a
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gpz;

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Lg/tl;

    invoke-direct {v6}, Lg/tl;-><init>()V

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lg/gpz;->p()I

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    move-object/from16 v19, v3

    goto :goto_2e

    :cond_28
    invoke-virtual {v3}, Lg/gpz;->w()Lg/cwe;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_29
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lg/bvd;

    invoke-virtual/range {v16 .. v16}, Lg/bvd;->h()Z

    move-result v18

    if-eqz v18, :cond_29

    invoke-virtual/range {v16 .. v16}, Lg/bvd;->e()I

    move-result v18

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lg/bvd;->g()Z

    move-result v18

    if-eqz v18, :cond_2a

    invoke-virtual/range {v16 .. v16}, Lg/bvd;->f()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v45, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v45

    goto :goto_2d

    :cond_2a
    move-object/from16 v16, v7

    const/4 v7, 0x0

    :goto_2d
    invoke-virtual {v6, v3, v7}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v16

    move-object/from16 v3, v19

    goto :goto_2c

    :goto_2e
    new-instance v7, Lg/tl;

    invoke-direct {v7}, Lg/tl;-><init>()V

    if-eqz v19, :cond_2b

    invoke-virtual/range {v19 .. v19}, Lg/gpz;->o()I

    move-result v3

    if-nez v3, :cond_2c

    :cond_2b
    move-object/from16 v23, v9

    move-object/from16 v24, v12

    goto :goto_30

    :cond_2c
    invoke-virtual/range {v19 .. v19}, Lg/gpz;->r()Lg/cwe;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v3

    move-object/from16 v3, v16

    check-cast v3, Lg/ezy;

    invoke-virtual {v3}, Lg/ezy;->g()Z

    move-result v16

    if-eqz v16, :cond_2d

    invoke-virtual {v3}, Lg/ezy;->f()I

    move-result v16

    if-lez v16, :cond_2d

    invoke-virtual {v3}, Lg/ezy;->i()I

    move-result v16

    move-object/from16 v23, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3}, Lg/ezy;->f()I

    move-result v16

    move-object/from16 v24, v12

    add-int/lit8 v12, v16, -0x1

    invoke-virtual {v3, v12}, Lg/ezy;->e(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v9, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v18

    move-object/from16 v9, v23

    move-object/from16 v12, v24

    goto :goto_2f

    :cond_2d
    move-object/from16 v3, v18

    goto :goto_2f

    :goto_30
    if-eqz v19, :cond_30

    const/4 v3, 0x0

    :goto_31
    invoke-virtual/range {v19 .. v19}, Lg/gpz;->n()I

    move-result v9

    mul-int/lit8 v9, v9, 0x40

    if-ge v3, v9, :cond_30

    invoke-virtual/range {v19 .. v19}, Lg/gpz;->s()Ljava/util/List;

    move-result-object v9

    check-cast v9, Lg/boh;

    invoke-static {v9, v3}, Lg/fit;->k(Lg/boh;I)Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v9

    invoke-virtual {v9}, Lg/bgm;->w()Lg/dvb;

    move-result-object v9

    const-string v12, "Filter already evaluated. audience ID, filter ID"

    move/from16 v16, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v0, v12, v13}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->set(I)V

    invoke-virtual/range {v19 .. v19}, Lg/gpz;->q()Ljava/util/List;

    move-result-object v9

    check-cast v9, Lg/boh;

    invoke-static {v9, v3}, Lg/fit;->k(Lg/boh;I)Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_32

    :cond_2e
    move/from16 v16, v13

    :cond_2f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    add-int/lit8 v3, v3, 0x1

    move/from16 v13, v16

    goto :goto_31

    :cond_30
    move/from16 v16, v13

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gpz;

    if-eqz v16, :cond_31

    if-eqz v20, :cond_31

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_31

    iget-object v12, v1, Lg/dqg;->h:Ljava/lang/Long;

    if-eqz v12, :cond_31

    iget-object v12, v1, Lg/dqg;->b:Ljava/lang/Long;

    if-nez v12, :cond_32

    :cond_31
    move-object/from16 v18, v0

    goto :goto_34

    :cond_32
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_33
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/azv;

    invoke-virtual {v12}, Lg/azv;->m()I

    move-result v13

    move-object/from16 v18, v0

    iget-object v0, v1, Lg/dqg;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    invoke-virtual {v12}, Lg/azv;->j()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v1, Lg/dqg;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    div-long v25, v25, v27

    :cond_33
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v0, v12}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    invoke-virtual {v7, v0}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v0, v12}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    move-object/from16 v0, v18

    goto :goto_33

    :goto_34
    new-instance v0, Lg/akb;

    move-object v9, v2

    iget-object v2, v1, Lg/dqg;->g:Ljava/lang/String;

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v9

    move-object/from16 v9, v21

    invoke-direct/range {v0 .. v7}, Lg/akb;-><init>(Lg/dqg;Ljava/lang/String;Lg/gpz;Ljava/util/BitSet;Ljava/util/BitSet;Lg/tl;Lg/tl;)V

    iget-object v2, v1, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v2, v13, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v13, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v23

    move-object/from16 v17, v12

    move-object/from16 v12, v24

    goto/16 :goto_2b

    :goto_35
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v6, "Skipping failed audience ID"

    if-eqz v0, :cond_36

    goto/16 :goto_48

    :cond_36
    new-instance v7, Lg/dhh;

    invoke-direct {v7, v1}, Lg/dhh;-><init>(Lg/dqg;)V

    new-instance v11, Lg/tl;

    invoke-direct {v11}, Lg/tl;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_37
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/kk;

    iget-object v2, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Lg/dhh;->g(Ljava/lang/String;Lg/kk;)Lg/kk;

    move-result-object v26

    if-eqz v26, :cond_37

    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v2

    iget-object v3, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v4, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v5

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lg/ggz;->as(Ljava/lang/String;Ljava/lang/String;)Lg/bwz;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-virtual {v3}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    invoke-static {v4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v2

    invoke-virtual {v3}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v3

    invoke-virtual {v3, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v0, v2, v5, v3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v27, Lg/bwz;

    invoke-virtual/range {p2 .. p2}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Lg/kk;->k()J

    move-result-wide v36

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v28, v4

    invoke-direct/range {v27 .. v43}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v2, v27

    goto :goto_36

    :cond_38
    new-instance v28, Lg/bwz;

    iget-object v2, v0, Lg/bwz;->e:Ljava/lang/String;

    iget-object v3, v0, Lg/bwz;->h:Ljava/lang/String;

    iget-wide v4, v0, Lg/bwz;->j:J

    const-wide/16 v16, 0x1

    add-long v31, v4, v16

    iget-wide v4, v0, Lg/bwz;->c:J

    add-long v33, v4, v16

    iget-wide v4, v0, Lg/bwz;->d:J

    add-long v35, v4, v16

    iget-wide v4, v0, Lg/bwz;->f:J

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    iget-wide v2, v0, Lg/bwz;->k:J

    move-wide/from16 v39, v2

    iget-object v2, v0, Lg/bwz;->a:Ljava/lang/Long;

    iget-object v3, v0, Lg/bwz;->g:Ljava/lang/Long;

    move-object/from16 v41, v2

    iget-object v2, v0, Lg/bwz;->i:Ljava/lang/Long;

    iget-object v0, v0, Lg/bwz;->b:Ljava/lang/Boolean;

    move-object/from16 v44, v0

    move-object/from16 v43, v2

    move-object/from16 v42, v3

    move-wide/from16 v37, v4

    invoke-direct/range {v28 .. v44}, Lg/bwz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v2, v28

    :goto_36
    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg/ggz;->bi(Lg/bwz;)V

    invoke-virtual/range {v26 .. v26}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3e

    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v0

    iget-object v4, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v5, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lg/aiq;->n()V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-static {v5}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v3}, Lg/ckd;->bf(Ljava/lang/String;)V

    move-object/from16 v29, v2

    new-instance v2, Lg/tl;

    invoke-direct {v2}, Lg/tl;-><init>()V

    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v30

    :try_start_17
    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v32

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v34

    const-string v31, "event_filters"

    const-string v33, "app_id=? AND event_name=?"
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_15
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v35, 0x0

    move-object/from16 p2, v4

    :try_start_18
    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :try_start_19
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_13
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-eqz v0, :cond_3b

    move-object/from16 v16, v5

    :goto_37
    const/4 v5, 0x1

    :try_start_1a
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_11
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    invoke-static {}, Lg/azv;->b()Lg/hae;

    move-result-object v5

    invoke-static {v5, v0}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object v0

    check-cast v0, Lg/hae;

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/azv;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_11
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    const/4 v5, 0x0

    :try_start_1c
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_11
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    if-nez v17, :cond_39

    move-object/from16 v18, v4

    :try_start_1d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v4}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :catchall_7
    move-exception v0

    goto :goto_3b

    :catch_10
    move-exception v0

    goto :goto_3f

    :cond_39
    move-object/from16 v18, v4

    move-object/from16 v4, v17

    :goto_38
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :catchall_8
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_3b

    :catch_11
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_3f

    :catch_12
    move-exception v0

    move-object/from16 v18, v4

    invoke-virtual/range {p2 .. p2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v4

    invoke-virtual {v4}, Lg/bgm;->v()Lg/dvb;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_39
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    if-nez v0, :cond_3a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto :goto_40

    :cond_3a
    move-object/from16 v4, v18

    goto :goto_37

    :cond_3b
    move-object/from16 v18, v4

    move-object/from16 v16, v5

    :try_start_1e
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_10
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :goto_3a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_40

    :goto_3b
    move-object/from16 v6, v18

    goto :goto_41

    :catch_13
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v16, v5

    goto :goto_3f

    :catchall_9
    move-exception v0

    goto :goto_3d

    :catch_14
    move-exception v0

    :goto_3c
    move-object/from16 v16, v5

    goto :goto_3e

    :catch_15
    move-exception v0

    move-object/from16 p2, v4

    goto :goto_3c

    :goto_3d
    const/4 v6, 0x0

    goto :goto_41

    :goto_3e
    const/16 v18, 0x0

    :goto_3f
    :try_start_1f
    invoke-virtual/range {p2 .. p2}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->v()Lg/dvb;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v2, v4, v15, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    if-eqz v18, :cond_3c

    goto :goto_3a

    :cond_3c
    :goto_40
    invoke-virtual {v11, v3, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :goto_41
    if-eqz v6, :cond_3d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v0

    :cond_3e
    move-object/from16 v29, v2

    :goto_42
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_43
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Lg/dqg;->j:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->w()Lg/dvb;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_43

    :cond_3f
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v4, 0x1

    :goto_44
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/azv;

    new-instance v23, Lg/gmf;

    move-object v5, v2

    iget-object v2, v1, Lg/dqg;->g:Ljava/lang/String;

    move-object/from16 v18, v5

    const/4 v5, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object/from16 v10, v18

    move-object/from16 v7, v29

    move-object/from16 v18, v0

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v5}, Lg/gmf;-><init>(Lg/dqg;Ljava/lang/String;ILg/cys;I)V

    iget-object v2, v1, Lg/dqg;->b:Ljava/lang/Long;

    iget-object v5, v1, Lg/dqg;->h:Ljava/lang/Long;

    invoke-virtual {v4}, Lg/azv;->m()I

    move-result v4

    iget-object v0, v1, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v0, v10}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/akb;

    if-nez v0, :cond_40

    const/16 v30, 0x0

    :goto_45
    move-object/from16 v24, v2

    move/from16 p2, v3

    goto :goto_46

    :cond_40
    iget-object v0, v0, Lg/akb;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    move/from16 v30, v4

    goto :goto_45

    :goto_46
    iget-wide v2, v7, Lg/bwz;->j:J

    move-wide/from16 v27, v2

    move-object/from16 v25, v5

    move-object/from16 v29, v7

    invoke-virtual/range {v23 .. v30}, Lg/gmf;->m(Ljava/lang/Long;Ljava/lang/Long;Lg/kk;JLg/bwz;Z)Z

    move-result v4

    move-object/from16 v0, v23

    if-eqz v4, :cond_41

    invoke-virtual {v1, v10}, Lg/dqg;->o(Ljava/lang/Integer;)Lg/akb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg/akb;->j(Lg/gmf;)V

    move/from16 v3, p2

    move-object v2, v10

    move-object/from16 v0, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    goto :goto_44

    :cond_41
    iget-object v0, v1, Lg/dqg;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_42
    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object v10, v2

    :goto_47
    if-nez v4, :cond_43

    iget-object v0, v1, Lg/dqg;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_43
    move-object/from16 v0, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    goto/16 :goto_43

    :cond_44
    :goto_48
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    goto/16 :goto_61

    :cond_45
    new-instance v7, Lg/tl;

    invoke-direct {v7}, Lg/tl;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lg/ne;

    invoke-virtual {v11}, Lg/ne;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4b

    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v0

    iget-object v3, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v4, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lg/aiq;->n()V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-static {v4}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    new-instance v5, Lg/tl;

    invoke-direct {v5}, Lg/tl;-><init>()V

    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    :try_start_20
    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v25

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v27

    const-string v24, "property_filters"

    const-string v26, "app_id=? AND property_name=?"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v23 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_1b
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_1a
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    if-eqz v0, :cond_48

    move-object/from16 p2, v10

    :goto_4a
    const/4 v10, 0x1

    :try_start_22
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_17
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    :try_start_23
    invoke-static {}, Lg/dfx;->b()Lg/dvp;

    move-result-object v10

    invoke-static {v10, v0}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object v0

    check-cast v0, Lg/dvp;

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/dfx;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_17
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    const/4 v10, 0x0

    :try_start_24
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_17
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    if-nez v16, :cond_46

    move-object/from16 p3, v3

    :try_start_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :catchall_a
    move-exception v0

    goto :goto_4f

    :catch_16
    move-exception v0

    :goto_4b
    move-object/from16 v16, v4

    goto/16 :goto_52

    :cond_46
    move-object/from16 p3, v3

    move-object/from16 v3, v16

    :goto_4c
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    goto :goto_4d

    :catch_17
    move-exception v0

    move-object/from16 p3, v3

    goto :goto_4b

    :catch_18
    move-exception v0

    move-object/from16 p3, v3

    invoke-virtual/range {p3 .. p3}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->v()Lg/dvb;

    move-result-object v3

    const-string v10, "Failed to merge filter"
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_25} :catch_16
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    move-object/from16 v16, v4

    :try_start_26
    invoke-static/range {v16 .. v16}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_26} :catch_19
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    if-nez v0, :cond_47

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_53

    :cond_47
    move-object/from16 v3, p3

    move-object/from16 v4, v16

    goto :goto_4a

    :catch_19
    move-exception v0

    goto :goto_52

    :cond_48
    move-object/from16 p3, v3

    move-object/from16 v16, v4

    move-object/from16 p2, v10

    :try_start_27
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_27} :catch_19
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :goto_4e
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_53

    :goto_4f
    move-object v6, v13

    goto :goto_55

    :catch_1a
    move-exception v0

    move-object/from16 p3, v3

    move-object/from16 v16, v4

    move-object/from16 p2, v10

    goto :goto_52

    :catchall_b
    move-exception v0

    goto :goto_50

    :catch_1b
    move-exception v0

    move-object/from16 p3, v3

    move-object/from16 v16, v4

    move-object/from16 p2, v10

    goto :goto_51

    :goto_50
    const/4 v6, 0x0

    goto :goto_55

    :goto_51
    const/4 v13, 0x0

    :goto_52
    :try_start_28
    invoke-virtual/range {p3 .. p3}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v3

    invoke-virtual {v3}, Lg/bgm;->v()Lg/dvb;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v4

    invoke-virtual {v3, v4, v15, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    if-eqz v13, :cond_49

    goto :goto_4e

    :cond_49
    :goto_53
    invoke-virtual {v7, v2, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    move-object v10, v0

    goto :goto_56

    :goto_55
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v0

    :cond_4b
    move-object/from16 p2, v10

    goto :goto_54

    :goto_56
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_57
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v1, Lg/dqg;->j:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->w()Lg/dvb;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4c
    move-object/from16 v10, p2

    goto/16 :goto_49

    :cond_4d
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v4, 0x1

    :goto_58
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lg/dfx;

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->al()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->w()Lg/dvb;

    move-result-object v2

    invoke-virtual {v4}, Lg/dfx;->j()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v4}, Lg/dfx;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_59
    move/from16 p3, v3

    goto :goto_5a

    :cond_4e
    const/4 v5, 0x0

    goto :goto_59

    :goto_5a
    invoke-virtual/range {v22 .. v22}, Lg/cyg;->ap()Lg/ebl;

    move-result-object v3

    move-object/from16 v17, v6

    invoke-virtual {v4}, Lg/dfx;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Evaluating filter. audience, filter, property"

    invoke-virtual {v2, v6, v0, v5, v3}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v22 .. v22}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v2

    invoke-virtual {v2}, Lg/bgm;->w()Lg/dvb;

    move-result-object v2

    invoke-virtual {v14}, Lg/bsz;->bb()Lg/fit;

    move-result-object v3

    invoke-virtual {v3, v4}, Lg/fit;->as(Lg/dfx;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Filter definition"

    invoke-virtual {v2, v3, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5b

    :cond_4f
    move/from16 p3, v3

    move-object/from16 v17, v6

    :goto_5b
    invoke-virtual {v4}, Lg/dfx;->j()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v4}, Lg/dfx;->e()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_51

    :cond_50
    move-object v6, v0

    goto :goto_5d

    :cond_51
    move-object v2, v0

    new-instance v0, Lg/gmf;

    move-object v3, v2

    iget-object v2, v1, Lg/dqg;->g:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v6, v3

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lg/gmf;-><init>(Lg/dqg;Ljava/lang/String;ILg/cys;I)V

    iget-object v2, v1, Lg/dqg;->b:Ljava/lang/Long;

    iget-object v5, v1, Lg/dqg;->h:Ljava/lang/Long;

    invoke-virtual {v4}, Lg/dfx;->e()I

    move-result v4

    iget-object v3, v1, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v3, v6}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/akb;

    if-nez v3, :cond_52

    const/4 v4, 0x0

    goto :goto_5c

    :cond_52
    iget-object v3, v3, Lg/akb;->b:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    :goto_5c
    invoke-virtual {v0, v2, v5, v11, v4}, Lg/gmf;->n(Ljava/lang/Long;Ljava/lang/Long;Lg/ne;Z)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v1, v6}, Lg/dqg;->o(Ljava/lang/Integer;)Lg/akb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg/akb;->j(Lg/gmf;)V

    move/from16 v3, p3

    move-object v0, v6

    move-object/from16 v6, v17

    goto/16 :goto_58

    :cond_53
    iget-object v0, v1, Lg/dqg;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :goto_5d
    invoke-virtual/range {v22 .. v22}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->x()Lg/dvb;

    move-result-object v0

    iget-object v2, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-static {v2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v2

    invoke-virtual {v4}, Lg/dfx;->j()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v4}, Lg/dfx;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5e

    :cond_54
    const/4 v3, 0x0

    :goto_5e
    const-string v4, "Invalid property filter ID. appId, id"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_60

    :cond_55
    move-object/from16 v17, v6

    move-object v6, v0

    :goto_5f
    if-nez v4, :cond_56

    :goto_60
    iget-object v0, v1, Lg/dqg;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_56
    move-object/from16 v6, v17

    goto/16 :goto_57

    :cond_57
    :goto_61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v0}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v3, v1, Lg/dqg;->j:Ljava/util/HashSet;

    check-cast v0, Lg/bxl;

    invoke-virtual {v0, v3}, Lg/bxl;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lg/bxl;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_58
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v5, v0}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/akb;

    invoke-static {v5}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Lg/akb;->i(I)Lg/ajk;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lg/bsz;->ao()Lg/ggz;

    move-result-object v5

    iget-object v6, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    iget-object v7, v1, Lg/dqg;->g:Ljava/lang/String;

    invoke-virtual {v4}, Lg/ajk;->h()Lg/gpz;

    move-result-object v4

    invoke-virtual {v5}, Lg/aiq;->n()V

    invoke-virtual {v5}, Lg/bgf;->_e()V

    invoke-static {v7}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v4}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lg/cir;->z()[B

    move-result-object v4

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "app_id"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v10, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_29
    invoke-virtual {v5}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "audience_filter_values"
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_29} :catch_1d

    const/4 v5, 0x5

    const/4 v12, 0x0

    :try_start_2a
    invoke-virtual {v0, v4, v12, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-nez v0, :cond_58

    invoke-virtual {v6}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v0

    invoke-virtual {v0}, Lg/bgm;->v()Lg/dvb;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    invoke-static {v7}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_2a} :catch_1c

    goto :goto_62

    :catch_1c
    move-exception v0

    goto :goto_63

    :catch_1d
    move-exception v0

    const/4 v12, 0x0

    :goto_63
    invoke-virtual {v6}, Lg/cyg;->zzay()Lg/bgm;

    move-result-object v4

    invoke-virtual {v4}, Lg/bgm;->v()Lg/dvb;

    move-result-object v4

    const-string v5, "Error storing filter results. appId"

    invoke-static {v7}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_62

    :cond_59
    return-object v2

    :catchall_c
    move-exception v0

    :goto_64
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
.end method

.method public final o(Ljava/lang/Integer;)Lg/akb;
    .locals 2

    iget-object v0, p0, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/akb;

    return-object p1

    :cond_0
    new-instance v0, Lg/akb;

    iget-object v1, p0, Lg/dqg;->g:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lg/akb;-><init>(Lg/dqg;Ljava/lang/String;)V

    iget-object v1, p0, Lg/dqg;->c:Lg/tl;

    invoke-virtual {v1, p1, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
