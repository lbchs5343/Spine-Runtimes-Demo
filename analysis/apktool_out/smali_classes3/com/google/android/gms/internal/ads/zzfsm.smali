.class public abstract Lcom/google/android/gms/internal/ads/zzfsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfsy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfso;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfso;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfsp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfsp;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsy;-><init>(Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfsx;)V

    return-object v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzfsx;)Lcom/google/android/gms/internal/ads/zzfsy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfsk;-><init>(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfsl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsy;-><init>(Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfsx;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfsx;)Lcom/google/android/gms/internal/ads/zzfsy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfxg<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfxg<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfsx;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsy;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfsy;-><init>(Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfsx;)V

    return-object v0
.end method
