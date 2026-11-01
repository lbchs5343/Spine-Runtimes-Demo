.class public final Lcom/google/android/gms/internal/ads/zzk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzk;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzk;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzk;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzk;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzk;->d:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzk;->d:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzk;->e:I

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzk;->c:I

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzk;->f:I

    return-object p0
.end method

.method public final zze([B)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzk;->a:[B

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzk;->b:I

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzm;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzk;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzk;->e:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzk;->f:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzk;->a:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzk;->b:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzk;->d:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzm;-><init>(IIIII[B)V

    return-object v0
.end method
