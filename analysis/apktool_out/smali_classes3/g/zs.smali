.class public final Lg/zs;
.super Lg/dzk;
.source "SourceFile"

# interfaces
.implements Lg/ake;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lg/bsz;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lg/bsz;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-direct {p0, v0}, Lg/dzk;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/zs;->b:Lg/bsz;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/zs;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d(Lg/cmd;Lg/afh;)V
    .locals 2

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lg/zs;->q(Lg/afh;)V

    new-instance v0, Lg/eax;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p1, p2, v1}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lg/afh;)Ljava/util/List;
    .locals 7

    invoke-virtual {p0, p3}, Lg/zs;->q(Lg/afh;)V

    iget-object v2, p3, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object p3, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {p3}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v6

    new-instance v0, Lg/lw;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lg/lw;-><init>(Lg/zs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lg/fth;->t(Ljava/util/concurrent/Callable;)Lg/gfi;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p1, p3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/zs;->h(Ljava/lang/String;Z)V

    iget-object v1, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    new-instance v2, Lg/lw;

    const/4 v7, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lg/lw;-><init>(Lg/zs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lg/fth;->t(Ljava/util/concurrent/Callable;)Lg/gfi;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    const-string p3, "Failed to get conditional user properties as"

    invoke-virtual {p2, p1, p3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final g(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lg/sc;

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v5, p1

    move-object v4, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v7}, Lg/sc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "com.google.android.gms"

    const-string v1, "Unknown calling package name \'"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v3, p0, Lg/zs;->b:Lg/bsz;

    if-nez v2, :cond_b

    if-eqz p2, :cond_7

    :try_start_0
    iget-object p2, p0, Lg/zs;->c:Ljava/lang/Boolean;

    if-nez p2, :cond_6

    iget-object p2, p0, Lg/zs;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_5

    iget-object p2, v3, Lg/bsz;->m:Lg/cyg;

    iget-object p2, p2, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {p2, v4, v0}, Lg/aky;->al(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0x40

    :try_start_1
    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {p2}, Lg/awm;->e(Landroid/content/Context;)Lg/awm;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v5}, Lg/awm;->d(Landroid/content/pm/PackageInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Lg/awm;->d(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p2, Lg/awm;->b:Landroid/content/Context;

    invoke-static {p2}, Lg/evp;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :catch_0
    :cond_3
    :goto_0
    iget-object p2, v3, Lg/bsz;->m:Lg/cyg;

    iget-object p2, p2, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {p2}, Lg/awm;->e(Landroid/content/Context;)Lg/awm;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, v0}, Lg/awm;->g(I)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lg/zs;->c:Ljava/lang/Boolean;

    :cond_6
    iget-object p2, p0, Lg/zs;->c:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_9

    :cond_7
    iget-object p2, p0, Lg/zs;->a:Ljava/lang/String;

    if-nez p2, :cond_8

    iget-object p2, v3, Lg/bsz;->m:Lg/cyg;

    iget-object p2, p2, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-object v2, Lg/evp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p2, v0, p1}, Lg/aky;->al(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p1, p0, Lg/zs;->a:Ljava/lang/String;

    :cond_8
    iget-object p2, p0, Lg/zs;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    return-void

    :cond_a
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-virtual {v3}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Measurement Service called with invalid calling package. appId"

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p2

    :cond_b
    invoke-virtual {v3}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lg/ctf;Lg/afh;)V
    .locals 1

    iget-object v0, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    invoke-virtual {v0, p1, p2}, Lg/bsz;->ax(Lg/ctf;Lg/afh;)V

    return-void
.end method

.method public final j(Landroid/os/Bundle;Lg/afh;)V
    .locals 6

    invoke-virtual {p0, p2}, Lg/zs;->q(Lg/afh;)V

    iget-object v2, p2, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    new-instance v0, Lg/eax;

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v0}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Lg/afh;)V
    .locals 2

    iget-object v0, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, p1, Lg/afh;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lg/zs;->h(Ljava/lang/String;Z)V

    new-instance v0, Lg/aay;

    invoke-direct {v0, p0, p1, v1}, Lg/aay;-><init>(Lg/zs;Lg/afh;I)V

    invoke-virtual {p0, v0}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(Lg/afh;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Lg/zs;->q(Lg/afh;)V

    iget-object v0, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    new-instance v2, Lg/fal;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3, p1}, Lg/fal;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lg/fth;->t(Ljava/util/concurrent/Callable;)Lg/gfi;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    iget-object p1, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v0, p1, v2, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final m(Lg/afh;)V
    .locals 2

    iget-object v0, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, p1, Lg/afh;->zzv:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    new-instance v0, Lg/aay;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lg/aay;-><init>(Lg/zs;Lg/afh;I)V

    iget-object p1, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {p1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/aay;->run()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg/fth;->o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n(Lg/ctf;Lg/afh;)V
    .locals 2

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lg/zs;->q(Lg/afh;)V

    new-instance v0, Lg/eax;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p1, p2, v1}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Lg/afh;)V
    .locals 2

    invoke-virtual {p0, p1}, Lg/zs;->q(Lg/afh;)V

    new-instance v0, Lg/aay;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lg/aay;-><init>(Lg/zs;Lg/afh;I)V

    invoke-virtual {p0, v0}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;ZLg/afh;)Ljava/util/List;
    .locals 8

    invoke-virtual {p0, p4}, Lg/zs;->q(Lg/afh;)V

    iget-object v2, p4, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v6, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v6}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v7

    new-instance v0, Lg/lw;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lg/lw;-><init>(Lg/zs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lg/fth;->t(Ljava/util/concurrent/Callable;)Lg/gfi;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ffu;

    if-nez p3, :cond_1

    iget-object v1, v0, Lg/ffu;->e:Ljava/lang/String;

    invoke-static {v1}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v1, Lg/cmd;

    invoke-direct {v1, v0}, Lg/cmd;-><init>(Lg/ffu;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :goto_3
    invoke-virtual {v6}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    iget-object p3, p4, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {p3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    invoke-virtual {p2, p3, p4, p1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final q(Lg/afh;)V
    .locals 2

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, p1, Lg/afh;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lg/zs;->h(Ljava/lang/String;Z)V

    iget-object v0, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v0

    iget-object v1, p1, Lg/afh;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lg/afh;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lg/dkq;->bo(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final r(Lg/afh;)V
    .locals 2

    invoke-virtual {p0, p1}, Lg/zs;->q(Lg/afh;)V

    new-instance v0, Lg/aay;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lg/aay;-><init>(Lg/zs;Lg/afh;I)V

    invoke-virtual {p0, v0}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Lg/bou;Lg/afh;)V
    .locals 2

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/bou;->zzc:Lg/cmd;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lg/zs;->q(Lg/afh;)V

    new-instance v0, Lg/bou;

    invoke-direct {v0, p1}, Lg/bou;-><init>(Lg/bou;)V

    iget-object p1, p2, Lg/afh;->zza:Ljava/lang/String;

    iput-object p1, v0, Lg/bou;->zza:Ljava/lang/String;

    new-instance p1, Lg/eax;

    const/16 v1, 0xd

    invoke-direct {p1, p0, v0, p2, v1}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lg/zs;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    sget-object p1, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/zs;->m(Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    sget-object v0, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lg/zs;->j(Landroid/os/Bundle;Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    sget-object p1, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/zs;->k(Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v2}, Lg/zs;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v2}, Lg/zs;->e(Ljava/lang/String;Ljava/lang/String;Lg/afh;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v2, v3, v0}, Lg/zs;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v3, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v2, v0, v3}, Lg/zs;->p(Ljava/lang/String;Ljava/lang/String;ZLg/afh;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_8
    sget-object p1, Lg/bou;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/bou;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object p2, p1, Lg/bou;->zzc:Lg/cmd;

    invoke-static {p2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object p2, p1, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {p2}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object p2, p1, Lg/bou;->zza:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lg/zs;->h(Ljava/lang/String;Z)V

    new-instance p2, Lg/bou;

    invoke-direct {p2, p1}, Lg/bou;-><init>(Lg/bou;)V

    new-instance p1, Lg/fuy;

    const/4 v2, 0x4

    invoke-direct {p1, v2, p0, p2, v0}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lg/zs;->u(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    sget-object p1, Lg/bou;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/bou;

    sget-object v0, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lg/zs;->s(Lg/bou;Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    sget-object p1, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/zs;->l(Lg/afh;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg/zs;->g(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    move-object v2, p0

    sget-object p1, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ctf;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lg/zs;->w(Lg/ctf;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    :pswitch_d
    move-object v2, p0

    sget-object p1, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/afh;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/zs;->q(Lg/afh;)V

    iget-object p2, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {p2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v3, v2, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v3}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v4

    new-instance v5, Lg/fal;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6, p2}, Lg/fal;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lg/fth;->t(Ljava/util/concurrent/Callable;)Lg/gfi;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ffu;

    if-nez v0, :cond_4

    iget-object v6, v5, Lg/ffu;->e:Ljava/lang/String;

    invoke-static {v6}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-object p2, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v6, Lg/cmd;

    invoke-direct {v6, v5}, Lg/cmd;-><init>(Lg/ffu;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    invoke-virtual {v3}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    iget-object p1, p1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {p1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p1

    const-string v3, "Failed to get user properties. appId"

    invoke-virtual {v0, p1, v3, p2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_e
    move-object v2, p0

    sget-object p1, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/zs;->r(Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    move-object v2, p0

    sget-object p1, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ctf;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lg/zs;->h(Ljava/lang/String;Z)V

    new-instance p2, Lg/eax;

    const/16 v3, 0xf

    invoke-direct {p2, p0, p1, v0, v3}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Lg/zs;->u(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    move-object v2, p0

    sget-object p1, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/zs;->o(Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    move-object v2, p0

    sget-object p1, Lg/cmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/cmd;

    sget-object v0, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lg/zs;->d(Lg/cmd;Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    move-object v2, p0

    sget-object p1, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ctf;

    sget-object v0, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/afh;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lg/zs;->n(Lg/ctf;Lg/afh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final u(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/zs;->h(Ljava/lang/String;Z)V

    iget-object v1, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    new-instance v2, Lg/lw;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lg/lw;-><init>(Lg/zs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lg/fth;->t(Ljava/util/concurrent/Callable;)Lg/gfi;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/ffu;

    if-nez p4, :cond_1

    iget-object v0, p3, Lg/ffu;->e:Ljava/lang/String;

    invoke-static {v0}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v0, Lg/cmd;

    invoke-direct {v0, p3}, Lg/cmd;-><init>(Lg/ffu;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :goto_3
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object p2

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    const-string p3, "Failed to get user properties as. appId"

    invoke-static {v4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p4

    invoke-virtual {p2, p4, p3, p1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final w(Lg/ctf;Ljava/lang/String;)[B
    .locals 13

    invoke-static {p2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lg/zs;->h(Ljava/lang/String;Z)V

    iget-object v1, p0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->o:Lg/dvb;

    iget-object v3, v1, Lg/bsz;->m:Lg/cyg;

    iget-object v4, v3, Lg/cyg;->af:Lg/ebl;

    iget-object v5, p1, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Log and bundle. event"

    invoke-virtual {v2, v4, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v2

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v2

    new-instance v8, Lg/gzm;

    invoke-direct {v8, p0, p1, p2}, Lg/gzm;-><init>(Lg/zs;Lg/ctf;Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/bkw;->an()V

    new-instance v9, Lg/gfi;

    invoke-direct {v9, v2, v8, v0}, Lg/gfi;-><init>(Lg/fth;Ljava/util/concurrent/Callable;Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v8, v2, Lg/fth;->j:Lg/gwi;

    if-ne v0, v8, :cond_0

    invoke-virtual {v9}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v9}, Lg/fth;->q(Lg/gfi;)V

    :goto_0
    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Log and bundle returned null. appId"

    invoke-static {p2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v8

    invoke-virtual {v0, v8, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v2

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->o:Lg/dvb;

    const-string v10, "Log and bundle processed. event, size, time_ms"

    iget-object v11, v3, Lg/cyg;->af:Lg/ebl;

    iget-object v12, p1, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    array-length v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    div-long/2addr v8, v6

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v10, v11, v12, v4}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    invoke-static {p2}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p2

    iget-object v2, v3, Lg/cyg;->af:Lg/ebl;

    iget-object p1, p1, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-virtual {v1, v2, p2, p1, v0}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
