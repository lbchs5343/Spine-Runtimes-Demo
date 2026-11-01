.class public final Lcom/google/android/gms/internal/ads/zzfzl;
.super Lg/cvh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lg/cvh;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzi;
    .locals 0

    invoke-virtual {p0, p1}, Lg/cvh;->zza(Ljava/lang/Object;)Lg/cvh;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;
    .locals 0

    invoke-virtual {p0, p1}, Lg/cvh;->zza(Ljava/lang/Object;)Lg/cvh;

    return-object p0
.end method

.method public final varargs zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgay;->a(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lg/cvh;->g(I)V

    iget-object v1, p0, Lg/cvh;->d:[Ljava/lang/Object;

    iget v2, p0, Lg/cvh;->e:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lg/cvh;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lg/cvh;->e:I

    return-object p0
.end method

.method public final zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzl;
    .locals 0

    invoke-virtual {p0, p1}, Lg/cvh;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzi;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfzo;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cvh;->f:Z

    iget-object v0, p0, Lg/cvh;->d:[Ljava/lang/Object;

    iget v1, p0, Lg/cvh;->e:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfzo;->j(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l;

    move-result-object v0

    return-object v0
.end method
