.class public final Lg/dhh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public d:J

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/dhh;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lg/dhh;->e:Ljava/lang/Object;

    iput-object p5, p0, Lg/dhh;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/dhh;->b:Ljava/lang/Object;

    iput-wide p1, p0, Lg/dhh;->d:J

    return-void
.end method

.method public constructor <init>(Lg/amr;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lg/dhh;->c:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "taskRunner"

    invoke-static {p1, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeUnit"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lg/dhh;->d:J

    invoke-virtual {p1}, Lg/amr;->l()Lg/gfw;

    move-result-object p1

    iput-object p1, p0, Lg/dhh;->e:Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lg/erq;->g:Ljava/lang/String;

    const-string v1, " ConnectionPool"

    invoke-static {p1, v0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lg/lm;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lg/lm;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v0, p0, Lg/dhh;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lg/dhh;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/dqg;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/dhh;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dhh;->b:Ljava/lang/Object;

    return-void
.end method

.method public static f(Lg/ctf;)Lg/dhh;
    .locals 6

    new-instance v0, Lg/dhh;

    iget-object v4, p0, Lg/ctf;->zza:Ljava/lang/String;

    iget-object v5, p0, Lg/ctf;->zzc:Ljava/lang/String;

    iget-object v1, p0, Lg/ctf;->zzb:Lg/cde;

    invoke-virtual {v1}, Lg/cde;->zzc()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v1, p0, Lg/ctf;->zzd:J

    invoke-direct/range {v0 .. v5}, Lg/dhh;-><init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public g(Ljava/lang/String;Lg/kk;)Lg/kk;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    invoke-virtual {v8}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lg/kk;->q()Lg/cwe;

    move-result-object v9

    iget-object v2, v1, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v2, Lg/dqg;

    iget-object v4, v2, Lg/bgf;->z:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Lg/cyg;

    iget-object v11, v2, Lg/af;->a:Lg/bsz;

    invoke-virtual {v11}, Lg/bsz;->bb()Lg/fit;

    const-string v2, "_eid"

    invoke-static {v2, v8}, Lg/fit;->t(Ljava/lang/String;Lg/kk;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const/4 v12, 0x0

    if-eqz v4, :cond_f

    const-string v5, "_ep"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v11}, Lg/bsz;->bb()Lg/fit;

    const-string v0, "_en"

    invoke-static {v0, v8}, Lg/fit;->t(Ljava/lang/String;Lg/kk;)Ljava/io/Serializable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->a:Lg/dvb;

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v4, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5

    :cond_0
    iget-object v0, v1, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v0, Lg/kk;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lg/dhh;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v0, v1, Lg/dhh;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v0, v14, v16

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v17, 0x0

    goto/16 :goto_7

    :cond_2
    :goto_0
    iget-object v0, v11, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v14, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v14, Lg/cyg;

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    :try_start_0
    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    filled-new-array {v3, v15}, [Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v5

    :try_start_1
    const-string v5, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    invoke-virtual {v0, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v15, "Main event not found"

    invoke-virtual {v0, v15}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v16

    const-wide/16 v17, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const-wide/16 v17, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_3
    :try_start_3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v15, 0x1

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v17, 0x0

    :try_start_4
    invoke-static {}, Lg/kk;->g()Lg/btw;

    move-result-object v6

    invoke-static {v6, v0}, Lg/fit;->j(Lg/crf;[B)Lg/crf;

    move-result-object v0

    check-cast v0, Lg/btw;

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/kk;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v0, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v6, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->b:Lg/dvb;

    const-string v7, "Failed to merge main event. appId, eventId"

    invoke-static {v3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v15

    invoke-virtual {v6, v7, v15, v4, v0}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, v16

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_2
    const-wide/16 v17, 0x0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_2

    :goto_3
    move-object/from16 v5, v16

    goto/16 :goto_c

    :goto_4
    move-object/from16 v5, v16

    :goto_5
    :try_start_7
    iget-object v6, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->b:Lg/dvb;

    const-string v7, "Error selecting main event"

    invoke-virtual {v6, v0, v7}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_4

    goto :goto_1

    :goto_6
    if-eqz v0, :cond_a

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v5, :cond_5

    goto/16 :goto_b

    :cond_5
    check-cast v5, Lg/kk;

    iput-object v5, v1, Lg/dhh;->e:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lg/dhh;->d:J

    invoke-virtual {v11}, Lg/bsz;->bb()Lg/fit;

    iget-object v0, v1, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v0, Lg/kk;

    invoke-static {v2, v0}, Lg/fit;->t(Ljava/lang/String;Lg/kk;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lg/dhh;->a:Ljava/lang/Object;

    :goto_7
    iget-wide v5, v1, Lg/dhh;->d:J

    const-wide/16 v14, -0x1

    add-long/2addr v5, v14

    iput-wide v5, v1, Lg/dhh;->d:J

    cmp-long v0, v5, v17

    if-gtz v0, :cond_6

    iget-object v0, v11, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v0}, Lg/bgf;->_e()V

    iget-object v4, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->c:Lg/dvb;

    const-string v5, "Clearing complex main event info. appId"

    invoke-virtual {v4, v3, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete from main_event_params where app_id=?"

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v0, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    iget-object v2, v11, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    iget-wide v5, v1, Lg/dhh;->d:J

    iget-object v0, v1, Lg/dhh;->e:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lg/kk;

    invoke-virtual/range {v2 .. v7}, Lg/ggz;->w(Ljava/lang/String;Ljava/lang/Long;JLg/kk;)V

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v2, Lg/kk;

    invoke-virtual {v2}, Lg/kk;->q()Lg/cwe;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/asm;

    invoke-virtual {v11}, Lg/bsz;->bb()Lg/fit;

    invoke-virtual {v3}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lg/fit;->p(Ljava/lang/String;Lg/kk;)Lg/asm;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v9, v0

    goto :goto_a

    :cond_9
    iget-object v0, v10, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->a:Lg/dvb;

    const-string v2, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v13, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    move-object v0, v13

    goto :goto_d

    :cond_a
    :goto_b
    iget-object v0, v10, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->a:Lg/dvb;

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v0, v13, v2, v4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v16

    :goto_c
    if-eqz v5, :cond_b

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    const-wide/16 v17, 0x0

    iput-object v4, v1, Lg/dhh;->a:Ljava/lang/Object;

    iput-object v8, v1, Lg/dhh;->e:Ljava/lang/Object;

    invoke-virtual {v11}, Lg/bsz;->bb()Lg/fit;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_epc"

    invoke-static {v3, v8}, Lg/fit;->t(Ljava/lang/String;Lg/kk;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object v2, v3

    :cond_d
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lg/dhh;->d:J

    cmp-long v5, v2, v17

    if-gtz v5, :cond_e

    iget-object v2, v10, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->a:Lg/dvb;

    const-string v3, "Complex event with zero extra param count. eventName"

    invoke-virtual {v2, v0, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_e
    iget-object v2, v11, Lg/bsz;->l:Lg/ggz;

    invoke-static {v2}, Lg/bsz;->ag(Lg/aiq;)V

    iget-wide v5, v1, Lg/dhh;->d:J

    move-object/from16 v3, p1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lg/ggz;->w(Ljava/lang/String;Ljava/lang/Long;JLg/kk;)V

    :cond_f
    :goto_d
    invoke-virtual/range {p2 .. p2}, Lg/cys;->ah()Lg/crf;

    move-result-object v2

    check-cast v2, Lg/btw;

    invoke-virtual {v2, v0}, Lg/btw;->a(Ljava/lang/String;)V

    iget-boolean v0, v2, Lg/crf;->i:Z

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lg/crf;->p()V

    iput-boolean v12, v2, Lg/crf;->i:Z

    :cond_10
    iget-object v0, v2, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-static {v0}, Lg/kk;->f(Lg/kk;)V

    iget-boolean v0, v2, Lg/crf;->i:Z

    if-eqz v0, :cond_11

    invoke-virtual {v2}, Lg/crf;->p()V

    iput-boolean v12, v2, Lg/crf;->i:Z

    :cond_11
    iget-object v0, v2, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-static {v0, v9}, Lg/kk;->e(Lg/kk;Ljava/lang/Iterable;)V

    invoke-virtual {v2}, Lg/crf;->o()Lg/cys;

    move-result-object v0

    check-cast v0, Lg/kk;

    return-object v0
.end method

.method public h(Lg/cbm;Lg/ib;Ljava/util/List;Z)Z
    .locals 5

    iget-object v0, p0, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gba;

    const-string v3, "connection"

    invoke-static {v1, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    const/4 v3, 0x1

    if-eqz p4, :cond_1

    :try_start_0
    iget-object v4, v1, Lg/gba;->s:Lg/ug;

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1, p1, p3}, Lg/gba;->aa(Lg/cbm;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v1}, Lg/ib;->s(Lg/gba;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v3

    :cond_2
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1

    throw p1

    :cond_3
    return v2
.end method

.method public i(Lg/gba;J)I
    .locals 6

    sget-object v0, Lg/erq;->c:[B

    iget-object v0, p1, Lg/gba;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v3, Lg/dqb;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "A connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lg/gba;->o:Lg/ego;

    iget-object v5, v5, Lg/ego;->a:Lg/cbm;

    iget-object v5, v5, Lg/cbm;->a:Lg/eyn;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lg/bop;->h:Lg/bop;

    sget-object v5, Lg/bop;->h:Lg/bop;

    iget-object v3, v3, Lg/dqb;->a:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Lg/bop;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p1, Lg/gba;->p:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v2, p0, Lg/dhh;->d:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lg/gba;->q:J

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public j()Lg/ctf;
    .locals 6

    new-instance v0, Lg/ctf;

    iget-object v1, p0, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lg/cde;

    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p0, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v2, v3}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lg/dhh;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-wide v4, p0, Lg/dhh;->d:J

    invoke-direct/range {v0 .. v5}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lg/dhh;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dhh;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ",name="

    const-string v4, ",params="

    const-string v5, "origin="

    invoke-static {v5, v0, v3, v1, v4}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
