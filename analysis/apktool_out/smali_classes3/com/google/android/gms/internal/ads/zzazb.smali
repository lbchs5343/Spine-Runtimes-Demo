.class public final Lcom/google/android/gms/internal/ads/zzazb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public final e:Z

.field public f:I

.field public final g:Lcom/google/android/gms/internal/ads/zzazq;

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/ads/zzazy;

.field public j:Ljava/lang/String;

.field public k:I

.field public final l:Ljava/util/ArrayList;

.field public final m:I

.field public final n:Ljava/util/ArrayList;

.field public o:Ljava/lang/String;

.field public final p:I

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIIIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->o:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->h:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazb;->m:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazb;->p:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzazb;->e:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzazq;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzazq;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->g:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzazy;

    invoke-direct {p1, p5, p6, p7}, Lcom/google/android/gms/internal/ads/zzazy;-><init>(III)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->i:Lcom/google/android/gms/internal/ads/zzazy;

    return-void
.end method

.method public static final r(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    const/16 v4, 0x64

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    if-le v5, v4, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzazb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzazb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzazb;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final s(Ljava/lang/String;ZFFFF)V
    .locals 8

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->p:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->b:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzazb;->l:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->n:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzazm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzazb;->l:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 v7, p2, -0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzazm;-><init>(FFFFI)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->b:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzazb;->r(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzazb;->l:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzazb;->r(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzazb;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzazb;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzazb;->o:Ljava/lang/String;

    const-string v8, " score:"

    const-string v9, " total_length:"

    const-string v10, "ActivityContent fetchId: "

    invoke-static {v0, v1, v10, v8, v9}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n viewableText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n signture: "

    const-string v2, "\n viewableSignture: "

    invoke-static {v0, v4, v1, v5, v2}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\n viewableSignatureForVertical: "

    invoke-static {v6, v1, v7, v0}, Lg/awf;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->k:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->k:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzg(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->f:I

    return-void
.end method

.method public final zzh(Ljava/lang/String;ZFFFF)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzazb;->s(Ljava/lang/String;ZFFFF)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;ZFFFF)V
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzazb;->s(Ljava/lang/String;ZFFFF)V

    move-object p1, p0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzazb;->k:I

    if-gez p3, :cond_0

    const-string p3, "ActivityContent: negative number of WebViews."

    invoke-static {p3}, Lg/agd;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p3, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazb;->zzj()V

    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p3
.end method

.method public final zzj()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->f:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->m:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzazb;->e:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzazb;->h:I

    mul-int v1, v1, v4

    mul-int v2, v2, v3

    add-int v3, v2, v1

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->d:I

    if-le v3, v1, :cond_2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->d:I

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v2, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v2

    check-cast v2, Lg/cmo;

    invoke-virtual {v2}, Lg/cmo;->ba()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->g:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzazq;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->g:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzazq;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->j:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v1

    check-cast v1, Lg/cmo;

    invoke-virtual {v1}, Lg/cmo;->ag()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->i:Lcom/google/android/gms/internal/ads/zzazy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->l:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazy;->zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->o:Ljava/lang/String;

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzk()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzazb;->f:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->m:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzazb;->e:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzazb;->h:I

    mul-int v1, v1, v4

    mul-int v2, v2, v3

    add-int v3, v2, v1

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->d:I

    if-le v3, v1, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzazb;->d:I

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazb;->k:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
