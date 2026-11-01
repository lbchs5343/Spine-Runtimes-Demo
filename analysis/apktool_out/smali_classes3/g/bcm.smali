.class public final Lg/bcm;
.super Lg/os;
.source "SourceFile"


# instance fields
.field public g:Landroid/app/Activity;

.field public final h:Lj$/util/concurrent/ConcurrentHashMap;

.field public volatile j:Lg/ein;

.field public k:Z

.field public l:Lg/ein;

.field public volatile m:Lg/ein;

.field public volatile n:Lg/ein;

.field public volatile o:Z

.field public final p:Ljava/lang/Object;

.field public q:Lg/ein;


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/os;-><init>(Lg/cyg;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bcm;->p:Ljava/lang/Object;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lg/bcm;->h:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r(Landroid/app/Activity;Lg/ein;Z)V
    .locals 12

    iget-object v2, p0, Lg/bcm;->m:Lg/ein;

    if-nez v2, :cond_0

    iget-object v2, p0, Lg/bcm;->n:Lg/ein;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lg/bcm;->m:Lg/ein;

    goto :goto_0

    :goto_1
    iget-object v2, p2, Lg/ein;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lg/bcm;->v(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v11, v2

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    new-instance v4, Lg/ein;

    iget-object v10, p2, Lg/ein;->c:Ljava/lang/String;

    iget-wide v6, p2, Lg/ein;->f:J

    iget-boolean v5, p2, Lg/ein;->b:Z

    iget-wide v8, p2, Lg/ein;->d:J

    invoke-direct/range {v4 .. v11}, Lg/ein;-><init>(ZJJLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_4

    :cond_2
    move-object v2, p2

    :goto_4
    iget-object v0, p0, Lg/bcm;->m:Lg/ein;

    iput-object v0, p0, Lg/bcm;->n:Lg/ein;

    iput-object v2, p0, Lg/bcm;->m:Lg/ein;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/dlt;

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lg/dlt;-><init>(Lg/bcm;Lg/ein;Lg/ein;JZ)V

    invoke-virtual {v7, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Landroid/app/Activity;)Lg/ein;
    .locals 5

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/bcm;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ein;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/bcm;->v(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/ein;

    iget-object v2, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v2}, Lg/dkq;->by()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Lg/ein;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lg/bcm;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lg/bcm;->j:Lg/ein;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/bcm;->j:Lg/ein;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final t(Lg/ein;ZJ)V
    .locals 4

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->am()Lg/fqm;

    move-result-object v1

    iget-object v2, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/fqm;->l(J)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lg/ein;->a:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, v0, Lg/cyg;->n:Lg/cjv;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v0, Lg/cjv;->k:Lg/fcw;

    invoke-virtual {v0, p3, p4, v2, p2}, Lg/fcw;->f(JZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v1, p1, Lg/ein;->a:Z

    :cond_1
    return-void
.end method

.method public final u(Z)Lg/ein;
    .locals 0

    invoke-virtual {p0}, Lg/os;->zza()V

    invoke-virtual {p0}, Lg/acn;->_e()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/bcm;->q:Lg/ein;

    return-object p1

    :cond_0
    iget-object p1, p0, Lg/bcm;->q:Lg/ein;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lg/bcm;->l:Lg/ein;

    return-object p1
.end method

.method public final v(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Activity"

    return-object p1

    :cond_0
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x64

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final w(Lg/ein;Lg/ein;JZLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    iget-boolean v6, v1, Lg/ein;->b:Z

    iget-object v7, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v7, Lg/cyg;

    invoke-virtual {v0}, Lg/acn;->_e()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    iget-wide v10, v2, Lg/ein;->f:J

    iget-wide v12, v1, Lg/ein;->f:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_0

    iget-object v10, v2, Lg/ein;->e:Ljava/lang/String;

    iget-object v11, v1, Lg/ein;->e:Ljava/lang/String;

    invoke-static {v10, v11}, Lg/ffb;->cg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v2, Lg/ein;->c:Ljava/lang/String;

    iget-object v11, v1, Lg/ein;->c:Ljava/lang/String;

    invoke-static {v10, v11}, Lg/ffb;->cg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz p5, :cond_2

    iget-object v11, v0, Lg/bcm;->q:Lg/ein;

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    :cond_2
    if-eqz v10, :cond_c

    if-eqz v5, :cond_3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    move-object v14, v10

    goto :goto_2

    :cond_3
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :goto_2
    invoke-static {v1, v14, v9}, Lg/dkq;->q(Lg/ein;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lg/ein;->c:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v10, "_pn"

    invoke-virtual {v14, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lg/ein;->e:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v10, "_pc"

    invoke-virtual {v14, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v5, "_pi"

    iget-wide v10, v2, Lg/ein;->f:J

    invoke-virtual {v14, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v10, 0x0

    if-eqz v8, :cond_7

    iget-object v2, v7, Lg/cyg;->n:Lg/cjv;

    invoke-static {v2}, Lg/cyg;->aj(Lg/os;)V

    iget-object v2, v2, Lg/cjv;->k:Lg/fcw;

    iget-wide v12, v2, Lg/fcw;->e:J

    sub-long v12, v3, v12

    iput-wide v3, v2, Lg/fcw;->e:J

    cmp-long v2, v12, v10

    if-lez v2, :cond_7

    iget-object v2, v7, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v2, v14, v12, v13}, Lg/dkq;->bs(Landroid/os/Bundle;J)V

    :cond_7
    iget-object v2, v7, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/dsd;->j()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "_mst"

    const-wide/16 v12, 0x1

    invoke-virtual {v14, v2, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    if-eq v9, v6, :cond_9

    const-string v2, "auto"

    :goto_3
    move-object v15, v2

    goto :goto_4

    :cond_9
    const-string v2, "app"

    goto :goto_3

    :goto_4
    iget-object v2, v7, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz v6, :cond_b

    move-wide/from16 p5, v10

    iget-wide v10, v1, Lg/ein;->d:J

    cmp-long v2, v10, p5

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move-wide v12, v10

    :cond_b
    :goto_5
    iget-object v11, v7, Lg/cyg;->c:Lg/csp;

    invoke-static {v11}, Lg/cyg;->aj(Lg/os;)V

    const-string v16, "_vs"

    invoke-virtual/range {v11 .. v16}, Lg/csp;->ba(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v8, :cond_d

    iget-object v2, v0, Lg/bcm;->q:Lg/ein;

    invoke-virtual {v0, v2, v9, v3, v4}, Lg/bcm;->t(Lg/ein;ZJ)V

    :cond_d
    iput-object v1, v0, Lg/bcm;->q:Lg/ein;

    if-eqz v6, :cond_e

    iput-object v1, v0, Lg/bcm;->l:Lg/ein;

    :cond_e
    invoke-virtual {v7}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v2

    invoke-virtual {v2}, Lg/acn;->_e()V

    invoke-virtual {v2}, Lg/os;->zza()V

    new-instance v3, Lg/fuy;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v1, v5}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v0}, Lg/dsd;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lg/ein;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lg/ein;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lg/bcm;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
