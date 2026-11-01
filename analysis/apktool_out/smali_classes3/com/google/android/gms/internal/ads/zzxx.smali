.class public final synthetic Lcom/google/android/gms/internal/ads/zzxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lg/ccx;

    check-cast p2, Lg/ccx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzd;->zzj()Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p1, Lg/ccx;->a:Z

    iget-boolean v2, p2, Lg/ccx;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p1, Lg/ccx;->m:I

    iget v2, p2, Lg/ccx;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p1, Lg/ccx;->k:Z

    iget-boolean v2, p2, Lg/ccx;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p1, Lg/ccx;->j:Z

    iget-boolean v2, p2, Lg/ccx;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p1, Lg/ccx;->h:Z

    iget-boolean v2, p2, Lg/ccx;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p1, Lg/ccx;->c:Z

    iget-boolean v2, p2, Lg/ccx;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p1, Lg/ccx;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Lg/ccx;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p1, Lg/ccx;->b:Z

    iget-boolean v2, p2, Lg/ccx;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v2, p1, Lg/ccx;->l:Z

    iget-boolean v3, p2, Lg/ccx;->l:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget p1, p1, Lg/ccx;->i:I

    iget p2, p2, Lg/ccx;->i:I

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzd;->zza()I

    move-result p1

    return p1
.end method
