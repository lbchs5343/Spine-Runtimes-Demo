.class public final Lg/cyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gan;


# static fields
.field public static volatile a:Lg/cyg;


# instance fields
.field public final aa:Ljava/lang/String;

.field public final ab:Lg/czz;

.field public ac:Lg/fqh;

.field public volatile ad:Ljava/lang/Boolean;

.field public final ae:Lg/fqm;

.field public final af:Lg/ebl;

.field public final ag:Lg/fbc;

.field public final ah:J

.field public final b:Lg/gmr;

.field public final c:Lg/csp;

.field public d:Lg/efm;

.field public final e:Lg/dsd;

.field public f:Ljava/lang/Boolean;

.field public g:Lg/auk;

.field public final h:Lg/bcm;

.field public volatile i:Z

.field public final j:Lg/fth;

.field public final k:Ljava/lang/Boolean;

.field public final l:Ljava/lang/String;

.field public final m:Lg/dkq;

.field public final n:Lg/cjv;

.field public o:Lg/dbb;

.field public final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public s:I

.field public final t:Z

.field public final u:Lg/bww;

.field public final v:Landroid/content/Context;

.field public w:J

.field public x:Z

.field public final y:Ljava/lang/Boolean;

.field public final z:Lg/bgm;


# direct methods
.method public constructor <init>(Lg/acu;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/cyg;->x:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lg/cyg;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lg/acu;->d:Landroid/content/Context;

    new-instance v2, Lg/fbc;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lg/fbc;-><init>(I)V

    iput-object v2, p0, Lg/cyg;->ag:Lg/fbc;

    sput-object v2, Lg/buj;->l:Lg/fbc;

    iput-object v1, p0, Lg/cyg;->v:Landroid/content/Context;

    iget-object v2, p1, Lg/acu;->g:Ljava/lang/String;

    iput-object v2, p0, Lg/cyg;->aa:Ljava/lang/String;

    iget-object v2, p1, Lg/acu;->i:Ljava/lang/String;

    iput-object v2, p0, Lg/cyg;->l:Ljava/lang/String;

    iget-object v2, p1, Lg/acu;->b:Ljava/lang/String;

    iput-object v2, p0, Lg/cyg;->r:Ljava/lang/String;

    iget-boolean v2, p1, Lg/acu;->a:Z

    iput-boolean v2, p0, Lg/cyg;->t:Z

    iget-object v2, p1, Lg/acu;->c:Ljava/lang/Boolean;

    iput-object v2, p0, Lg/cyg;->ad:Ljava/lang/Boolean;

    iget-object v2, p1, Lg/acu;->h:Ljava/lang/String;

    iput-object v2, p0, Lg/cyg;->q:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lg/cyg;->i:Z

    iget-object v3, p1, Lg/acu;->j:Lg/apu;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lg/apu;->zzg:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lg/cyg;->y:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lg/apu;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lg/cyg;->k:Ljava/lang/Boolean;

    :cond_1
    sget-object v3, Lg/duh;->a:Lg/avo;

    if-nez v3, :cond_6

    sget-object v3, Lg/duh;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lg/duh;->a:Lg/avo;

    if-nez v4, :cond_5

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lg/duh;->a:Lg/avo;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-eqz v4, :cond_3

    iget-object v4, v4, Lg/avo;->a:Landroid/content/Context;

    if-eq v4, v5, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lg/fod;->k()V

    invoke-static {}, Lg/bkb;->c()V

    invoke-static {}, Lg/clx;->j()V

    new-instance v4, Lg/ato;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lg/ato;->a:Landroid/content/Context;

    invoke-static {v4}, Lg/baf;->bh(Lg/dvf;)Lg/dvf;

    move-result-object v4

    new-instance v6, Lg/avo;

    invoke-direct {v6, v5, v4}, Lg/avo;-><init>(Landroid/content/Context;Lg/dvf;)V

    sput-object v6, Lg/duh;->a:Lg/avo;

    sget-object v4, Lg/duh;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_4
    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v3

    goto :goto_5

    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    :goto_5
    sget-object v3, Lg/czz;->a:Lg/czz;

    iput-object v3, p0, Lg/cyg;->ab:Lg/czz;

    iget-object v3, p1, Lg/acu;->f:Ljava/lang/Long;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_6
    iput-wide v3, p0, Lg/cyg;->ah:J

    new-instance v3, Lg/dsd;

    invoke-direct {v3, p0}, Lg/bgf;-><init>(Lg/cyg;)V

    sget-object v4, Lg/bfy;->u:Lg/bfy;

    iput-object v4, v3, Lg/dsd;->b:Lg/auz;

    iput-object v3, p0, Lg/cyg;->e:Lg/dsd;

    new-instance v3, Lg/gmr;

    invoke-direct {v3, p0}, Lg/gmr;-><init>(Lg/cyg;)V

    invoke-virtual {v3}, Lg/bkw;->ao()V

    iput-object v3, p0, Lg/cyg;->b:Lg/gmr;

    new-instance v3, Lg/bgm;

    invoke-direct {v3, p0}, Lg/bgm;-><init>(Lg/cyg;)V

    invoke-virtual {v3}, Lg/bkw;->ao()V

    iput-object v3, p0, Lg/cyg;->z:Lg/bgm;

    new-instance v4, Lg/dkq;

    invoke-direct {v4, p0}, Lg/dkq;-><init>(Lg/cyg;)V

    invoke-virtual {v4}, Lg/bkw;->ao()V

    iput-object v4, p0, Lg/cyg;->m:Lg/dkq;

    new-instance v4, Lg/dnb;

    invoke-direct {v4, p0}, Lg/dnb;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lg/ebl;

    invoke-direct {v5, v4}, Lg/ebl;-><init>(Lg/dnb;)V

    iput-object v5, p0, Lg/cyg;->af:Lg/ebl;

    new-instance v4, Lg/fqm;

    invoke-direct {v4, p0}, Lg/fqm;-><init>(Lg/cyg;)V

    iput-object v4, p0, Lg/cyg;->ae:Lg/fqm;

    new-instance v4, Lg/bcm;

    invoke-direct {v4, p0}, Lg/bcm;-><init>(Lg/cyg;)V

    invoke-virtual {v4}, Lg/os;->c()V

    iput-object v4, p0, Lg/cyg;->h:Lg/bcm;

    new-instance v4, Lg/csp;

    invoke-direct {v4, p0}, Lg/csp;-><init>(Lg/cyg;)V

    invoke-virtual {v4}, Lg/os;->c()V

    iput-object v4, p0, Lg/cyg;->c:Lg/csp;

    new-instance v5, Lg/cjv;

    invoke-direct {v5, p0}, Lg/cjv;-><init>(Lg/cyg;)V

    invoke-virtual {v5}, Lg/os;->c()V

    iput-object v5, p0, Lg/cyg;->n:Lg/cjv;

    new-instance v5, Lg/bww;

    invoke-direct {v5, p0}, Lg/bkw;-><init>(Lg/cyg;)V

    invoke-virtual {v5}, Lg/bkw;->ao()V

    iput-object v5, p0, Lg/cyg;->u:Lg/bww;

    new-instance v5, Lg/fth;

    invoke-direct {v5, p0}, Lg/fth;-><init>(Lg/cyg;)V

    invoke-virtual {v5}, Lg/bkw;->ao()V

    iput-object v5, p0, Lg/cyg;->j:Lg/fth;

    iget-object v6, p1, Lg/acu;->j:Lg/apu;

    if-eqz v6, :cond_8

    iget-wide v6, v6, Lg/apu;->zzb:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_a

    invoke-static {v4}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_b

    iget-object v1, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v4, Lg/csp;->o:Lg/eoa;

    if-nez v2, :cond_9

    new-instance v2, Lg/eoa;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v4}, Lg/eoa;-><init>(ILjava/lang/Object;)V

    iput-object v2, v4, Lg/csp;->o:Lg/eoa;

    :cond_9
    if-eqz v0, :cond_b

    iget-object v0, v4, Lg/csp;->o:Lg/eoa;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lg/csp;->o:Lg/eoa;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v3, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_b
    :goto_8
    new-instance v0, Lg/fuy;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v5, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final ai(Lg/bgf;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final aj(Lg/os;)V
    .locals 2

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lg/os;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ak(Lg/bkw;)V
    .locals 2

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lg/bkw;->am:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static al(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)Lg/cyg;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lg/apu;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg/apu;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Lg/apu;

    iget-wide v2, p1, Lg/apu;->zza:J

    iget-wide v4, p1, Lg/apu;->zzb:J

    iget-boolean v6, p1, Lg/apu;->zzc:Z

    iget-object v7, p1, Lg/apu;->zzd:Ljava/lang/String;

    iget-object v10, p1, Lg/apu;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lg/apu;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-static {p0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object v0, Lg/cyg;->a:Lg/cyg;

    if-nez v0, :cond_3

    const-class v1, Lg/cyg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lg/cyg;->a:Lg/cyg;

    if-nez v0, :cond_2

    new-instance v0, Lg/acu;

    invoke-direct {v0, p0, p1, p2}, Lg/acu;-><init>(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)V

    new-instance p0, Lg/cyg;

    invoke-direct {p0, v0}, Lg/cyg;-><init>(Lg/acu;)V

    sput-object p0, Lg/cyg;->a:Lg/cyg;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Lg/apu;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lg/cyg;->a:Lg/cyg;

    invoke-static {p0}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object p0, Lg/cyg;->a:Lg/cyg;

    iget-object p1, p1, Lg/apu;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lg/cyg;->ad:Ljava/lang/Boolean;

    :cond_4
    :goto_2
    sget-object p0, Lg/cyg;->a:Lg/cyg;

    invoke-static {p0}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object p0, Lg/cyg;->a:Lg/cyg;

    return-object p0
.end method


# virtual methods
.method public final am()Lg/fqm;
    .locals 2

    iget-object v0, p0, Lg/cyg;->ae:Lg/fqm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final an()Lg/efm;
    .locals 1

    iget-object v0, p0, Lg/cyg;->d:Lg/efm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, p0, Lg/cyg;->d:Lg/efm;

    return-object v0
.end method

.method public final ao()Lg/dbb;
    .locals 1

    iget-object v0, p0, Lg/cyg;->o:Lg/dbb;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, p0, Lg/cyg;->o:Lg/dbb;

    return-object v0
.end method

.method public final ap()Lg/ebl;
    .locals 1

    iget-object v0, p0, Lg/cyg;->af:Lg/ebl;

    return-object v0
.end method

.method public final aq()V
    .locals 1

    iget-object v0, p0, Lg/cyg;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final ar()Lg/auk;
    .locals 1

    iget-object v0, p0, Lg/cyg;->g:Lg/auk;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, p0, Lg/cyg;->g:Lg/auk;

    return-object v0
.end method

.method public final as()Z
    .locals 1

    invoke-virtual {p0}, Lg/cyg;->av()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final at()Lg/fqh;
    .locals 1

    iget-object v0, p0, Lg/cyg;->ac:Lg/fqh;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, p0, Lg/cyg;->ac:Lg/fqh;

    return-object v0
.end method

.method public final au()Z
    .locals 7

    iget-boolean v0, p0, Lg/cyg;->x:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyg;->f:Ljava/lang/Boolean;

    iget-object v1, p0, Lg/cyg;->ab:Lg/czz;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lg/cyg;->w:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lg/cyg;->w:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lg/cyg;->w:J

    iget-object v0, p0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lg/dkq;->bk(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lg/dkq;->bk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {v1}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v4

    invoke-virtual {v4}, Lg/ccb;->d()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v4}, Lg/dsd;->s()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Lg/dkq;->p(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lg/dkq;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lg/cyg;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v1

    invoke-virtual {v1}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v4

    invoke-virtual {v4}, Lg/os;->zza()V

    iget-object v4, v4, Lg/fqh;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lg/dkq;->bo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/os;->zza()V

    iget-object v0, v0, Lg/fqh;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/cyg;->f:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lg/cyg;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final av()I
    .locals 4

    iget-object v0, p0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v0}, Lg/dsd;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lg/cyg;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyg;->i:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    iget-object v0, p0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "measurement_enabled"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    return v0

    :cond_6
    iget-object v0, p0, Lg/cyg;->e:Lg/dsd;

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->ag:Lg/fbc;

    const-string v1, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v1}, Lg/dsd;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x4

    return v0

    :cond_8
    iget-object v0, p0, Lg/cyg;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x5

    return v0

    :cond_a
    iget-object v0, p0, Lg/cyg;->ad:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lg/cyg;->ad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v0, 0x7

    return v0

    :cond_c
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public final zzau()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lg/cyg;->v:Landroid/content/Context;

    return-object v0
.end method

.method public final zzav()Lg/cvb;
    .locals 1

    iget-object v0, p0, Lg/cyg;->ab:Lg/czz;

    return-object v0
.end method

.method public final zzaw()Lg/fbc;
    .locals 1

    iget-object v0, p0, Lg/cyg;->ag:Lg/fbc;

    return-object v0
.end method

.method public final zzay()Lg/bgm;
    .locals 1

    iget-object v0, p0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    return-object v0
.end method

.method public final zzaz()Lg/fth;
    .locals 1

    iget-object v0, p0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    return-object v0
.end method
