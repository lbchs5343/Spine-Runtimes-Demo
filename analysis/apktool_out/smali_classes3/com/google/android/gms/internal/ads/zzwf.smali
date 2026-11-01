.class public final Lcom/google/android/gms/internal/ads/zzwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadx;


# instance fields
.field public a:Z

.field public aa:Lcom/google/android/gms/internal/ads/zzad;

.field public ab:I

.field public b:I

.field public c:[I

.field public d:I

.field public e:Lcom/google/android/gms/internal/ads/zzad;

.field public f:[Lcom/google/android/gms/internal/ads/zzadw;

.field public final g:Lcom/google/android/gms/internal/ads/zzrp;

.field public h:Lcom/google/android/gms/internal/ads/zzrq;

.field public i:[I

.field public final j:Lcom/google/android/gms/internal/ads/zzrk;

.field public final k:Lg/eda;

.field public l:J

.field public m:Z

.field public n:Z

.field public o:Lcom/google/android/gms/internal/ads/zzwd;

.field public p:J

.field public q:I

.field public r:[J

.field public s:[J

.field public final t:Lg/fks;

.field public u:[J

.field public v:I

.field public w:Z

.field public x:J

.field public final y:Lg/dsg;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzrk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->g:Lcom/google/android/gms/internal/ads/zzrp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->j:Lcom/google/android/gms/internal/ads/zzrk;

    new-instance p2, Lg/eda;

    invoke-direct {p2, p1}, Lg/eda;-><init>(Lcom/google/android/gms/internal/ads/zzys;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    new-instance p1, Lg/fks;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->t:Lg/fks;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->s:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->f:[Lcom/google/android/gms/internal/ads/zzadw;

    new-instance p1, Lg/dsg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzwa;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzwa;-><init>()V

    invoke-direct {p1, p2}, Lg/dsg;-><init>(Lcom/google/android/gms/internal/ads/zzwa;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->p:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->x:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->l:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->z:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->n:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->a:Z

    return-void
.end method


# virtual methods
.method public final ac(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzkj;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzad;->zzs:Lcom/google/android/gms/internal/ads/zzw;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzad;->zzs:Lcom/google/android/gms/internal/ads/zzw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->g:Lcom/google/android/gms/internal/ads/zzrp;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzrp;->zza(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzad;->zzc(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v4

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->j:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-interface {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzrp;->zzc(Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    return-void
.end method

.method public final declared-synchronized ad()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    iget-object v1, v0, Lg/eda;->e:Lg/fcw;

    iput-object v1, v0, Lg/eda;->f:Lg/fcw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ae(IJIZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p2

    if-gtz v3, :cond_4

    if-eqz p5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    move v1, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I

    if-ne p1, v3, :cond_3

    const/4 p1, 0x0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final af(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public final ag(I)J
    .locals 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->x:J

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzwf;->af(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    aget-wide v9, v8, v6

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I

    add-int/2addr v6, v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->x:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    if-gez v1, :cond_5

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget-object v1, p1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_7

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-lt v0, v3, :cond_7

    iget-object v3, p1, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzwa;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->removeAt(I)V

    iget v3, p1, Lg/dsg;->d:I

    if-lez v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lg/dsg;->d:I

    :cond_6
    move v4, v2

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    if-nez p1, :cond_8

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I

    :cond_8
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    return v0
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzc(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzwf;->af(I)I

    move-result v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    const/4 v7, 0x0

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    aget-wide v4, v1, v2

    cmp-long v1, p1, v4

    if-gez v1, :cond_2

    :cond_1
    move-object v1, p0

    goto :goto_3

    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v1, p1, v4

    if-lez v1, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    sub-int/2addr v3, v0

    monitor-exit p0

    return v3

    :cond_4
    :goto_1
    sub-int v5, v3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v3, p1

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwf;->ae(IJIZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_5

    return v7

    :cond_5
    return p1

    :catchall_0
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :goto_3
    monitor-exit p0

    return v7

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzd()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;IZ)I
    .locals 11

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->t:Lg/fks;

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    if-eq v4, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    const/4 v7, -0x4

    const/4 v8, -0x3

    const/4 v9, -0x5

    if-nez v5, :cond_6

    if-nez p4, :cond_5

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->m:Z

    if-eqz p4, :cond_2

    goto :goto_4

    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz p4, :cond_4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;

    if-eq p4, v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_3
    :goto_2
    invoke-virtual {p0, p4, p1}, Lcom/google/android/gms/internal/ads/zzwf;->ac(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzkj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_3
    const/4 v8, -0x5

    goto/16 :goto_8

    :cond_4
    monitor-exit p0

    goto/16 :goto_8

    :cond_5
    :goto_4
    :try_start_1
    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/ads/zzhg;->zzc(I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhm;->zze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_5
    const/4 v8, -0x4

    goto :goto_8

    :cond_6
    :try_start_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    add-int/2addr v10, v4

    invoke-virtual {v5, v10}, Lg/dsg;->o(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fru;

    iget-object v4, v4, Lg/fru;->a:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;

    if-eq v4, v0, :cond_7

    goto :goto_7

    :cond_7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwf;->af(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    aget v0, v0, p1

    goto :goto_6

    :cond_8
    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_9

    iput-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_8

    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzhg;->zzc(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    if-nez p4, :cond_a

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->m:Z

    if-eqz p4, :cond_b

    :cond_a
    const/high16 p4, 0x20000000

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzhg;->zza(I)V

    :cond_b
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    aget-wide v0, p4, p1

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    aget p4, p4, p1

    iput p4, v3, Lg/fks;->a:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    aget-wide v0, p4, p1

    iput-wide v0, v3, Lg/fks;->b:J

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->f:[Lcom/google/android/gms/internal/ads/zzadw;

    aget-object p1, p4, p1

    iput-object p1, v3, Lg/fks;->c:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_5

    :cond_c
    :goto_7
    :try_start_4
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/ads/zzwf;->ac(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzkj;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_3

    :goto_8
    if-ne v8, v7, :cond_11

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhg;->zzf()Z

    move-result p1

    if-nez p1, :cond_10

    and-int/lit8 p1, p3, 0x1

    and-int/2addr p3, v6

    if-nez p3, :cond_e

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->t:Lg/fks;

    iget-object p4, p1, Lg/eda;->c:Lcom/google/android/gms/internal/ads/zzed;

    iget-object p1, p1, Lg/eda;->f:Lg/fcw;

    invoke-static {p1, p2, p3, p4}, Lg/eda;->h(Lg/fcw;Lcom/google/android/gms/internal/ads/zzhm;Lg/fks;Lcom/google/android/gms/internal/ads/zzed;)Lg/fcw;

    return v7

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->t:Lg/fks;

    iget-object p4, p1, Lg/eda;->c:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v0, p1, Lg/eda;->f:Lg/fcw;

    invoke-static {v0, p2, p3, p4}, Lg/eda;->h(Lg/fcw;Lcom/google/android/gms/internal/ads/zzhm;Lg/fks;Lcom/google/android/gms/internal/ads/zzed;)Lg/fcw;

    move-result-object p2

    iput-object p2, p1, Lg/eda;->f:Lg/fcw;

    goto :goto_9

    :cond_e
    if-eqz p1, :cond_f

    goto :goto_a

    :cond_f
    :goto_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    :cond_10
    :goto_a
    return v7

    :cond_11
    return v8

    :goto_b
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadv;->zza(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzn;IZI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    invoke-virtual {p4, p2}, Lg/eda;->k(I)I

    move-result p2

    iget-object v0, p4, Lg/eda;->a:Lg/fcw;

    iget-object v1, v0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyl;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyl;->zza:[B

    iget-wide v3, p4, Lg/eda;->b:J

    iget-wide v5, v0, Lg/fcw;->d:J

    sub-long/2addr v3, v5

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzyl;->zzb:I

    long-to-int v0, v3

    invoke-interface {p1, v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    iget-wide p2, p4, Lg/eda;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p4, Lg/eda;->b:J

    iget-object v0, p4, Lg/eda;->a:Lg/fcw;

    iget-wide v1, v0, Lg/fcw;->e:J

    cmp-long v3, p2, v1

    if-nez v3, :cond_2

    iget-object p2, v0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast p2, Lg/fcw;

    iput-object p2, p4, Lg/eda;->a:Lg/fcw;

    :cond_2
    return p1
.end method

.method public final declared-synchronized zzh()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzi()Lcom/google/android/gms/internal/ads/zzad;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzj(JZZ)V
    .locals 8

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    aget-wide v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    :try_start_1
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p4, v0, :cond_2

    add-int/lit8 v0, p4, 0x1

    :cond_2
    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_4

    :goto_0
    const/4 v7, 0x0

    move-object v2, p0

    move-wide v4, p1

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzwf;->ae(IJIZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwf;->ag(I)J

    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit p0

    const-wide/16 p1, -0x1

    :goto_3
    invoke-virtual {p3, p1, p2}, Lg/eda;->j(J)V

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final zzk()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzwf;->ag(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lg/eda;->j(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzad;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget-object v1, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget-object v1, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fru;

    iget-object v1, v1, Lg/fru;->a:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget-object v1, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fru;

    iget-object v1, v1, Lg/fru;->a:Lcom/google/android/gms/internal/ads/zzad;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->a:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzad;->zzk:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbg;->zzf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->o:Lcom/google/android/gms/internal/ads/zzwd;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzwd;->zzM(Lcom/google/android/gms/internal/ads/zzad;)V

    :cond_3
    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzm()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrq;->zza()Lcom/google/android/gms/internal/ads/zzri;

    move-result-object v0

    throw v0
.end method

.method public final zzn()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwf;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;

    :cond_0
    return-void
.end method

.method public final zzo()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzp(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;

    :cond_0
    return-void
.end method

.method public final zzp(Z)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    iget-object v1, v0, Lg/eda;->d:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v2, v0, Lg/eda;->e:Lg/fcw;

    iget-object v3, v2, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzyl;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzys;->zzd(Lcom/google/android/gms/internal/ads/zzym;)V

    iput-object v4, v2, Lg/fcw;->a:Ljava/lang/Object;

    iput-object v4, v2, Lg/fcw;->b:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lg/eda;->e:Lg/fcw;

    iget-object v3, v2, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzyl;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    const-wide/16 v7, 0x0

    iput-wide v7, v2, Lg/fcw;->d:J

    const-wide/32 v9, 0x10000

    iput-wide v9, v2, Lg/fcw;->e:J

    iget-object v2, v0, Lg/eda;->e:Lg/fcw;

    iput-object v2, v0, Lg/eda;->f:Lg/fcw;

    iput-object v2, v0, Lg/eda;->a:Lg/fcw;

    iput-wide v7, v0, Lg/eda;->b:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzys;->zzg()V

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzwf;->n:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->p:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->x:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->l:J

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget-object v1, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v6, v2, :cond_2

    iget-object v2, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwa;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    iput v2, v0, Lg/dsg;->d:I

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzwf;->z:Z

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzwf;->a:Z

    :cond_3
    return-void
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzed;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadv;->zzb(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzed;I)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzed;II)V
    .locals 8

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    if-lez p2, :cond_1

    invoke-virtual {p3, p2}, Lg/eda;->k(I)I

    move-result v0

    iget-object v1, p3, Lg/eda;->a:Lg/fcw;

    iget-object v2, v1, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyl;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzyl;->zza:[B

    iget-wide v4, p3, Lg/eda;->b:J

    iget-wide v6, v1, Lg/fcw;->d:J

    sub-long/2addr v4, v6

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzyl;->zzb:I

    long-to-int v1, v4

    invoke-virtual {p1, v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    sub-int/2addr p2, v0

    iget-wide v1, p3, Lg/eda;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p3, Lg/eda;->b:J

    iget-object v0, p3, Lg/eda;->a:Lg/fcw;

    iget-wide v3, v0, Lg/fcw;->e:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v0, v0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v0, Lg/fcw;

    iput-object v0, p3, Lg/eda;->a:Lg/fcw;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->n:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->a:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->p:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_3

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->w:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Overriding unexpected non-sync sample for format: "

    const-string v4, "SampleQueue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->w:Z

    :cond_2
    or-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->k:Lg/eda;

    int-to-long v3, p4

    iget-wide v5, v0, Lg/eda;->b:J

    sub-long/2addr v5, v3

    int-to-long v3, p5

    sub-long/2addr v5, v3

    monitor-enter p0

    :try_start_0
    iget p5, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    const/4 v0, -0x1

    if-lez p5, :cond_6

    add-int/2addr p5, v0

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzwf;->af(I)I

    move-result p5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    aget-wide v7, v3, p5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    aget p5, v3, p5

    int-to-long v3, p5

    add-long/2addr v7, v3

    cmp-long p5, v7, v5

    if-gtz p5, :cond_5

    const/4 p5, 0x1

    goto :goto_2

    :cond_5
    const/4 p5, 0x0

    :goto_2
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_6
    :goto_3
    const/high16 p5, 0x20000000

    and-int/2addr p5, p3

    if-eqz p5, :cond_7

    const/4 p5, 0x1

    goto :goto_4

    :cond_7
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzwf;->m:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->l:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->l:J

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzwf;->af(I)I

    move-result p5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    aput-wide p1, v3, p5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    aput-wide v5, p1, p5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    aput p4, p1, p5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    aput p3, p1, p5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->f:[Lcom/google/android/gms/internal/ads/zzadw;

    aput-object p6, p1, p5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->s:[J

    const-wide/16 p2, 0x0

    aput-wide p2, p1, p5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget-object p1, p1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget-object p1, p1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fru;

    iget-object p1, p1, Lg/fru;->a:Lcom/google/android/gms/internal/ads/zzad;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzad;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->g:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->j:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzrp;->zzb(Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzro;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    add-int/2addr p4, p5

    new-instance p5, Lg/fru;

    invoke-direct {p5, p1, p2}, Lg/fru;-><init>(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzro;)V

    iget-object p1, p3, Lg/dsg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    iget p2, p3, Lg/dsg;->d:I

    if-ne p2, v0, :cond_b

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_a

    const/4 p2, 0x1

    goto :goto_6

    :cond_a
    const/4 p2, 0x0

    :goto_6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput v1, p3, Lg/dsg;->d:I

    :cond_b
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_d

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    if-lt p4, p2, :cond_c

    const/4 p6, 0x1

    goto :goto_7

    :cond_c
    const/4 p6, 0x0

    :goto_7
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    if-ne p2, p4, :cond_d

    iget-object p2, p3, Lg/dsg;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzwa;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p1, p4, p5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_e
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I

    if-ne p1, p2, :cond_f

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array v0, p1, [I

    new-array v2, p1, [Lcom/google/android/gms/internal/ads/zzadw;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    sub-int/2addr p2, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    invoke-static {v4, v3, p4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    invoke-static {v3, v4, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    invoke-static {v3, v4, p6, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    invoke-static {v3, v4, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->f:[Lcom/google/android/gms/internal/ads/zzadw;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    invoke-static {v3, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->s:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    invoke-static {v3, v4, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    invoke-static {v4, v1, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    invoke-static {v4, v1, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    invoke-static {v4, v1, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    invoke-static {v4, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->f:[Lcom/google/android/gms/internal/ads/zzadw;

    invoke-static {v4, v1, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->s:[J

    invoke-static {v4, v1, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->u:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->c:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->f:[Lcom/google/android/gms/internal/ads/zzadw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->s:[J

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->v:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    monitor-exit p0

    return-void

    :cond_10
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->p:J

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzwd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->o:Lcom/google/android/gms/internal/ads/zzwd;

    return-void
.end method

.method public final declared-synchronized zzv(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzw()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzx(Z)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->m:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->e:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    monitor-exit p0

    return v2

    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->y:Lg/dsg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lg/dsg;->o(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fru;

    iget-object p1, p1, Lg/fru;->a:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->aa:Lcom/google/android/gms/internal/ads/zzad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_5

    monitor-exit p0

    return v3

    :cond_5
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwf;->af(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->h:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->i:[I

    aget p1, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    :goto_2
    monitor-exit p0

    return v2

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzy(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwf;->ad()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->q:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->p:J

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzz(JZ)Z
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwf;->ad()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzwf;->af(I)I

    move-result v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    aget-wide v4, v1, v2

    cmp-long v1, p1, v4

    if-ltz v1, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->l:J

    cmp-long v1, p1, v4

    if-lez v1, :cond_2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    move-object v1, p0

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v9, -0x1

    if-eqz v1, :cond_7

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->r:[J

    aget-wide v4, v1, v2

    cmp-long v1, v4, p1

    if-gez v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_6

    :cond_4
    move-object v1, p0

    move-wide v3, p1

    move p1, v0

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    move-wide v10, p1

    move p1, v3

    move-wide v3, v10

    move-object v1, p0

    goto :goto_3

    :cond_6
    move-object v1, p0

    move-wide v3, p1

    const/4 p1, -0x1

    goto :goto_3

    :cond_7
    sub-int v5, v3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v3, p1

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwf;->ae(IJIZ)I

    move-result p1

    :goto_3
    if-ne p1, v9, :cond_8

    goto :goto_5

    :cond_8
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzwf;->p:J

    iget p2, v1, Lcom/google/android/gms/internal/ads/zzwf;->ab:I

    add-int/2addr p2, p1

    iput p2, v1, Lcom/google/android/gms/internal/ads/zzwf;->ab:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v8

    :catchall_1
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_4

    :goto_5
    monitor-exit p0

    return v7

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
