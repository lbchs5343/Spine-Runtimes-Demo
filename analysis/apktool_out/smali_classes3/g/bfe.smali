.class public final Lg/bfe;
.super Lcom/google/android/gms/internal/ads/zzgaq;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzgas;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bfe;->a:Lcom/google/android/gms/internal/ads/zzgas;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfzz;
    .locals 3

    iget-object v0, p0, Lg/bfe;->a:Lcom/google/android/gms/internal/ads/zzgas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgas;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lg/dys;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lg/gpx;

    invoke-direct {v2, v0, v1}, Lg/gpx;-><init>(Ljava/util/Map;Lg/dys;)V

    return-object v2
.end method
