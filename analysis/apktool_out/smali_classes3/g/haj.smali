.class public final Lg/haj;
.super Lg/cbw;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbw;ILcom/google/android/gms/internal/ads/zzxp;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lg/cbw;-><init>(ILcom/google/android/gms/internal/ads/zzbw;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lg/haj;->i:Z

    iget-object p2, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzad;->zze:I

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzv:I

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    iput-boolean p3, p0, Lg/haj;->b:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lg/haj;->a:Z

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzt:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ""

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzt:Lcom/google/android/gms/internal/ads/zzfzo;

    :goto_2
    const/4 p3, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_4

    iget-object v1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzyb;->i(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    const p3, 0x7fffffff

    const/4 v1, 0x0

    :goto_4
    iput p3, p0, Lg/haj;->g:I

    iput v1, p0, Lg/haj;->c:I

    iget-object p2, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzu:I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzyb;->a:Lcom/google/android/gms/internal/ads/zzgaz;

    if-eqz p2, :cond_5

    if-ne p2, p3, :cond_5

    goto :goto_5

    :cond_5
    and-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    :goto_5
    iput v2, p0, Lg/haj;->e:I

    iget-object p2, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    and-int/lit16 p2, p2, 0x440

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    :goto_6
    iput-boolean p2, p0, Lg/haj;->h:Z

    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzyb;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_7

    :cond_7
    const/4 p2, 0x0

    :goto_7
    iget-object p3, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {p3, p6, p2}, Lcom/google/android/gms/internal/ads/zzyb;->i(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lg/haj;->d:I

    if-gtz v1, :cond_8

    iget-object p3, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzt:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    if-gtz v2, :cond_8

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_9
    :goto_9
    iget-boolean p3, p0, Lg/haj;->b:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lg/haj;->a:Z

    if-eqz p3, :cond_a

    if-lez p2, :cond_a

    goto :goto_8

    :cond_a
    const/4 p2, 0x0

    :goto_a
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxp;->zzN:Z

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p3

    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    const/4 p1, 0x1

    :cond_b
    iput p1, p0, Lg/haj;->f:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/haj;

    invoke-virtual {p0, p1}, Lg/haj;->j(Lg/haj;)I

    move-result p1

    return p1
.end method

.method public final j(Lg/haj;)I
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzd;->zzj()Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p0, Lg/haj;->i:Z

    iget-boolean v2, p1, Lg/haj;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p0, Lg/haj;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lg/haj;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p1, Lg/haj;->c:I

    iget v2, p0, Lg/haj;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p1, Lg/haj;->e:I

    iget v3, p0, Lg/haj;->e:I

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p0, Lg/haj;->b:Z

    iget-boolean v4, p1, Lg/haj;->b:Z

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p0, Lg/haj;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v4, p1, Lg/haj;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p0, Lg/haj;->d:I

    iget v2, p1, Lg/haj;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    if-nez v3, :cond_1

    iget-boolean v1, p0, Lg/haj;->h:Z

    iget-boolean p1, p1, Lg/haj;->h:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfzd;->zze(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzd;->zza()I

    move-result p1

    return p1
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lg/haj;->f:I

    return v0
.end method

.method public final bridge synthetic t(Lg/cbw;)Z
    .locals 0

    check-cast p1, Lg/haj;

    const/4 p1, 0x0

    return p1
.end method
