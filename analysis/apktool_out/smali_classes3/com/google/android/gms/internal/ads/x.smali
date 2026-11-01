.class public final Lcom/google/android/gms/internal/ads/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ah;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzhai;

.field public final b:Lcom/google/android/gms/internal/ads/i;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/i;Lcom/google/android/gms/internal/ads/zzhai;)V
    .locals 1

    sget-object v0, Lg/erw;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x;->b:Lcom/google/android/gms/internal/ads/i;

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzgyt;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/x;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x;->a:Lcom/google/android/gms/internal/ads/zzhai;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;[BIILg/fse;)V
    .locals 0

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->zzc()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->g()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzgyx;)I
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbo;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/x;->c:Z

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lg/cxb;->b:Lg/eol;

    invoke-virtual {p1}, Lg/eol;->hashCode()I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_0
    return v0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/x;->c:Z

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    invoke-virtual {p1, p2}, Lg/cxb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x;->b:Lcom/google/android/gms/internal/ads/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbo;->zzh()V

    sget-object v0, Lg/erw;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    invoke-virtual {p1}, Lg/cxb;->n()Z

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/Object;Lg/gli;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    invoke-virtual {v0}, Lg/cxb;->k()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgyl;->zzc()Lcom/google/android/gms/internal/ads/zzhcb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhcb;->zzi:Lcom/google/android/gms/internal/ads/zzhcb;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgyl;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lg/dfl;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()I

    move-result v2

    check-cast v1, Lg/dfl;

    iget-object v1, v1, Lg/dfl;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzt;->zzb()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lg/eub;

    invoke-virtual {v3, v2, v1}, Lg/eub;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lg/eub;

    invoke-virtual {v3, v2, v1}, Lg/eub;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzhbo;->d:I

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhbo;->e:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhbo;->f:[Ljava/lang/Object;

    aget-object v2, v2, v0

    move-object v3, p2

    check-cast v3, Lg/eub;

    invoke-virtual {v3, v1, v2}, Lg/eub;->c(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzgyx;)I
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbo;->zzb()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/x;->c:Z

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    iget-object p1, p1, Lg/cxb;->b:Lg/eol;

    iget v1, p1, Lg/eol;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lg/eol;->m(I)Lg/asf;

    move-result-object v4

    invoke-static {v4}, Lg/cxb;->g(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/eol;->j()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lg/cxb;->g(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v3

    :cond_2
    return v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/e;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/x;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lg/erw;->a:Lcom/google/android/gms/internal/ads/i;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    iget-object p2, p2, Lg/cxb;->b:Lg/eol;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/Object;Lg/hj;Lcom/google/android/gms/internal/ads/zzgyh;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/x;->b:Lcom/google/android/gms/internal/ads/i;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x;->a:Lcom/google/android/gms/internal/ads/zzhai;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyx;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cm()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhai;->zzcZ()Lcom/google/android/gms/internal/ads/zzhah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhah;->zzbs()Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v0

    return-object v0
.end method
