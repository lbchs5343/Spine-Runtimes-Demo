.class public final Lcom/google/android/gms/internal/ads/zzkm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:F

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->a:J

    const v2, -0x800001

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkm;->b:F

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->c:J

    return-void
.end method


# virtual methods
.method public final zzd(J)Lcom/google/android/gms/internal/ads/zzkm;
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkm;->c:J

    return-object p0
.end method

.method public final zze(J)Lcom/google/android/gms/internal/ads/zzkm;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkm;->a:J

    return-object p0
.end method

.method public final zzf(F)Lcom/google/android/gms/internal/ads/zzkm;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const v0, -0x800001

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkm;->b:F

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzko;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzko;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzko;-><init>(Lcom/google/android/gms/internal/ads/zzkm;)V

    return-object v0
.end method
