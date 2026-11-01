.class public final Lg/czk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/brb;


# static fields
.field public static final b:Lg/czk;


# instance fields
.field public final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/czk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/czk;-><init>(I)V

    sput-object v0, Lg/czk;->b:Lg/czk;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/czk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/dpe;)Lg/enb;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lg/czk;->c:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "Connection"

    const-string v3, "close"

    const-string v4, "HTTP "

    iget-object v5, v0, Lg/dpe;->b:Lg/aju;

    invoke-static {v5}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v6, v5, Lg/aju;->d:Ljava/lang/Object;

    check-cast v6, Lg/ib;

    iget-object v7, v5, Lg/aju;->a:Ljava/lang/Object;

    check-cast v7, Lg/axn;

    iget-object v8, v5, Lg/aju;->b:Ljava/lang/Object;

    check-cast v8, Lg/gba;

    iget-object v9, v0, Lg/dpe;->c:Lg/daw;

    iget-object v0, v9, Lg/daw;->b:Ljava/lang/Object;

    check-cast v0, Lg/sz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_0
    invoke-interface {v7, v9}, Lg/axn;->e(Lg/daw;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v14, v9, Lg/daw;->f:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lg/ckd;->l(Ljava/lang/String;)Z

    move-result v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v15, 0x1

    if-eqz v14, :cond_4

    if-eqz v0, :cond_4

    :try_start_2
    const-string v14, "100-continue"

    const-string v12, "Expect"

    iget-object v13, v9, Lg/daw;->a:Ljava/lang/Object;

    check-cast v13, Lg/dvq;

    invoke-virtual {v13, v12}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v12, :cond_0

    :try_start_3
    invoke-interface {v7}, Lg/axn;->c()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v5, v15}, Lg/aju;->i(Z)Lg/hdt;

    move-result-object v12

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v12, 0x0

    :goto_0
    const/4 v14, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Lg/aju;->f(Ljava/io/IOException;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_1

    :try_start_5
    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/sz;->c()J

    move-result-wide v13

    invoke-interface {v7, v9, v13, v14}, Lg/axn;->h(Lg/daw;J)Lg/evq;

    move-result-object v6

    new-instance v15, Lg/mq;

    invoke-direct {v15, v5, v6, v13, v14}, Lg/mq;-><init>(Lg/aju;Lg/evq;J)V

    invoke-static {v15}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object v6

    invoke-virtual {v0, v6}, Lg/sz;->e(Lg/cbs;)V

    invoke-virtual {v6}, Lg/ago;->close()V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v5, v15, v13, v14}, Lg/ib;->w(Lg/aju;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v0, v8, Lg/gba;->s:Lg/ug;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_3

    invoke-interface {v7}, Lg/axn;->b()Lg/gba;

    move-result-object v0

    invoke-virtual {v0}, Lg/gba;->w()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_6
    invoke-virtual {v6, v5, v15, v13, v14}, Lg/ib;->w(Lg/aju;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v12, v14

    :goto_4
    :try_start_7
    invoke-interface {v7}, Lg/axn;->d()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v6, v14

    goto :goto_7

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v5, v0}, Lg/aju;->f(Ljava/io/IOException;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_5
    move-object v12, v14

    goto :goto_6

    :catch_6
    move-exception v0

    const/4 v14, 0x0

    goto :goto_5

    :catch_7
    move-exception v0

    const/4 v14, 0x0

    :try_start_9
    invoke-virtual {v5, v0}, Lg/aju;->f(Ljava/io/IOException;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_6
    instance-of v6, v0, Lg/fhb;

    if-nez v6, :cond_10

    iget-boolean v6, v5, Lg/aju;->c:Z

    if-eqz v6, :cond_f

    move-object v6, v0

    :goto_7
    if-nez v12, :cond_5

    const/4 v13, 0x0

    :try_start_a
    invoke-virtual {v5, v13}, Lg/aju;->i(Z)Lg/hdt;

    move-result-object v12

    invoke-static {v12}, Lg/bff;->d(Ljava/lang/Object;)V

    goto :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_d

    :cond_5
    :goto_8
    iput-object v9, v12, Lg/hdt;->f:Lg/daw;

    iget-object v0, v8, Lg/gba;->j:Lg/czl;

    iput-object v0, v12, Lg/hdt;->e:Lg/czl;

    iput-wide v10, v12, Lg/hdt;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v12, Lg/hdt;->d:J

    invoke-virtual {v12}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    iget v12, v0, Lg/enb;->g:I

    const/16 v13, 0x64

    if-ne v12, v13, :cond_6

    :goto_9
    const/4 v13, 0x0

    goto :goto_a

    :cond_6
    const/16 v13, 0x66

    if-gt v13, v12, :cond_7

    const/16 v13, 0xc8

    if-ge v12, v13, :cond_7

    goto :goto_9

    :goto_a
    invoke-virtual {v5, v13}, Lg/aju;->i(Z)Lg/hdt;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iput-object v9, v0, Lg/hdt;->f:Lg/daw;

    iget-object v8, v8, Lg/gba;->j:Lg/czl;

    iput-object v8, v0, Lg/hdt;->e:Lg/czl;

    iput-wide v10, v0, Lg/hdt;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lg/hdt;->d:J

    invoke-virtual {v0}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    iget v12, v0, Lg/enb;->g:I

    :cond_7
    invoke-virtual {v0}, Lg/enb;->q()Lg/hdt;

    move-result-object v8
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :try_start_b
    const-string v9, "Content-Type"

    invoke-static {v9, v0}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v7, v0}, Lg/axn;->f(Lg/enb;)J

    move-result-wide v9

    invoke-interface {v7, v0}, Lg/axn;->a(Lg/enb;)Lg/cpv;

    move-result-object v0

    new-instance v11, Lg/gnj;

    invoke-direct {v11, v5, v0, v9, v10}, Lg/gnj;-><init>(Lg/aju;Lg/cpv;J)V

    new-instance v16, Lg/dhd;

    invoke-static {v11}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object v20

    const/16 v21, 0x0

    move-wide/from16 v18, v9

    invoke-direct/range {v16 .. v21}, Lg/dhd;-><init>(Ljava/lang/Object;JLg/dsy;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v0, v16

    :try_start_c
    iput-object v0, v8, Lg/hdt;->m:Lg/ehi;

    invoke-virtual {v8}, Lg/hdt;->o()Lg/enb;

    move-result-object v0

    iget-object v5, v0, Lg/enb;->i:Lg/daw;

    iget-object v5, v5, Lg/daw;->a:Ljava/lang/Object;

    check-cast v5, Lg/dvq;

    invoke-virtual {v5, v2}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v2, v0}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-interface {v7}, Lg/axn;->b()Lg/gba;

    move-result-object v2

    invoke-virtual {v2}, Lg/gba;->w()V

    :cond_9
    const/16 v2, 0xcc

    if-eq v12, v2, :cond_a

    const/16 v2, 0xcd

    if-ne v12, v2, :cond_d

    :cond_a
    iget-object v2, v0, Lg/enb;->b:Lg/ehi;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lg/ehi;->d()J

    move-result-wide v2

    goto :goto_b

    :cond_b
    const-wide/16 v2, -0x1

    :goto_b
    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-lez v5, :cond_d

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " had non-zero Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lg/enb;->b:Lg/ehi;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lg/ehi;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_c

    :cond_c
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v5, v0}, Lg/aju;->f(Ljava/io/IOException;)V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :goto_d
    if-eqz v6, :cond_e

    invoke-static {v6, v0}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v6

    :cond_e
    throw v0

    :cond_f
    throw v0

    :cond_10
    throw v0

    :pswitch_0
    iget-object v2, v0, Lg/dpe;->d:Lg/ib;

    monitor-enter v2

    :try_start_d
    iget-boolean v3, v2, Lg/ib;->f:Z

    if-eqz v3, :cond_14

    iget-boolean v3, v2, Lg/ib;->g:Z

    if-nez v3, :cond_13

    iget-boolean v3, v2, Lg/ib;->d:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v3, :cond_12

    monitor-exit v2

    iget-object v4, v2, Lg/ib;->b:Lg/cpr;

    invoke-static {v4}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v3, v2, Lg/ib;->j:Lg/fys;

    :try_start_e
    iget v5, v0, Lg/dpe;->e:I

    iget v6, v0, Lg/dpe;->i:I

    iget v7, v0, Lg/dpe;->a:I

    iget-boolean v8, v3, Lg/fys;->ab:Z

    iget-object v9, v0, Lg/dpe;->c:Lg/daw;

    iget-object v9, v9, Lg/daw;->f:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v10, "GET"

    invoke-static {v9, v10}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    invoke-virtual/range {v4 .. v9}, Lg/cpr;->j(IIIZZ)Lg/gba;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lg/gba;->v(Lg/fys;Lg/dpe;)Lg/axn;

    move-result-object v3
    :try_end_e
    .catch Lg/fvg; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    new-instance v5, Lg/aju;

    invoke-direct {v5, v2, v4, v3}, Lg/aju;-><init>(Lg/ib;Lg/cpr;Lg/axn;)V

    iput-object v5, v2, Lg/ib;->k:Lg/aju;

    iput-object v5, v2, Lg/ib;->m:Lg/aju;

    monitor-enter v2

    :try_start_f
    iput-boolean v10, v2, Lg/ib;->d:Z

    iput-boolean v10, v2, Lg/ib;->g:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit v2

    iget-boolean v2, v2, Lg/ib;->n:Z

    if-nez v2, :cond_11

    const/4 v2, 0x0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Lg/dpe;->j(Lg/dpe;ILg/aju;Lg/daw;I)Lg/dpe;

    move-result-object v2

    iget-object v0, v0, Lg/dpe;->c:Lg/daw;

    invoke-virtual {v2, v0}, Lg/dpe;->k(Lg/daw;)Lg/enb;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_f

    :goto_e
    invoke-virtual {v4, v0}, Lg/cpr;->l(Ljava/io/IOException;)V

    new-instance v2, Lg/fvg;

    invoke-direct {v2, v0}, Lg/fvg;-><init>(Ljava/io/IOException;)V

    throw v2

    :goto_f
    invoke-virtual {v0}, Lg/fvg;->c()Ljava/io/IOException;

    move-result-object v2

    invoke-virtual {v4, v2}, Lg/cpr;->l(Ljava/io/IOException;)V

    throw v0

    :cond_12
    :try_start_10
    const-string v0, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_1
    move-exception v0

    goto :goto_10

    :cond_13
    const-string v0, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    const-string v0, "released"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_10
    monitor-exit v2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
