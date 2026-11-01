.class public final Lg/axz;
.super Lg/bcy;
.source "SourceFile"


# instance fields
.field public final a:Lg/cyg;

.field public final g:Lg/csp;


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/axz;->a:Lg/cyg;

    iget-object p1, p1, Lg/cyg;->c:Lg/csp;

    invoke-static {p1}, Lg/cyg;->aj(Lg/os;)V

    iput-object p1, p0, Lg/axz;->g:Lg/csp;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lg/axz;->g:Lg/csp;

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lg/csp;->at(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lg/axz;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v0, p1, p2, p3}, Lg/csp;->aw(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13

    iget-object v1, p0, Lg/axz;->g:Lg/csp;

    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v2, v0, Lg/cyg;->j:Lg/fth;

    iget-object v6, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v2}, Lg/fth;->u()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, v6, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lg/fbc;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, v6, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v7, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/chq;

    const/4 v5, 0x6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lg/chq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v9, 0x1388

    const-string v11, "get conditional user properties"

    move-object v12, v0

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lg/fth;->s(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, v6, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Timed out waiting for get conditional user properties"

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_2
    invoke-static {p1}, Lg/dkq;->k(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 9

    iget-object v1, p0, Lg/axz;->g:Lg/csp;

    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v2, v0, Lg/cyg;->j:Lg/fth;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v2}, Lg/fth;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, v7, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_0
    invoke-static {}, Lg/fbc;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, v7, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v8, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/gf;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lg/gf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object v1, v2

    move p1, v5

    const-wide/16 v2, 0x1388

    const-string v4, "get user properties"

    move-object v5, v0

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lg/fth;->s(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, v7, Lg/bgm;->b:Lg/dvb;

    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_2
    new-instance p1, Lg/tl;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Lg/bcp;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/cmd;

    invoke-virtual {p3}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p3, p3, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lg/axz;->g:Lg/csp;

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lg/csp;->av(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lg/axz;->g:Lg/csp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object p1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x19

    return p1
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lg/axz;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/dkq;->by()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/axz;->g:Lg/csp;

    invoke-virtual {v0}, Lg/csp;->ay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/axz;->g:Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v0, Lg/bcm;->m:Lg/ein;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/ein;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/axz;->g:Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v0, Lg/bcm;->m:Lg/ein;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/ein;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/axz;->g:Lg/csp;

    invoke-virtual {v0}, Lg/csp;->ay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzp(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lg/axz;->a:Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->am()Lg/fqm;

    move-result-object v1

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lg/fqm;->m(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lg/axz;->a:Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->am()Lg/fqm;

    move-result-object v1

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lg/fqm;->k(Ljava/lang/String;J)V

    return-void
.end method
