.class public final Lcom/google/android/gms/internal/ads/zzvx;
.super Lcom/google/android/gms/internal/ads/zztq;
.source "SourceFile"


# instance fields
.field public final l:Lcom/google/android/gms/internal/ads/zzgc;

.field public m:Z

.field public n:Lcom/google/android/gms/internal/ads/zzhd;

.field public o:Z

.field public p:J

.field public q:Lcom/google/android/gms/internal/ads/zzaw;

.field public r:Z

.field public final s:Lcom/google/android/gms/internal/ads/zzrp;

.field public final t:I

.field public final u:Lcom/google/android/gms/internal/ads/zzvu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaw;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzvu;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzyw;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->q:Lcom/google/android/gms/internal/ads/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvx;->l:Lcom/google/android/gms/internal/ads/zzgc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvx;->u:Lcom/google/android/gms/internal/ads/zzvu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvx;->s:Lcom/google/android/gms/internal/ads/zzrp;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvx;->t:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->m:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->p:J

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->n:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvx;->v()V

    return-void
.end method

.method public final v()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzvx;->p:J

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzvx;->r:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzvx;->o:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvx;->zzJ()Lcom/google/android/gms/internal/ads/zzaw;

    move-result-object v4

    if-eqz v3, :cond_0

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzaw;->zzc:Lcom/google/android/gms/internal/ads/zzaq;

    :goto_0
    move-object/from16 v21, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v20, v4

    move-wide v4, v2

    move-wide v6, v2

    move-wide v10, v8

    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzaw;Lcom/google/android/gms/internal/ads/zzaq;)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzvx;->m:Z

    if-eqz v2, :cond_1

    new-instance v2, Lg/flr;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzuf;-><init>(Lcom/google/android/gms/internal/ads/zzbv;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztq;->h(Lcom/google/android/gms/internal/ads/zzbv;)V

    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzup;)V
    .locals 4

    check-cast p1, Lg/fkd;

    iget-boolean v0, p1, Lg/fkd;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwf;->zzn()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzg;->zzj(Lcom/google/android/gms/internal/ads/zzzc;)V

    iget-object v0, p1, Lg/fkd;->ag:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p1, Lg/fkd;->j:Lcom/google/android/gms/internal/ads/zzuo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/fkd;->k:Z

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzys;J)Lcom/google/android/gms/internal/ads/zzup;
    .locals 12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvx;->l:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zza()Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvx;->n:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzgd;->zzf(Lcom/google/android/gms/internal/ads/zzhd;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvx;->zzJ()Lcom/google/android/gms/internal/ads/zzaw;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaw;->zzb:Lcom/google/android/gms/internal/ads/zzar;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzar;->zza:Landroid/net/Uri;

    new-instance v3, Lg/fkd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zztt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzvx;->u:Lcom/google/android/gms/internal/ads/zzvu;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzvu;->zza:Lcom/google/android/gms/internal/ads/zzacw;

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zztt;-><init>(Lcom/google/android/gms/internal/ads/zzacw;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zztq;->a:Lcom/google/android/gms/internal/ads/zzrk;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzrk;->zza(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzrk;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zztq;->f:Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {v8, v6, p1}, Lcom/google/android/gms/internal/ads/zzva;->zza(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v10

    move-object v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvx;->s:Lcom/google/android/gms/internal/ads/zzrp;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzvx;->t:I

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lg/fkd;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zztt;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzys;IJ)V

    return-object v0
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzaw;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->q:Lcom/google/android/gms/internal/ads/zzaw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->p:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->m:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->p:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->r:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->o:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->p:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvx;->r:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvx;->o:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->m:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvx;->v()V

    return-void
.end method

.method public final zzq()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzaw;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->q:Lcom/google/android/gms/internal/ads/zzaw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzz()V
    .locals 0

    return-void
.end method
