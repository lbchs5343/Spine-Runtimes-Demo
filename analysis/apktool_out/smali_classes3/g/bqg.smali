.class public final Lg/bqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyd;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzyd;

.field public final b:Lcom/google/android/gms/internal/ads/zzbw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzbw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    iput-object p2, p0, Lg/bqg;->b:Lcom/google/android/gms/internal/ads/zzbw;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/bqg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/bqg;

    iget-object v1, p0, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    iget-object v3, p1, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/bqg;->b:Lcom/google/android/gms/internal/ads/zzbw;

    iget-object p1, p1, Lg/bqg;->b:Lcom/google/android/gms/internal/ads/zzbw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/bqg;->b:Lcom/google/android/gms/internal/ads/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbw;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final zza(I)I
    .locals 1

    iget-object v0, p0, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzyh;->zza(I)I

    move-result p1

    return p1
.end method

.method public final zzb(I)I
    .locals 1

    iget-object v0, p0, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzyh;->zzb(I)I

    move-result p1

    return p1
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyh;->zzc()I

    move-result v0

    return v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzad;
    .locals 2

    iget-object v0, p0, Lg/bqg;->b:Lcom/google/android/gms/internal/ads/zzbw;

    iget-object v1, p0, Lg/bqg;->a:Lcom/google/android/gms/internal/ads/zzyd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzyh;->zza(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbw;
    .locals 1

    iget-object v0, p0, Lg/bqg;->b:Lcom/google/android/gms/internal/ads/zzbw;

    return-object v0
.end method
