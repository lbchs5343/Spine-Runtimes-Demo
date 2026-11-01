.class public final Lg/gvq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/ads/zzaux;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfpp;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public c:I

.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Lg/akx;

.field public g:Lg/akx;

.field public h:Z

.field public final i:Z

.field public final j:Ljava/util/Vector;

.field public k:Landroid/content/Context;

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;

.field public final m:Ljava/util/concurrent/CountDownLatch;

.field public final n:Z

.field public final o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/akx;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lg/gvq;->j:Ljava/util/Vector;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg/gvq;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg/gvq;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lg/gvq;->m:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lg/gvq;->k:Landroid/content/Context;

    iput-object p1, p0, Lg/gvq;->d:Landroid/content/Context;

    iput-object p2, p0, Lg/gvq;->g:Lg/akx;

    iput-object p2, p0, Lg/gvq;->f:Lg/akx;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lg/gvq;->b:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcx:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lg/gvq;->n:Z

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfpp;

    move-result-object p1

    iput-object p1, p0, Lg/gvq;->a:Lcom/google/android/gms/internal/ads/zzfpp;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzcu:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object p2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lg/gvq;->i:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzcy:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lg/gvq;->o:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzcw:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lg/gvq;->c:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lg/gvq;->c:I

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzdz:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lg/gvq;->s()Z

    move-result p1

    iput-boolean p1, p0, Lg/gvq;->h:Z

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzdt:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object p1, Lg/cbv;->a:Lg/cbv;

    iget-object p1, p1, Lg/cbv;->d:Lg/mx;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lg/gvq;->run()V

    return-void
.end method


# virtual methods
.method public final p()V
    .locals 8

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    iget-object v1, p0, Lg/gvq;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    aget-object v3, v3, v5

    check-cast v3, Landroid/view/MotionEvent;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzk(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    aget-object v4, v3, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v3, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    aget-object v3, v3, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzl(III)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final q(Z)V
    .locals 3

    iget-object v0, p0, Lg/gvq;->g:Lg/akx;

    iget-object v0, v0, Lg/akx;->afmaVersion:Ljava/lang/String;

    iget-object v1, p0, Lg/gvq;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzarj;->zza()Lcom/google/android/gms/internal/ads/zzarh;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzarh;->zza(Z)Lcom/google/android/gms/internal/ads/zzarh;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzarh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzauz;-><init>(Lcom/google/android/gms/internal/ads/zzarj;)V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzavb;->zzu(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauz;)Lcom/google/android/gms/internal/ads/zzavb;

    move-result-object p1

    iget-object v0, p0, Lg/gvq;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg/gvq;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/gvq;->p()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final run()V
    .locals 10

    iget-object v0, p0, Lg/gvq;->m:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzdz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lg/gvq;->s()Z

    move-result v2

    iput-boolean v2, p0, Lg/gvq;->h:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lg/gvq;->g:Lg/akx;

    iget-boolean v2, v2, Lg/akx;->isClientJar:Z

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzbd:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    iget-boolean v2, p0, Lg/gvq;->i:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lg/gvq;->h:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lg/gvq;->c:I

    :goto_1
    if-ne v2, v5, :cond_3

    invoke-virtual {p0, v4}, Lg/gvq;->q(Z)V

    iget v2, p0, Lg/gvq;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lg/gvq;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lg/asy;

    const/4 v5, 0x4

    invoke-direct {v3, p0, v5, v4}, Lg/asy;-><init>(Ljava/lang/Object;IZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lg/gvq;->k:Landroid/content/Context;

    iget-object v7, p0, Lg/gvq;->g:Lg/akx;

    iget-boolean v8, p0, Lg/gvq;->n:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzarj;->zza()Lcom/google/android/gms/internal/ads/zzarh;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzarh;->zza(Z)Lcom/google/android/gms/internal/ads/zzarh;

    iget-object v7, v7, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzarh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzarj;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v9

    :goto_2
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzauu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzarj;Z)Lcom/google/android/gms/internal/ads/zzauu;

    move-result-object v6

    iget-object v7, p0, Lg/gvq;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-boolean v7, p0, Lg/gvq;->o:Z

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzauu;->zzr()Z

    move-result v6

    if-nez v6, :cond_5

    iput v5, p0, Lg/gvq;->c:I

    invoke-virtual {p0, v4}, Lg/gvq;->q(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    iput v5, p0, Lg/gvq;->c:I

    invoke-virtual {p0, v4}, Lg/gvq;->q(Z)V

    iget-object v4, p0, Lg/gvq;->a:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const/16 v2, 0x7ef

    invoke-virtual {v4, v2, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v1, p0, Lg/gvq;->k:Landroid/content/Context;

    iput-object v1, p0, Lg/gvq;->g:Lg/akx;

    return-void

    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v1, p0, Lg/gvq;->k:Landroid/content/Context;

    iput-object v1, p0, Lg/gvq;->g:Lg/akx;

    throw v2
.end method

.method public final s()Z
    .locals 6

    iget-object v0, p0, Lg/gvq;->k:Landroid/content/Context;

    new-instance v1, Lg/dnb;

    invoke-direct {v1, p0}, Lg/dnb;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfrl;

    iget-object v3, p0, Lg/gvq;->a:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfqr;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpp;)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzcv:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzfrl;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfqs;Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfrl;->zzd(I)Z

    move-result v0

    return v0
.end method

.method public final t()Lcom/google/android/gms/internal/ads/zzaux;
    .locals 2

    iget-boolean v0, p0, Lg/gvq;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/gvq;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/gvq;->c:I

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/gvq;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaux;

    return-object v0

    :cond_1
    iget-object v0, p0, Lg/gvq;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaux;

    return-object v0
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lg/gvq;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg/gvq;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzko:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    const/4 v1, 0x4

    invoke-static {v1, p3}, Lg/esy;->m(ILandroid/view/View;)V

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/gvq;->p()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaux;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lg/gvq;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lg/fal;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lg/fal;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lg/gvq;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzj(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzcO:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lg/gvq;->f:Lg/akx;

    iget-object v0, v0, Lg/akx;->afmaVersion:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzauq;->zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    const/16 p1, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkn:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lg/gvq;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzko:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    invoke-static {v2, p2}, Lg/esy;->m(ILandroid/view/View;)V

    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaux;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzko:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    invoke-static {v2, p2}, Lg/esy;->m(ILandroid/view/View;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaux;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gvq;->p()V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzk(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lg/gvq;->j:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzl(III)V
    .locals 2

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gvq;->p()V

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaux;->zzl(III)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    iget-object p1, p0, Lg/gvq;->j:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcT:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lg/gvq;->m:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzn([Ljava/lang/StackTraceElement;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzn([Ljava/lang/StackTraceElement;)V

    :cond_1
    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lg/gvq;->t()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzo(Landroid/view/View;)V

    :cond_0
    return-void
.end method
