.class public final Lcom/google/android/gms/internal/ads/zzcef;
.super Lcom/google/android/gms/internal/ads/zzfw;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Landroid/net/Uri;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/google/android/gms/internal/ads/zzceq;

.field public final h:Lcom/google/android/gms/internal/ads/zzgd;

.field public i:Lg/dcy;

.field public j:Z

.field public volatile k:Lcom/google/android/gms/internal/ads/zzbax;

.field public final l:Z

.field public m:Ljava/io/InputStream;

.field public n:Z

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public final p:Ljava/lang/String;

.field public q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgd;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzceq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcef;->h:Lcom/google/android/gms/internal/ads/zzgd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcef;->g:Lcom/google/android/gms/internal/ads/zzceq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcef;->p:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcef;->a:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->n:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->q:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->i:Lg/dcy;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzbW:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object p2, Lg/edt;->a:Lg/edt;

    iget-object p2, p2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->l:Z

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzfw;->zzf(Lcom/google/android/gms/internal/ads/zzhd;)V

    return-void
.end method


# virtual methods
.method public final r()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzes:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->j:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzet:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->n:Z

    if-nez v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public final zza([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->h:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result p1

    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcef;->l:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcef;->m:Ljava/io/InputStream;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfw;->zzg(I)V

    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed GcacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgi;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->b:Z

    if-nez v2, :cond_e

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->b:Z

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->e:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->l:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfw;->y(Lcom/google/android/gms/internal/ads/zzgi;)V

    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbax;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzep:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v5, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    iput-wide v8, v3, Lcom/google/android/gms/internal/ads/zzbax;->zzh:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcef;->p:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfxf;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/gms/internal/ads/zzbax;->zzi:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzcef;->a:I

    iput v8, v3, Lcom/google/android/gms/internal/ads/zzbax;->zzj:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbax;->zzg:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzer:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzeq:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v8, Lg/ti;->a:Lg/ti;

    iget-object v9, v8, Lg/ti;->v:Lg/czz;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcef;->f:Landroid/content/Context;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzbbi;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbax;)Ljava/util/concurrent/Future;

    move-result-object v11

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v3, v4, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbbj;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbbj;->zzd()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcef;->d:Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbbj;->zzf()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcef;->j:Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbbj;->zze()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcef;->n:Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbbj;->zza()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzcef;->q:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcef;->r()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbbj;->zzc()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->m:Ljava/io/InputStream;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->l:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfw;->y(Lcom/google/android/gms/internal/ads/zzgi;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    :goto_1
    iget-object p1, v8, Lg/ti;->v:Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->g:Lcom/google/android/gms/internal/ads/zzceq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzceq;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzces;->k:Lcom/google/android/gms/internal/ads/zzcbv;

    if-eqz p1, :cond_3

    invoke-interface {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcbv;->zzi(ZJ)V

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    return-wide v5

    :cond_4
    iget-object v3, v8, Lg/ti;->v:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcef;->g:Lcom/google/android/gms/internal/ads/zzceq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzceq;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzces;->k:Lcom/google/android/gms/internal/ads/zzcbv;

    if-eqz v5, :cond_5

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcbv;->zzi(ZJ)V

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_0
    const/4 v3, 0x1

    goto :goto_3

    :catch_1
    const/4 v3, 0x1

    goto :goto_6

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    goto :goto_7

    :catch_2
    const/4 v3, 0x0

    :goto_3
    :try_start_2
    invoke-interface {v11, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->g:Lcom/google/android/gms/internal/ads/zzceq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzceq;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzces;->k:Lcom/google/android/gms/internal/ads/zzcbv;

    if-eqz v2, :cond_6

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcbv;->zzi(ZJ)V

    :cond_6
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_5
    move v2, v3

    goto :goto_7

    :catch_3
    const/4 v3, 0x0

    :goto_6
    :try_start_3
    invoke-interface {v11, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->g:Lcom/google/android/gms/internal/ads/zzceq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzceq;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzces;->k:Lcom/google/android/gms/internal/ads/zzcbv;

    if-eqz v2, :cond_7

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcbv;->zzi(ZJ)V

    :cond_7
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :goto_7
    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->v:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcef;->g:Lcom/google/android/gms/internal/ads/zzceq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzceq;->zza:Lcom/google/android/gms/internal/ads/zzces;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzces;->k:Lcom/google/android/gms/internal/ads/zzcbv;

    if-eqz v5, :cond_8

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcbv;->zzi(ZJ)V

    :cond_8
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->a:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzj:I

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->t:Lcom/google/android/gms/internal/ads/zzbat;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbat;->zzb(Lcom/google/android/gms/internal/ads/zzbax;)Lcom/google/android/gms/internal/ads/zzbau;

    move-result-object v0

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zze()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->d:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzg()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->j:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzf()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->q:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcef;->r()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzc()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->m:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->l:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfw;->y(Lcom/google/android/gms/internal/ads/zzgi;)V

    :cond_b
    return-wide v5

    :cond_c
    :goto_9
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgi;->zza()Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgg;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgg;->zze()Lcom/google/android/gms/internal/ads/zzgi;

    move-result-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->h:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgd;->zzb(Lcom/google/android/gms/internal/ads/zzgi;)J

    move-result-wide v0

    return-wide v0

    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open GcacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->b:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->e:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->l:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcef;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lg/cro;->al(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->m:Ljava/io/InputStream;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcef;->h:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgd;->zzd()V

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfw;->w()V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed GcacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->q:J

    return-wide v0
.end method

.method public final zzl()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->k:Lcom/google/android/gms/internal/ads/zzbax;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->i:Lg/dcy;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcee;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcee;-><init>(Lcom/google/android/gms/internal/ads/zzcef;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->i:Lg/dcy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->i:Lg/dcy;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->o:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->i:Lg/dcy;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_0
    :cond_3
    :goto_1
    return-wide v1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->d:Z

    return v0
.end method

.method public final zzo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->n:Z

    return v0
.end method

.method public final zzp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->j:Z

    return v0
.end method

.method public final zzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->c:Z

    return v0
.end method
