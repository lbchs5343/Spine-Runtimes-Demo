.class public final Lg/dly;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/egu;

.field public final b:Lg/gtb;

.field public final c:Lg/fhq;

.field public final d:Lg/dsp;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lg/gkr;

.field public final g:Lg/fkj;

.field public final h:Lg/flk;

.field public final i:Ljava/lang/String;

.field public final j:Landroidx/work/impl/WorkDatabase;

.field public final k:Landroid/content/Context;

.field public final l:Lg/gg;

.field public final m:Ljava/lang/String;

.field public final n:Lg/dwm;


# direct methods
.method public constructor <init>(Lg/gxv;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v0, Lg/fkj;

    iput-object v0, p0, Lg/dly;->g:Lg/fkj;

    iget-object v1, p1, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lg/dly;->k:Landroid/content/Context;

    iget-object v0, v0, Lg/fkj;->h:Ljava/lang/String;

    iput-object v0, p0, Lg/dly;->m:Ljava/lang/String;

    iget-object v1, p1, Lg/gxv;->f:Ljava/lang/Object;

    check-cast v1, Lg/dsp;

    iput-object v1, p0, Lg/dly;->d:Lg/dsp;

    iget-object v1, p1, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v1, Lg/gkr;

    iput-object v1, p0, Lg/dly;->f:Lg/gkr;

    iget-object v1, p1, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v1, Lg/flk;

    iput-object v1, p0, Lg/dly;->h:Lg/flk;

    iget-object v1, v1, Lg/flk;->c:Lg/dwm;

    iput-object v1, p0, Lg/dly;->n:Lg/dwm;

    iget-object v1, p1, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v1, Lg/egu;

    iput-object v1, p0, Lg/dly;->a:Lg/egu;

    iget-object v1, p1, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    iput-object v1, p0, Lg/dly;->j:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v2

    iput-object v2, p0, Lg/dly;->l:Lg/gg;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->d()Lg/gtb;

    move-result-object v1

    iput-object v1, p0, Lg/dly;->b:Lg/gtb;

    iget-object p1, p1, Lg/gxv;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lg/dly;->e:Ljava/util/ArrayList;

    const-string v1, "Work [ id="

    const-string v2, ", tags={ "

    invoke-static {v1, v0, v2}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const-string v3, ","

    invoke-static {p1, v3, v1, v2}, Lg/gsv;->bh(Ljava/util/Collection;Ljava/lang/String;Lg/and;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, " } ]"

    invoke-static {v0, p1, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/dly;->i:Ljava/lang/String;

    new-instance p1, Lg/fhq;

    invoke-direct {p1}, Lg/fhq;-><init>()V

    iput-object p1, p0, Lg/dly;->c:Lg/fhq;

    return-void
.end method

.method public static final o(Lg/dly;Lg/w;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lg/dly;->m:Ljava/lang/String;

    iget-object v3, v1, Lg/dly;->f:Lg/gkr;

    iget-object v4, v1, Lg/dly;->j:Landroidx/work/impl/WorkDatabase;

    iget-object v5, v1, Lg/dly;->h:Lg/flk;

    iget-object v6, v5, Lg/flk;->h:Lg/ao;

    iget-object v7, v1, Lg/dly;->g:Lg/fkj;

    instance-of v8, v0, Lg/gnw;

    if-eqz v8, :cond_0

    move-object v8, v0

    check-cast v8, Lg/gnw;

    iget v9, v8, Lg/gnw;->label:I

    const/high16 v10, -0x80000000

    and-int v11, v9, v10

    if-eqz v11, :cond_0

    sub-int/2addr v9, v10

    iput v9, v8, Lg/gnw;->label:I

    goto :goto_0

    :cond_0
    new-instance v8, Lg/gnw;

    invoke-direct {v8, v1, v0}, Lg/gnw;-><init>(Lg/dly;Lg/w;)V

    :goto_0
    iget-object v0, v8, Lg/gnw;->result:Ljava/lang/Object;

    sget-object v9, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v10, v8, Lg/gnw;->label:I

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    if-ne v10, v11, :cond_1

    iget-object v1, v8, Lg/gnw;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/work/WorkerParameters;

    iget-object v1, v8, Lg/gnw;->L$0:Ljava/lang/Object;

    check-cast v1, Lg/dly;

    :try_start_0
    invoke-static {v0}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object v10, v5, Lg/flk;->e:Lg/gjq;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/baf;->am()Z

    move-result v12

    iget-object v13, v7, Lg/fkj;->v:Ljava/lang/String;

    iget-object v14, v7, Lg/fkj;->u:Ljava/lang/String;

    iget-object v15, v7, Lg/fkj;->e:Ljava/lang/String;

    const/16 p1, 0x1

    const/16 v16, 0x0

    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Lg/fkj;->hashCode()I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v6, v11, :cond_3

    invoke-static {v13}, Lg/baf;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lg/frg;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {v13}, Lg/baf;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "asyncTraceBegin"

    :try_start_1
    sget-object v17, Lg/baf;->k:Ljava/lang/reflect/Method;

    const/16 v18, 0x2

    move/from16 v19, v0

    const/4 v0, 0x3

    if-nez v17, :cond_4

    move-object/from16 v17, v6

    const-class v6, Landroid/os/Trace;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v20, v9

    :try_start_2
    new-array v9, v0, [Ljava/lang/Class;

    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v21, v9, v16

    const-class v21, Ljava/lang/String;

    aput-object v21, v9, p1

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v9, v18

    invoke-virtual {v6, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lg/baf;->k:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v20, v9

    goto :goto_2

    :cond_4
    move-object/from16 v17, v6

    move-object/from16 v20, v9

    :goto_1
    sget-object v6, Lg/baf;->k:Ljava/lang/reflect/Method;

    sget-wide v21, Lg/baf;->t:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v9, v0, v16

    aput-object v17, v0, p1

    aput-object v11, v0, v18

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_2
    invoke-static {v0}, Lg/baf;->be(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v20, v9

    :goto_4
    new-instance v0, Lg/gmx;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lg/gmx;-><init>(Lg/dly;I)V

    invoke-virtual {v4, v0}, Lg/gac;->ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v6, "shouldExit"

    invoke-static {v0, v6}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v9, Lg/cmt;

    invoke-direct {v9}, Lg/cmt;-><init>()V

    goto/16 :goto_c

    :cond_6
    invoke-virtual {v7}, Lg/fkj;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lg/fkj;->g:Lg/dwa;

    goto/16 :goto_8

    :cond_7
    iget-object v0, v5, Lg/flk;->g:Lg/bfy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "className"

    invoke-static {v15, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/eqo;->a:Ljava/lang/String;

    :try_start_3
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type androidx.work.InputMerger"

    invoke-static {v0, v6}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Landroidx/work/OverwritingInputMerger;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v6

    sget-object v9, Lg/eqo;->a:Ljava/lang/String;

    const-string v11, "Trouble instantiating "

    invoke-virtual {v11, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11, v0}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_8

    sget-object v0, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    const-string v2, "Could not create Input Merger "

    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lg/eme;

    invoke-direct {v9}, Lg/eme;-><init>()V

    goto/16 :goto_c

    :cond_8
    iget-object v0, v7, Lg/fkj;->g:Lg/dwa;

    invoke-static {v0}, Lg/cro;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v6, v1, Lg/dly;->l:Lg/gg;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v11, 0x1

    invoke-static {v11, v9}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v9

    invoke-virtual {v9, v11, v2}, Lg/fcg;->e(ILjava/lang/String;)V

    iget-object v6, v6, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v6}, Lg/gac;->al()V

    invoke-virtual {v6, v9}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lg/dwa;->c([B)Lg/dwa;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lg/fcg;->p()V

    invoke-static {v11, v0}, Lg/gsv;->bl(Ljava/lang/Iterable;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v6, Lg/evf;

    const/4 v9, 0x7

    invoke-direct {v6, v9}, Lg/evf;-><init>(I)V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/dwa;

    iget-object v11, v11, Lg/dwa;->b:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    const-string v15, "unmodifiableMap(values)"

    invoke-static {v11, v15}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v6, v9}, Lg/evf;->r(Ljava/util/HashMap;)V

    new-instance v0, Lg/dwa;

    iget-object v6, v6, Lg/evf;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v6}, Lg/dwa;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v0}, Lg/bff;->k(Lg/dwa;)[B

    :goto_8
    new-instance v6, Landroidx/work/WorkerParameters;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v9, v1, Lg/dly;->e:Ljava/util/ArrayList;

    iget-object v11, v1, Lg/dly;->d:Lg/dsp;

    iget v7, v7, Lg/fkj;->b:I

    iget-object v15, v5, Lg/flk;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v5, v5, Lg/flk;->j:Lg/nt;

    move-object/from16 v17, v8

    new-instance v8, Lg/cxy;

    invoke-direct {v8, v4, v3}, Lg/cxy;-><init>(Landroidx/work/impl/WorkDatabase;Lg/gkr;)V

    move/from16 v18, v12

    new-instance v12, Lg/dcr;

    move-object/from16 v19, v13

    iget-object v13, v1, Lg/dly;->a:Lg/egu;

    invoke-direct {v12, v4, v13, v3}, Lg/dcr;-><init>(Landroidx/work/impl/WorkDatabase;Lg/egu;Lg/gkr;)V

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v2, v6, Landroidx/work/WorkerParameters;->e:Ljava/util/UUID;

    iput-object v0, v6, Landroidx/work/WorkerParameters;->h:Lg/dwa;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v6, Landroidx/work/WorkerParameters;->j:Ljava/util/HashSet;

    iput-object v11, v6, Landroidx/work/WorkerParameters;->c:Lg/dsp;

    iput v7, v6, Landroidx/work/WorkerParameters;->d:I

    iput-object v15, v6, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    iput-object v5, v6, Landroidx/work/WorkerParameters;->k:Lg/boj;

    iput-object v3, v6, Landroidx/work/WorkerParameters;->a:Lg/gkr;

    iput-object v10, v6, Landroidx/work/WorkerParameters;->g:Lg/gjq;

    iput-object v8, v6, Landroidx/work/WorkerParameters;->i:Lg/cxy;

    iput-object v12, v6, Landroidx/work/WorkerParameters;->b:Lg/dcr;

    :try_start_5
    iget-object v0, v1, Lg/dly;->k:Landroid/content/Context;

    invoke-virtual {v10, v0, v14, v6}, Lg/gsd;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lg/cg;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v0}, Lg/cg;->setUsed()V

    invoke-virtual/range {v17 .. v17}, Lg/w;->getContext()Lg/boj;

    move-result-object v2

    sget-object v5, Lg/dwm;->o:Lg/dwm;

    invoke-interface {v2, v5}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v2

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    check-cast v2, Lg/dta;

    new-instance v5, Lg/bdz;

    move/from16 v7, v18

    move-object/from16 v8, v19

    invoke-direct {v5, v0, v7, v8, v1}, Lg/bdz;-><init>(Lg/cg;ZLjava/lang/String;Lg/dly;)V

    check-cast v2, Lg/fyw;

    new-instance v7, Lg/bht;

    invoke-direct {v7, v5}, Lg/bht;-><init>(Lg/and;)V

    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v11, v7}, Lg/fyw;->ag(ZZLg/era;)Lg/edw;

    new-instance v5, Lg/gmx;

    invoke-direct {v5, v1, v11}, Lg/gmx;-><init>(Lg/dly;I)V

    invoke-virtual {v4, v5}, Lg/gac;->ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "workDatabase.runInTransa\u2026e\n            }\n        )"

    invoke-static {v4, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v9, Lg/cmt;

    invoke-direct {v9}, Lg/cmt;-><init>()V

    goto/16 :goto_c

    :cond_b
    invoke-virtual {v2}, Lg/fyw;->ac()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v9, Lg/cmt;

    invoke-direct {v9}, Lg/cmt;-><init>()V

    goto/16 :goto_c

    :cond_c
    iget-object v2, v3, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v2, Lg/bxc;

    const-string v3, "workTaskExecutor.getMainThreadExecutor()"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lg/ffb;->cc(Ljava/util/concurrent/Executor;)Lg/cpk;

    move-result-object v2

    :try_start_6
    new-instance v3, Lg/dvo;

    const/4 v9, 0x0

    invoke-direct {v3, v1, v0, v12, v9}, Lg/dvo;-><init>(Lg/dly;Lg/cg;Lg/fbt;Lg/bdp;)V

    move-object/from16 v8, v17

    iput-object v1, v8, Lg/gnw;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lg/gnw;->L$1:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, v8, Lg/gnw;->label:I

    invoke-static {v2, v3, v8}, Lg/baf;->an(Lg/erz;Lg/bto;Lg/w;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v20

    if-ne v0, v2, :cond_d

    move-object v9, v2

    goto :goto_c

    :cond_d
    :goto_9
    check-cast v0, Lg/dea;

    new-instance v9, Lg/fcv;

    const-string v2, "result"

    invoke-static {v0, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Lg/fcv;-><init>(Lg/dea;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    :goto_a
    sget-object v2, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lg/dly;->i:Ljava/lang/String;

    const-string v5, " failed because it threw an exception/error"

    invoke-static {v4, v1, v5}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1, v0}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v9, Lg/eme;

    invoke-direct {v9}, Lg/eme;-><init>()V

    goto :goto_c

    :goto_b
    sget-object v2, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    iget-object v1, v1, Lg/dly;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :catchall_2
    sget-object v0, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lg/eme;

    invoke-direct {v9}, Lg/eme;-><init>()V

    :goto_c
    return-object v9

    :goto_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lg/fcg;->p()V

    throw v0
.end method


# virtual methods
.method public final p(Lg/dea;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dly;->m:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/grj;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lg/dly;->l:Lg/gg;

    if-nez v2, :cond_1

    invoke-static {v1}, Lg/eko;->b(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lg/gg;->ad(Ljava/lang/String;)Lg/gys;

    move-result-object v4

    sget-object v5, Lg/gys;->CANCELLED:Lg/gys;

    if-eq v4, v5, :cond_0

    sget-object v4, Lg/gys;->FAILED:Lg/gys;

    invoke-virtual {v3, v4, v2}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lg/dly;->b:Lg/gtb;

    invoke-virtual {v3, v2}, Lg/gtb;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    check-cast p1, Lg/bhr;

    iget-object p1, p1, Lg/bhr;->a:Lg/dwa;

    const-string v1, "failure.outputData"

    invoke-static {p1, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/dly;->g:Lg/fkj;

    iget v1, v1, Lg/fkj;->j:I

    invoke-virtual {v3, v1, v0}, Lg/gg;->q(ILjava/lang/String;)V

    invoke-virtual {v3, v0, p1}, Lg/gg;->y(Ljava/lang/String;Lg/dwa;)V

    return-void
.end method

.method public final q(I)V
    .locals 5

    sget-object v0, Lg/gys;->ENQUEUED:Lg/gys;

    iget-object v1, p0, Lg/dly;->l:Lg/gg;

    iget-object v2, p0, Lg/dly;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dly;->n:Lg/dwm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Lg/gg;->u(JLjava/lang/String;)V

    iget-object v0, p0, Lg/dly;->g:Lg/fkj;

    iget v0, v0, Lg/fkj;->j:I

    invoke-virtual {v1, v0, v2}, Lg/gg;->q(ILjava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v3, v4, v2}, Lg/gg;->ab(JLjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lg/gg;->r(ILjava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lg/dly;->n:Lg/dwm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lg/dly;->l:Lg/gg;

    iget-object v3, p0, Lg/dly;->m:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lg/gg;->u(JLjava/lang/String;)V

    sget-object v0, Lg/gys;->ENQUEUED:Lg/gys;

    invoke-virtual {v2, v0, v3}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    iget-object v0, v2, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lg/gac;->al()V

    iget-object v1, v2, Lg/gg;->b:Lg/bnh;

    invoke-virtual {v1}, Lg/fze;->i()Lg/cap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Lg/eob;->e(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lg/gac;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Lg/cap;->h()I

    invoke-virtual {v0}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v0}, Lg/gac;->am()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1, v4}, Lg/fze;->h(Lg/cap;)V

    iget-object v1, p0, Lg/dly;->g:Lg/fkj;

    iget v1, v1, Lg/fkj;->j:I

    invoke-virtual {v2, v1, v3}, Lg/gg;->q(ILjava/lang/String;)V

    invoke-virtual {v0}, Lg/gac;->al()V

    iget-object v1, v2, Lg/gg;->o:Lg/bnh;

    invoke-virtual {v1}, Lg/fze;->i()Lg/cap;

    move-result-object v4

    invoke-interface {v4, v5, v3}, Lg/eob;->e(ILjava/lang/String;)V

    :try_start_3
    invoke-virtual {v0}, Lg/gac;->an()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Lg/cap;->h()I

    invoke-virtual {v0}, Lg/gac;->ah()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v0}, Lg/gac;->am()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v1, v4}, Lg/fze;->h(Lg/cap;)V

    const-wide/16 v0, -0x1

    invoke-virtual {v2, v0, v1, v3}, Lg/gg;->ab(JLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0}, Lg/gac;->am()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    invoke-virtual {v1, v4}, Lg/fze;->h(Lg/cap;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Lg/gac;->am()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    invoke-virtual {v1, v4}, Lg/fze;->h(Lg/cap;)V

    throw v0
.end method
