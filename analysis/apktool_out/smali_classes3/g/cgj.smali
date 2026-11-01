.class public final Lg/cgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/brb;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/cgj;->b:I

    iput-object p2, p0, Lg/cgj;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/ao;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/cgj;->b:I

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cgj;->c:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lg/enb;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-static {v0, p0}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    new-instance p1, Lg/hu;

    const-string v0, "\\d+"

    invoke-direct {p1, v0}, Lg/hu;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lg/hu;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "valueOf(header)"

    invoke-static {p0, p1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method private final g(Lg/dpe;)Lg/enb;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v2, Lg/fvd;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v5, v0, Lg/dpe;->c:Lg/daw;

    iget-object v6, v5, Lg/daw;->e:Ljava/lang/Object;

    check-cast v6, Lg/eyn;

    invoke-static {v6}, Lg/buj;->aw(Lg/eyn;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v2, v2, Lg/fvd;->a:Lg/fxy;

    invoke-virtual {v2, v7}, Lg/fxy;->aa(Ljava/lang/String;)Lg/px;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_1
    new-instance v7, Lg/un;

    iget-object v8, v2, Lg/px;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cpv;

    invoke-direct {v7, v8}, Lg/un;-><init>(Lg/cpv;)V

    iget-object v8, v7, Lg/un;->i:Lg/dvq;

    iget-object v9, v7, Lg/un;->k:Ljava/lang/String;

    iget-object v10, v7, Lg/un;->f:Lg/eyn;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v11, v7, Lg/un;->l:Lg/dvq;

    const-string v12, "Content-Type"

    invoke-virtual {v11, v12}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Content-Length"

    invoke-virtual {v11, v13}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lg/fzn;

    const/4 v15, 0x7

    invoke-direct {v14, v15}, Lg/fzn;-><init>(I)V

    const-string v15, "url"

    invoke-static {v10, v15}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v14, Lg/fzn;->h:Ljava/lang/Object;

    invoke-virtual {v14, v9, v4}, Lg/fzn;->w(Ljava/lang/String;Lg/sz;)V

    const-string v15, "headers"

    invoke-static {v8, v15}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lg/dvq;->f()Lg/ais;

    move-result-object v15

    iput-object v15, v14, Lg/fzn;->e:Ljava/lang/Object;

    invoke-virtual {v14}, Lg/fzn;->x()Lg/daw;

    move-result-object v14

    new-instance v15, Lg/hdt;

    invoke-direct {v15}, Lg/hdt;-><init>()V

    iput-object v14, v15, Lg/hdt;->f:Lg/daw;

    iget-object v14, v7, Lg/un;->d:Lg/aqt;

    const-string v3, "protocol"

    invoke-static {v14, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v14, v15, Lg/hdt;->j:Lg/aqt;

    iget v3, v7, Lg/un;->e:I

    iput v3, v15, Lg/hdt;->l:I

    iget-object v3, v7, Lg/un;->g:Ljava/lang/String;

    const-string v14, "message"

    invoke-static {v3, v14}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v15, Lg/hdt;->c:Ljava/lang/String;

    invoke-virtual {v15, v11}, Lg/hdt;->p(Lg/dvq;)V

    new-instance v3, Lg/bhv;

    invoke-direct {v3, v2, v12, v13}, Lg/bhv;-><init>(Lg/px;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v15, Lg/hdt;->m:Lg/ehi;

    iget-object v2, v7, Lg/un;->c:Lg/czl;

    iput-object v2, v15, Lg/hdt;->e:Lg/czl;

    iget-wide v2, v7, Lg/un;->h:J

    iput-wide v2, v15, Lg/hdt;->b:J

    iget-wide v2, v7, Lg/un;->j:J

    iput-wide v2, v15, Lg/hdt;->d:J

    invoke-virtual {v15}, Lg/hdt;->o()Lg/enb;

    move-result-object v2

    invoke-virtual {v10, v6}, Lg/eyn;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v5, Lg/daw;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lg/enb;->n:Lg/dvq;

    invoke-static {v3}, Lg/buj;->o(Lg/dvq;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Lg/dvq;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iget-object v9, v5, Lg/daw;->a:Ljava/lang/Object;

    check-cast v9, Lg/dvq;

    invoke-virtual {v9, v6}, Lg/dvq;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_3
    iget-object v2, v2, Lg/enb;->b:Lg/ehi;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lg/erq;->m(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    invoke-static {v2}, Lg/erq;->m(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    nop

    :cond_4
    :goto_0
    move-object v2, v4

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, v0, Lg/dpe;->c:Lg/daw;

    if-eqz v2, :cond_c

    iget-wide v10, v2, Lg/enb;->f:J

    iget-wide v12, v2, Lg/enb;->e:J

    iget-object v14, v2, Lg/enb;->n:Lg/dvq;

    invoke-virtual {v14}, Lg/dvq;->size()I

    move-result v15

    move-object v9, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    const/4 v8, 0x0

    const/16 v20, -0x1

    :goto_2
    if-ge v8, v15, :cond_b

    invoke-virtual {v14, v8}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v8}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v26, v5

    const-string v5, "Date"

    invoke-static {v4, v5}, Lg/dmc;->bx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v7}, Lg/eli;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v23, v7

    goto :goto_3

    :cond_6
    const-string v5, "Expires"

    invoke-static {v4, v5}, Lg/dmc;->bx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v7}, Lg/eli;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    goto :goto_3

    :cond_7
    const-string v5, "Last-Modified"

    invoke-static {v4, v5}, Lg/dmc;->bx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v7}, Lg/eli;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v22, v7

    goto :goto_3

    :cond_8
    const-string v5, "ETag"

    invoke-static {v4, v5}, Lg/dmc;->bx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v21, v7

    goto :goto_3

    :cond_9
    const-string v5, "Age"

    invoke-static {v4, v5}, Lg/dmc;->bx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, -0x1

    invoke-static {v4, v7}, Lg/erq;->ad(ILjava/lang/String;)I

    move-result v20

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v5, v26

    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    move/from16 v4, v20

    :goto_4
    move-wide/from16 v26, v5

    goto :goto_5

    :cond_c
    const/4 v4, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto :goto_4

    :goto_5
    const-string v5, "If-None-Match"

    const-string v6, "If-Modified-Since"

    const/4 v7, 0x3

    if-nez v2, :cond_d

    new-instance v4, Lg/clx;

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-direct {v4, v7, v3, v14, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_16

    :cond_d
    const/4 v8, 0x0

    const/4 v14, 0x0

    iget-object v15, v3, Lg/daw;->e:Ljava/lang/Object;

    check-cast v15, Lg/eyn;

    iget-boolean v15, v15, Lg/eyn;->i:Z

    if-eqz v15, :cond_e

    iget-object v15, v2, Lg/enb;->h:Lg/czl;

    if-nez v15, :cond_e

    new-instance v4, Lg/clx;

    invoke-direct {v4, v7, v3, v14, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_16

    :cond_e
    invoke-static {v2, v3}, Lg/awt;->ap(Lg/enb;Lg/daw;)Z

    move-result v15

    if-nez v15, :cond_f

    new-instance v4, Lg/clx;

    invoke-direct {v4, v7, v3, v14, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_16

    :cond_f
    iget-object v8, v3, Lg/daw;->g:Ljava/lang/Object;

    check-cast v8, Lg/bjl;

    if-nez v8, :cond_10

    sget-object v8, Lg/bjl;->a:Lg/bjl;

    iget-object v8, v3, Lg/daw;->a:Ljava/lang/Object;

    check-cast v8, Lg/dvq;

    invoke-static {v8}, Lg/afo;->ax(Lg/dvq;)Lg/bjl;

    move-result-object v8

    iput-object v8, v3, Lg/daw;->g:Ljava/lang/Object;

    :cond_10
    iget-boolean v14, v8, Lg/bjl;->g:Z

    if-nez v14, :cond_25

    iget-object v14, v3, Lg/daw;->a:Ljava/lang/Object;

    check-cast v14, Lg/dvq;

    invoke-virtual {v14, v6}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_25

    iget-object v14, v3, Lg/daw;->a:Ljava/lang/Object;

    check-cast v14, Lg/dvq;

    invoke-virtual {v14, v5}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    goto/16 :goto_15

    :cond_11
    invoke-virtual {v2}, Lg/enb;->r()Lg/bjl;

    move-result-object v14

    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    move-object/from16 v20, v8

    sub-long v7, v12, v28

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_6
    const/4 v5, -0x1

    goto :goto_7

    :cond_12
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v20, v8

    const-wide/16 v7, 0x0

    goto :goto_6

    :goto_7
    if-eq v4, v5, :cond_13

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v9

    move-wide/from16 v30, v10

    int-to-long v9, v4

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_8

    :cond_13
    move-object v6, v9

    move-wide/from16 v30, v10

    :goto_8
    sub-long v4, v12, v30

    sub-long v9, v26, v12

    add-long/2addr v7, v4

    add-long/2addr v7, v9

    invoke-virtual {v2}, Lg/enb;->r()Lg/bjl;

    move-result-object v4

    iget v4, v4, Lg/bjl;->m:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v4

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :goto_9
    move-object/from16 v9, v20

    :goto_a
    const-wide/16 v16, 0x0

    goto :goto_f

    :cond_14
    if-eqz v6, :cond_17

    if-eqz v19, :cond_15

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    :cond_15
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    const-wide/16 v16, 0x0

    cmp-long v9, v4, v16

    if-lez v9, :cond_16

    goto :goto_9

    :cond_16
    move-object/from16 v9, v20

    const-wide/16 v4, 0x0

    goto :goto_a

    :cond_17
    if-eqz v18, :cond_1b

    iget-object v4, v2, Lg/enb;->i:Lg/daw;

    iget-object v4, v4, Lg/daw;->e:Ljava/lang/Object;

    check-cast v4, Lg/eyn;

    iget-object v4, v4, Lg/eyn;->k:Ljava/util/List;

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_b

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v4}, Lg/gpu;->i(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b
    if-nez v4, :cond_1b

    if-eqz v19, :cond_19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    goto :goto_c

    :cond_19
    move-wide/from16 v10, v30

    :goto_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v10, v4

    const-wide/16 v16, 0x0

    cmp-long v4, v10, v16

    if-lez v4, :cond_1a

    const/16 v4, 0xa

    int-to-long v4, v4

    div-long v4, v10, v4

    :goto_d
    move-object/from16 v9, v20

    goto :goto_f

    :cond_1a
    :goto_e
    move-wide/from16 v4, v16

    goto :goto_d

    :cond_1b
    const-wide/16 v16, 0x0

    goto :goto_e

    :goto_f
    iget v10, v9, Lg/bjl;->m:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v13, v6

    move-wide/from16 v26, v7

    int-to-long v6, v10

    invoke-virtual {v12, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_10

    :cond_1c
    move-object v13, v6

    move-wide/from16 v26, v7

    :goto_10
    iget v6, v9, Lg/bjl;->j:I

    if-eq v6, v11, :cond_1d

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v11, v6

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    goto :goto_11

    :cond_1d
    move-wide/from16 v6, v16

    :goto_11
    iget-boolean v8, v14, Lg/bjl;->n:Z

    if-nez v8, :cond_1e

    iget v8, v9, Lg/bjl;->b:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_1e

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v8

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    goto :goto_12

    :cond_1e
    move-wide/from16 v8, v16

    :goto_12
    iget-boolean v10, v14, Lg/bjl;->g:Z

    if-nez v10, :cond_21

    add-long v6, v26, v6

    add-long/2addr v8, v4

    cmp-long v10, v6, v8

    if-gez v10, :cond_21

    invoke-virtual {v2}, Lg/enb;->q()Lg/hdt;

    move-result-object v8

    cmp-long v9, v6, v4

    if-ltz v9, :cond_1f

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    const-string v5, "Warning"

    iget-object v6, v8, Lg/hdt;->g:Lg/ais;

    invoke-virtual {v6, v5, v4}, Lg/ais;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-wide/32 v4, 0x5265c00

    cmp-long v6, v26, v4

    if-lez v6, :cond_20

    invoke-virtual {v2}, Lg/enb;->r()Lg/bjl;

    move-result-object v4

    iget v4, v4, Lg/bjl;->m:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    if-nez v13, :cond_20

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    const-string v5, "Warning"

    iget-object v6, v8, Lg/hdt;->g:Lg/ais;

    invoke-virtual {v6, v5, v4}, Lg/ais;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    new-instance v4, Lg/clx;

    invoke-virtual {v8}, Lg/hdt;->o()Lg/enb;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-direct {v4, v15, v14, v5, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_16

    :cond_21
    if-eqz v21, :cond_22

    move-object/from16 v4, v21

    move-object/from16 v5, v28

    goto :goto_14

    :cond_22
    if-eqz v18, :cond_23

    move-object/from16 v4, v22

    :goto_13
    move-object/from16 v5, v29

    goto :goto_14

    :cond_23
    if-eqz v19, :cond_24

    move-object/from16 v4, v23

    goto :goto_13

    :goto_14
    iget-object v6, v3, Lg/daw;->a:Ljava/lang/Object;

    check-cast v6, Lg/dvq;

    invoke-virtual {v6}, Lg/dvq;->f()Lg/ais;

    move-result-object v6

    invoke-static {v4}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v6, v5, v4}, Lg/ais;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lg/daw;->v()Lg/fzn;

    move-result-object v4

    invoke-virtual {v6}, Lg/ais;->d()Lg/dvq;

    move-result-object v5

    invoke-virtual {v5}, Lg/dvq;->f()Lg/ais;

    move-result-object v5

    iput-object v5, v4, Lg/fzn;->e:Ljava/lang/Object;

    invoke-virtual {v4}, Lg/fzn;->x()Lg/daw;

    move-result-object v4

    new-instance v5, Lg/clx;

    const/4 v8, 0x0

    const/4 v15, 0x3

    invoke-direct {v5, v15, v4, v2, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    move-object v4, v5

    goto :goto_16

    :cond_24
    const/4 v8, 0x0

    const/4 v15, 0x3

    new-instance v4, Lg/clx;

    const/4 v14, 0x0

    invoke-direct {v4, v15, v3, v14, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_16

    :cond_25
    :goto_15
    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-instance v4, Lg/clx;

    invoke-direct {v4, v15, v3, v14, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    :goto_16
    iget-object v5, v4, Lg/clx;->e:Ljava/lang/Object;

    check-cast v5, Lg/daw;

    if-eqz v5, :cond_27

    iget-object v5, v3, Lg/daw;->g:Ljava/lang/Object;

    check-cast v5, Lg/bjl;

    if-nez v5, :cond_26

    sget-object v5, Lg/bjl;->a:Lg/bjl;

    iget-object v5, v3, Lg/daw;->a:Ljava/lang/Object;

    check-cast v5, Lg/dvq;

    invoke-static {v5}, Lg/afo;->ax(Lg/dvq;)Lg/bjl;

    move-result-object v5

    iput-object v5, v3, Lg/daw;->g:Ljava/lang/Object;

    :cond_26
    iget-boolean v3, v5, Lg/bjl;->l:Z

    if-eqz v3, :cond_27

    new-instance v4, Lg/clx;

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-direct {v4, v15, v14, v14, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_17

    :cond_27
    const/4 v14, 0x0

    :goto_17
    iget-object v3, v4, Lg/clx;->e:Ljava/lang/Object;

    check-cast v3, Lg/daw;

    iget-object v4, v4, Lg/clx;->c:Ljava/lang/Object;

    check-cast v4, Lg/enb;

    iget-object v5, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v5, Lg/fvd;

    if-eqz v5, :cond_28

    monitor-enter v5

    monitor-exit v5

    :cond_28
    if-eqz v2, :cond_29

    if-nez v4, :cond_29

    iget-object v5, v2, Lg/enb;->b:Lg/ehi;

    if-eqz v5, :cond_29

    invoke-static {v5}, Lg/erq;->m(Ljava/io/Closeable;)V

    :cond_29
    const-wide/16 v27, -0x1

    if-nez v3, :cond_2a

    if-nez v4, :cond_2a

    new-instance v2, Lg/ais;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lg/ais;-><init>(I)V

    iget-object v0, v0, Lg/dpe;->c:Lg/daw;

    sget-object v3, Lg/aqt;->HTTP_1_1:Lg/aqt;

    const-string v4, "protocol"

    invoke-static {v3, v4}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v19, "Unsatisfiable Request (only-if-cached)"

    sget-object v23, Lg/erq;->f:Lg/dhd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    invoke-virtual {v2}, Lg/ais;->d()Lg/dvq;

    move-result-object v22

    new-instance v16, Lg/enb;

    const/16 v20, 0x1f8

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v31, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v31}, Lg/enb;-><init>(Lg/daw;Lg/aqt;Ljava/lang/String;ILg/czl;Lg/dvq;Lg/ehi;Lg/enb;Lg/enb;Lg/enb;JJLg/aju;)V

    return-object v16

    :cond_2a
    move-wide/from16 v5, v27

    if-nez v3, :cond_2b

    invoke-static {v4}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lg/enb;->q()Lg/hdt;

    move-result-object v0

    invoke-static {v4}, Lg/acq;->bs(Lg/enb;)Lg/enb;

    move-result-object v2

    const-string v3, "cacheResponse"

    invoke-static {v3, v2}, Lg/hdt;->n(Ljava/lang/String;Lg/enb;)V

    iput-object v2, v0, Lg/hdt;->i:Lg/enb;

    invoke-virtual {v0}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    return-object v0

    :cond_2b
    :try_start_2
    invoke-virtual {v0, v3}, Lg/dpe;->k(Lg/daw;)Lg/enb;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_37

    iget v2, v0, Lg/enb;->g:I

    const/16 v7, 0x130

    if-ne v2, v7, :cond_36

    invoke-virtual {v4}, Lg/enb;->q()Lg/hdt;

    move-result-object v2

    iget-object v3, v4, Lg/enb;->n:Lg/dvq;

    iget-object v5, v0, Lg/enb;->n:Lg/dvq;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Lg/dvq;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v7, :cond_30

    invoke-virtual {v3, v8}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Warning"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const-string v11, "1"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2c

    goto :goto_1a

    :cond_2c
    const-string v11, "Content-Length"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2e

    const-string v11, "Content-Encoding"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2e

    const-string v11, "Content-Type"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2d

    goto :goto_19

    :cond_2d
    invoke-static {v9}, Lg/acq;->bq(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-virtual {v5, v9}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2f

    :cond_2e
    :goto_19
    const-string v11, "name"

    invoke-static {v9, v11}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "value"

    invoke-static {v10, v11}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_30
    invoke-virtual {v5}, Lg/dvq;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_1b
    if-ge v8, v3, :cond_33

    invoke-virtual {v5, v8}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Content-Length"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_32

    const-string v9, "Content-Encoding"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_32

    const-string v9, "Content-Type"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_31

    goto :goto_1c

    :cond_31
    invoke-static {v7}, Lg/acq;->bq(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-virtual {v5, v8}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-static {v7, v10}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_33
    new-instance v3, Lg/dvq;

    const/4 v8, 0x0

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v3, v5}, Lg/dvq;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lg/hdt;->p(Lg/dvq;)V

    iget-wide v5, v0, Lg/enb;->f:J

    iput-wide v5, v2, Lg/hdt;->b:J

    iget-wide v5, v0, Lg/enb;->e:J

    iput-wide v5, v2, Lg/hdt;->d:J

    invoke-static {v4}, Lg/acq;->bs(Lg/enb;)Lg/enb;

    move-result-object v3

    const-string v5, "cacheResponse"

    invoke-static {v5, v3}, Lg/hdt;->n(Ljava/lang/String;Lg/enb;)V

    iput-object v3, v2, Lg/hdt;->i:Lg/enb;

    invoke-static {v0}, Lg/acq;->bs(Lg/enb;)Lg/enb;

    move-result-object v3

    const-string v5, "networkResponse"

    invoke-static {v5, v3}, Lg/hdt;->n(Ljava/lang/String;Lg/enb;)V

    iput-object v3, v2, Lg/hdt;->a:Lg/enb;

    invoke-virtual {v2}, Lg/hdt;->o()Lg/enb;

    move-result-object v2

    iget-object v0, v0, Lg/enb;->b:Lg/ehi;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/ehi;->close()V

    iget-object v0, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v0, Lg/fvd;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/fvd;->c()V

    iget-object v0, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v0, Lg/fvd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/un;

    invoke-direct {v0, v2}, Lg/un;-><init>(Lg/enb;)V

    iget-object v3, v4, Lg/enb;->b:Lg/ehi;

    const-string v4, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-static {v3, v4}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lg/bhv;

    iget-object v3, v3, Lg/bhv;->f:Lg/px;

    :try_start_3
    iget-object v4, v3, Lg/px;->b:Lg/fxy;

    iget-object v5, v3, Lg/px;->c:Ljava/lang/String;

    iget-wide v6, v3, Lg/px;->d:J

    invoke-virtual {v4, v6, v7, v5}, Lg/fxy;->z(JLjava/lang/String;)Lg/abv;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v4, :cond_34

    goto :goto_1e

    :cond_34
    :try_start_4
    invoke-virtual {v0, v4}, Lg/un;->o(Lg/abv;)V

    invoke-virtual {v4}, Lg/abv;->g()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1e

    :catch_2
    nop

    goto :goto_1d

    :catch_3
    nop

    move-object v4, v14

    :goto_1d
    if-eqz v4, :cond_35

    :try_start_5
    invoke-virtual {v4}, Lg/abv;->f()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_35
    :goto_1e
    return-object v2

    :cond_36
    iget-object v2, v4, Lg/enb;->b:Lg/ehi;

    if-eqz v2, :cond_37

    invoke-static {v2}, Lg/erq;->m(Ljava/io/Closeable;)V

    :cond_37
    invoke-virtual {v0}, Lg/enb;->q()Lg/hdt;

    move-result-object v2

    invoke-static {v4}, Lg/acq;->bs(Lg/enb;)Lg/enb;

    move-result-object v4

    const-string v7, "cacheResponse"

    invoke-static {v7, v4}, Lg/hdt;->n(Ljava/lang/String;Lg/enb;)V

    iput-object v4, v2, Lg/hdt;->i:Lg/enb;

    invoke-static {v0}, Lg/acq;->bs(Lg/enb;)Lg/enb;

    move-result-object v0

    const-string v4, "networkResponse"

    invoke-static {v4, v0}, Lg/hdt;->n(Ljava/lang/String;Lg/enb;)V

    iput-object v0, v2, Lg/hdt;->a:Lg/enb;

    invoke-virtual {v2}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    iget-object v2, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v2, Lg/fvd;

    if-eqz v2, :cond_41

    invoke-static {v0}, Lg/fyd;->a(Lg/enb;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {v0, v3}, Lg/awt;->ap(Lg/enb;Lg/daw;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v2, Lg/fvd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lg/enb;->i:Lg/daw;

    iget-object v4, v3, Lg/daw;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v7, "method"

    invoke-static {v4, v7}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "POST"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    const-string v7, "PATCH"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    const-string v7, "PUT"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    const-string v7, "DELETE"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    const-string v7, "MOVE"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    goto :goto_22

    :cond_38
    const-string v7, "GET"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    :cond_39
    :goto_1f
    move-object v4, v14

    goto :goto_23

    :cond_3a
    iget-object v4, v0, Lg/enb;->n:Lg/dvq;

    invoke-static {v4}, Lg/buj;->o(Lg/dvq;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "*"

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_1f

    :cond_3b
    new-instance v4, Lg/un;

    invoke-direct {v4, v0}, Lg/un;-><init>(Lg/enb;)V

    :try_start_6
    iget-object v7, v2, Lg/fvd;->a:Lg/fxy;

    iget-object v3, v3, Lg/daw;->e:Ljava/lang/Object;

    check-cast v3, Lg/eyn;

    invoke-static {v3}, Lg/buj;->aw(Lg/eyn;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lg/fxy;->d:Lg/hu;

    invoke-virtual {v7, v5, v6, v3}, Lg/fxy;->z(JLjava/lang/String;)Lg/abv;

    move-result-object v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v3, :cond_3c

    goto :goto_1f

    :cond_3c
    :try_start_7
    invoke-virtual {v4, v3}, Lg/un;->o(Lg/abv;)V

    new-instance v4, Lg/aju;

    invoke-direct {v4, v2, v3}, Lg/aju;-><init>(Lg/fvd;Lg/abv;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_23

    :catch_5
    nop

    goto :goto_21

    :goto_20
    move-object v3, v14

    goto :goto_21

    :catch_6
    nop

    goto :goto_20

    :goto_21
    if-eqz v3, :cond_39

    :try_start_8
    invoke-virtual {v3}, Lg/abv;->f()V

    goto :goto_1f

    :catch_7
    nop

    goto :goto_1f

    :cond_3d
    :goto_22
    invoke-virtual {v2, v3}, Lg/fvd;->b(Lg/daw;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1f

    :goto_23
    if-nez v4, :cond_3e

    goto :goto_24

    :cond_3e
    iget-object v2, v4, Lg/aju;->a:Ljava/lang/Object;

    check-cast v2, Lg/ckw;

    iget-object v3, v0, Lg/enb;->b:Lg/ehi;

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lg/ehi;->c()Lg/dsy;

    move-result-object v3

    invoke-static {v2}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object v2

    new-instance v5, Lg/yn;

    invoke-direct {v5, v3, v4, v2}, Lg/yn;-><init>(Lg/dsy;Lg/aju;Lg/ago;)V

    const-string v2, "Content-Type"

    invoke-static {v2, v0}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lg/enb;->b:Lg/ehi;

    invoke-virtual {v2}, Lg/ehi;->d()J

    move-result-wide v8

    invoke-virtual {v0}, Lg/enb;->q()Lg/hdt;

    move-result-object v0

    new-instance v6, Lg/dhd;

    invoke-static {v5}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lg/dhd;-><init>(Ljava/lang/Object;JLg/dsy;I)V

    iput-object v6, v0, Lg/hdt;->m:Lg/ehi;

    invoke-virtual {v0}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_3f
    iget-object v2, v3, Lg/daw;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v4, "method"

    invoke-static {v2, v4}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "PATCH"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "PUT"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "DELETE"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "MOVE"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_40
    :try_start_9
    iget-object v2, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v2, Lg/fvd;

    invoke-virtual {v2, v3}, Lg/fvd;->b(Lg/daw;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_41
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_42

    iget-object v2, v2, Lg/enb;->b:Lg/ehi;

    if-eqz v2, :cond_42

    invoke-static {v2}, Lg/erq;->m(Ljava/io/Closeable;)V

    :cond_42
    throw v0
.end method


# virtual methods
.method public final a(Lg/dpe;)Lg/enb;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lg/cgj;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lg/dpe;->c:Lg/daw;

    iget-object v3, v2, Lg/dpe;->d:Lg/ib;

    sget-object v4, Lg/fai;->a:Lg/fai;

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v11, v3, Lg/ib;->k:Lg/aju;

    if-nez v11, :cond_f

    monitor-enter v3

    :try_start_0
    iget-boolean v11, v3, Lg/ib;->g:Z

    if-nez v11, :cond_e

    iget-boolean v11, v3, Lg/ib;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_d

    monitor-exit v3

    if-eqz v0, :cond_2

    new-instance v0, Lg/cpr;

    iget-object v11, v3, Lg/ib;->e:Lg/dhh;

    iget-object v12, v4, Lg/daw;->e:Ljava/lang/Object;

    check-cast v12, Lg/eyn;

    iget-object v13, v3, Lg/ib;->j:Lg/fys;

    iget-boolean v14, v12, Lg/eyn;->i:Z

    if-eqz v14, :cond_1

    iget-object v14, v13, Lg/fys;->d:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v14, :cond_0

    iget-object v15, v13, Lg/fys;->e:Lg/gvr;

    iget-object v7, v13, Lg/fys;->n:Lg/bws;

    move-object/from16 v24, v7

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_2
    new-instance v17, Lg/cbm;

    iget-object v7, v12, Lg/eyn;->c:Ljava/lang/String;

    iget v12, v12, Lg/eyn;->d:I

    iget-object v14, v13, Lg/fys;->l:Lg/dfw;

    iget-object v15, v13, Lg/fys;->i:Ljavax/net/SocketFactory;

    iget-object v5, v13, Lg/fys;->x:Lg/bfy;

    iget-object v6, v13, Lg/fys;->o:Ljava/util/List;

    move-object/from16 v25, v5

    iget-object v5, v13, Lg/fys;->r:Ljava/util/List;

    iget-object v13, v13, Lg/fys;->aa:Ljava/net/ProxySelector;

    move-object/from16 v27, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move/from16 v19, v12

    move-object/from16 v28, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-direct/range {v17 .. v28}, Lg/cbm;-><init>(Ljava/lang/String;ILg/dfw;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lg/bws;Lg/bfy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    move-object/from16 v5, v17

    invoke-direct {v0, v11, v5, v3}, Lg/cpr;-><init>(Lg/dhh;Lg/cbm;Lg/ib;)V

    iput-object v0, v3, Lg/ib;->b:Lg/cpr;

    :cond_2
    :try_start_1
    iget-boolean v0, v3, Lg/ib;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_c

    :try_start_2
    invoke-virtual {v2, v4}, Lg/dpe;->k(Lg/daw;)Lg/enb;

    move-result-object v0
    :try_end_2
    .catch Lg/fvg; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v0}, Lg/enb;->q()Lg/hdt;

    move-result-object v0

    invoke-virtual {v9}, Lg/enb;->q()Lg/hdt;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lg/hdt;->m:Lg/ehi;

    invoke-virtual {v4}, Lg/hdt;->o()Lg/enb;

    move-result-object v4

    iget-object v6, v4, Lg/enb;->b:Lg/ehi;

    if-nez v6, :cond_3

    iput-object v4, v0, Lg/hdt;->k:Lg/enb;

    invoke-virtual {v0}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    :goto_3
    move-object v9, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_8

    :cond_3
    const-string v0, "priorResponse.body != null"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    iget-object v0, v3, Lg/ib;->k:Lg/aju;

    invoke-virtual {v1, v9, v0}, Lg/cgj;->f(Lg/enb;Lg/aju;)Lg/daw;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lg/ib;->x(Z)V

    return-object v9

    :cond_5
    :try_start_4
    iget-object v0, v9, Lg/enb;->b:Lg/ehi;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lg/erq;->m(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lg/ib;->x(Z)V

    goto/16 :goto_0

    :cond_7
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    instance-of v6, v0, Lg/fhb;

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v1, v0, v3, v4, v6}, Lg/cgj;->e(Ljava/io/IOException;Lg/ib;Lg/daw;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    add-int/2addr v11, v7

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3, v7}, Lg/ib;->x(Z)V

    :goto_5
    move-object v8, v6

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    invoke-static {v0, v4}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    throw v0

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    invoke-virtual {v0}, Lg/fvg;->c()Ljava/io/IOException;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v3, v4, v7}, Lg/cgj;->e(Ljava/io/IOException;Lg/ib;Lg/daw;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Lg/fvg;->b()Ljava/io/IOException;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v3, v12}, Lg/ib;->x(Z)V

    goto :goto_5

    :cond_a
    :try_start_7
    invoke-virtual {v0}, Lg/fvg;->b()Ljava/io/IOException;

    move-result-object v0

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    invoke-static {v0, v4}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    invoke-virtual {v3, v6}, Lg/ib;->x(Z)V

    throw v0

    :cond_d
    :try_start_8
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_e
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_9
    monitor-exit v3

    throw v0

    :cond_f
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const-string v0, "Content-Encoding"

    const-string v3, "User-Agent"

    iget-object v4, v1, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v4, Lg/ao;

    const-string v5, "gzip"

    const-string v6, "Accept-Encoding"

    const-string v7, "Connection"

    const-string v8, "Host"

    const-string v9, "Transfer-Encoding"

    const-string v10, "Content-Type"

    const-string v11, "Content-Length"

    iget-object v12, v2, Lg/dpe;->c:Lg/daw;

    iget-object v13, v12, Lg/daw;->a:Ljava/lang/Object;

    check-cast v13, Lg/dvq;

    invoke-virtual {v12}, Lg/daw;->v()Lg/fzn;

    move-result-object v14

    iget-object v15, v12, Lg/daw;->e:Ljava/lang/Object;

    check-cast v15, Lg/eyn;

    iget-object v1, v12, Lg/daw;->b:Ljava/lang/Object;

    check-cast v1, Lg/sz;

    const-wide/16 v18, -0x1

    if-eqz v1, :cond_12

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lg/sz;->d()Lg/dpd;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v1, Lg/dpd;->c:Ljava/lang/String;

    invoke-virtual {v14, v10, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {v16 .. v16}, Lg/sz;->c()J

    move-result-wide v16

    cmp-long v1, v16, v18

    if-eqz v1, :cond_11

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v11, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v14, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Lg/ais;

    invoke-virtual {v1, v9}, Lg/ais;->b(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    const-string v1, "chunked"

    invoke-virtual {v14, v9, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v14, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Lg/ais;

    invoke-virtual {v1, v11}, Lg/ais;->b(Ljava/lang/String;)V

    :cond_12
    :goto_a
    invoke-virtual {v13, v8}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    if-nez v1, :cond_13

    invoke-static {v15, v9}, Lg/erq;->r(Lg/eyn;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v8, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v13, v7}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v1, "Keep-Alive"

    invoke-virtual {v14, v7, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v13, v6}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "Range"

    invoke-virtual {v13, v1}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-virtual {v14, v6, v5}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "url"

    invoke-static {v15, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v1, "okhttp/4.12.0"

    invoke-virtual {v14, v3, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v14}, Lg/fzn;->x()Lg/daw;

    move-result-object v1

    invoke-virtual {v2, v1}, Lg/dpe;->k(Lg/daw;)Lg/enb;

    move-result-object v1

    iget-object v2, v1, Lg/enb;->n:Lg/dvq;

    invoke-static {v4, v15, v2}, Lg/fyd;->b(Lg/ao;Lg/eyn;Lg/dvq;)V

    invoke-virtual {v1}, Lg/enb;->q()Lg/hdt;

    move-result-object v3

    iput-object v12, v3, Lg/hdt;->f:Lg/daw;

    if-eqz v9, :cond_17

    invoke-static {v0, v1}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v1}, Lg/fyd;->a(Lg/enb;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v1, Lg/enb;->b:Lg/ehi;

    if-eqz v4, :cond_17

    new-instance v5, Lg/dot;

    invoke-virtual {v4}, Lg/ehi;->c()Lg/dsy;

    move-result-object v4

    invoke-direct {v5, v4}, Lg/dot;-><init>(Lg/cpv;)V

    invoke-virtual {v2}, Lg/dvq;->f()Lg/ais;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg/ais;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lg/ais;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/ais;->d()Lg/dvq;

    move-result-object v0

    invoke-virtual {v3, v0}, Lg/hdt;->p(Lg/dvq;)V

    invoke-static {v10, v1}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v17

    new-instance v16, Lg/dhd;

    invoke-static {v5}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v21}, Lg/dhd;-><init>(Ljava/lang/Object;JLg/dsy;I)V

    move-object/from16 v0, v16

    iput-object v0, v3, Lg/hdt;->m:Lg/ehi;

    :cond_17
    invoke-virtual {v3}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lg/cgj;->g(Lg/dpe;)Lg/enb;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ljava/io/IOException;Lg/ib;Lg/daw;Z)Z
    .locals 3

    iget-object p3, p0, Lg/cgj;->c:Ljava/lang/Object;

    check-cast p3, Lg/fys;

    iget-boolean p3, p3, Lg/fys;->ab:Z

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p4, :cond_1

    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_1

    return v0

    :cond_1
    instance-of p3, p1, Ljava/net/ProtocolException;

    if-eqz p3, :cond_2

    return v0

    :cond_2
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_3

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_10

    if-nez p4, :cond_10

    goto :goto_0

    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto/16 :goto_5

    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_5

    return v0

    :cond_5
    :goto_0
    iget-object p1, p2, Lg/ib;->b:Lg/cpr;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget p2, p1, Lg/cpr;->e:I

    const/4 p3, 0x1

    if-nez p2, :cond_6

    iget p4, p1, Lg/cpr;->i:I

    if-nez p4, :cond_6

    iget p4, p1, Lg/cpr;->a:I

    if-nez p4, :cond_6

    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    iget-object p4, p1, Lg/cpr;->f:Lg/ego;

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    const/4 p4, 0x0

    if-gt p2, p3, :cond_c

    iget p2, p1, Lg/cpr;->i:I

    if-gt p2, p3, :cond_c

    iget p2, p1, Lg/cpr;->a:I

    if-lez p2, :cond_8

    goto :goto_1

    :cond_8
    iget-object p2, p1, Lg/cpr;->h:Lg/ib;

    iget-object p2, p2, Lg/ib;->a:Lg/gba;

    if-nez p2, :cond_9

    goto :goto_1

    :cond_9
    monitor-enter p2

    :try_start_0
    iget v1, p2, Lg/gba;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_a

    monitor-exit p2

    goto :goto_1

    :cond_a
    :try_start_1
    iget-object v1, p2, Lg/gba;->o:Lg/ego;

    iget-object v1, v1, Lg/ego;->a:Lg/cbm;

    iget-object v1, v1, Lg/cbm;->a:Lg/eyn;

    iget-object v2, p1, Lg/cpr;->g:Lg/cbm;

    iget-object v2, v2, Lg/cbm;->a:Lg/eyn;

    invoke-static {v1, v2}, Lg/erq;->p(Lg/eyn;Lg/eyn;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_b

    monitor-exit p2

    goto :goto_1

    :cond_b
    :try_start_2
    iget-object p4, p2, Lg/gba;->o:Lg/ego;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    iput-object p4, p1, Lg/cpr;->f:Lg/ego;

    :goto_2
    const/4 p1, 0x1

    goto :goto_4

    :cond_d
    iget-object p2, p1, Lg/cpr;->b:Lg/gqc;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lg/gqc;->au()Z

    move-result p2

    if-ne p2, p3, :cond_e

    goto :goto_3

    :cond_e
    iget-object p1, p1, Lg/cpr;->c:Lg/efg;

    if-nez p1, :cond_f

    :goto_3
    goto :goto_2

    :cond_f
    invoke-virtual {p1}, Lg/efg;->g()Z

    move-result p1

    :goto_4
    if-nez p1, :cond_11

    :cond_10
    :goto_5
    return v0

    :cond_11
    return p3
.end method

.method public f(Lg/enb;Lg/aju;)Lg/daw;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lg/aju;->b:Ljava/lang/Object;

    check-cast v1, Lg/gba;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/gba;->o:Lg/ego;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, Lg/enb;->g:I

    iget-object v3, p1, Lg/enb;->i:Lg/daw;

    iget-object v3, v3, Lg/daw;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x134

    const/16 v7, 0x133

    if-eq v2, v7, :cond_c

    if-eq v2, v6, :cond_c

    const/16 v8, 0x191

    if-eq v2, v8, :cond_b

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_9

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_7

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v1, Lg/fys;

    iget-boolean v1, v1, Lg/fys;->ab:Z

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p1, Lg/enb;->c:Lg/enb;

    if-eqz v1, :cond_3

    iget v1, v1, Lg/enb;->g:I

    if-ne v1, p2, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {p1, v4}, Lg/cgj;->d(Lg/enb;I)I

    move-result p2

    if-lez p2, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object p1, p1, Lg/enb;->i:Lg/daw;

    return-object p1

    :cond_5
    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p1, v1, Lg/ego;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lg/cgj;->c:Ljava/lang/Object;

    check-cast p1, Lg/fys;

    iget-object p1, p1, Lg/fys;->x:Lg/bfy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v1, p1, Lg/enb;->c:Lg/enb;

    if-eqz v1, :cond_8

    iget v1, v1, Lg/enb;->g:I

    if-ne v1, p2, :cond_8

    goto/16 :goto_2

    :cond_8
    const p2, 0x7fffffff

    invoke-static {p1, p2}, Lg/cgj;->d(Lg/enb;I)I

    move-result p2

    if-nez p2, :cond_11

    iget-object p1, p1, Lg/enb;->i:Lg/daw;

    return-object p1

    :cond_9
    if-eqz p2, :cond_11

    iget-object v1, p2, Lg/aju;->e:Ljava/lang/Object;

    check-cast v1, Lg/cpr;

    iget-object v1, v1, Lg/cpr;->g:Lg/cbm;

    iget-object v1, v1, Lg/cbm;->a:Lg/eyn;

    iget-object v1, v1, Lg/eyn;->c:Ljava/lang/String;

    iget-object v2, p2, Lg/aju;->b:Ljava/lang/Object;

    check-cast v2, Lg/gba;

    iget-object v2, v2, Lg/gba;->o:Lg/ego;

    iget-object v2, v2, Lg/ego;->a:Lg/cbm;

    iget-object v2, v2, Lg/cbm;->a:Lg/eyn;

    iget-object v2, v2, Lg/eyn;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p2, p2, Lg/aju;->b:Ljava/lang/Object;

    check-cast p2, Lg/gba;

    monitor-enter p2

    :try_start_0
    iput-boolean v5, p2, Lg/gba;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    iget-object p1, p1, Lg/enb;->i:Lg/daw;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    iget-object p1, p0, Lg/cgj;->c:Ljava/lang/Object;

    check-cast p1, Lg/fys;

    iget-object p1, p1, Lg/fys;->f:Lg/bfy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_c
    :pswitch_0
    const-string p2, "PROPFIND"

    iget-object v1, p0, Lg/cgj;->c:Ljava/lang/Object;

    check-cast v1, Lg/fys;

    iget-boolean v2, v1, Lg/fys;->c:Z

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const-string v2, "Location"

    invoke-static {v2, p1}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lg/enb;->i:Lg/daw;

    if-nez v2, :cond_e

    goto :goto_2

    :cond_e
    iget-object v9, v8, Lg/daw;->e:Ljava/lang/Object;

    check-cast v9, Lg/eyn;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v2}, Lg/eyn;->p(Ljava/lang/String;)Lg/ke;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lg/ke;->n()Lg/eyn;

    move-result-object v2

    goto :goto_1

    :cond_f
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_10

    goto :goto_2

    :cond_10
    iget-object v9, v2, Lg/eyn;->e:Ljava/lang/String;

    iget-object v10, v8, Lg/daw;->e:Ljava/lang/Object;

    check-cast v10, Lg/eyn;

    iget-object v10, v10, Lg/eyn;->e:Ljava/lang/String;

    invoke-static {v9, v10}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    iget-boolean v1, v1, Lg/fys;->v:Z

    if-nez v1, :cond_12

    :cond_11
    :goto_2
    return-object v0

    :cond_12
    invoke-virtual {v8}, Lg/daw;->v()Lg/fzn;

    move-result-object v1

    invoke-static {v3}, Lg/ckd;->l(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget p1, p1, Lg/enb;->g:I

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    if-eq p1, v6, :cond_13

    if-ne p1, v7, :cond_14

    :cond_13
    const/4 v4, 0x1

    :cond_14
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    if-eq p1, v6, :cond_15

    if-eq p1, v7, :cond_15

    const-string p1, "GET"

    invoke-virtual {v1, p1, v0}, Lg/fzn;->w(Ljava/lang/String;Lg/sz;)V

    goto :goto_3

    :cond_15
    if-eqz v4, :cond_16

    iget-object p1, v8, Lg/daw;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lg/sz;

    :cond_16
    invoke-virtual {v1, v3, v0}, Lg/fzn;->w(Ljava/lang/String;Lg/sz;)V

    :goto_3
    if-nez v4, :cond_17

    const-string p1, "Transfer-Encoding"

    iget-object p2, v1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p2, Lg/ais;

    invoke-virtual {p2, p1}, Lg/ais;->b(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    iget-object p2, v1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p2, Lg/ais;

    invoke-virtual {p2, p1}, Lg/ais;->b(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    iget-object p2, v1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p2, Lg/ais;

    invoke-virtual {p2, p1}, Lg/ais;->b(Ljava/lang/String;)V

    :cond_17
    iget-object p1, v8, Lg/daw;->e:Ljava/lang/Object;

    check-cast p1, Lg/eyn;

    invoke-static {p1, v2}, Lg/erq;->p(Lg/eyn;Lg/eyn;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "Authorization"

    iget-object p2, v1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p2, Lg/ais;

    invoke-virtual {p2, p1}, Lg/ais;->b(Ljava/lang/String;)V

    :cond_18
    iput-object v2, v1, Lg/fzn;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Lg/fzn;->x()Lg/daw;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
