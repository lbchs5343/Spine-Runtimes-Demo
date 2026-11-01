.class public final Lg/fp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzad;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzad;->zze:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lg/fp;->a:Z

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lg/fp;->b:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lg/fp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzd;->zzj()Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p0, Lg/fp;->b:Z

    iget-boolean v2, p1, Lg/fp;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p0, Lg/fp;->a:Z

    iget-boolean p1, p1, Lg/fp;->a:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzd;->zza()I

    move-result p1

    return p1
.end method
