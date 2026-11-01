.class public final Lcom/google/android/gms/internal/ads/zzke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public zza:Lg/gzx;

.field public zzb:I

.field public zzc:Z

.field public zzd:I


# direct methods
.method public constructor <init>(Lg/gzx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzke;->a:Z

    or-int/2addr v0, p1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzke;->a:Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzke;->zzb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzke;->zzb:I

    return-void
.end method

.method public final zzb(Lg/gzx;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzke;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzke;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    return-void
.end method

.method public final zzc(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzke;->zzc:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzke;->zzd:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzke;->a:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzke;->zzc:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzke;->zzd:I

    return-void
.end method
