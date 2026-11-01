.class public final Lg/bxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbjr;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbmx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmx;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bxy;->b:Lcom/google/android/gms/internal/ads/zzbmx;

    iput-object p2, p0, Lg/bxy;->a:Lcom/google/android/gms/internal/ads/zzbjr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object p1, p0, Lg/bxy;->a:Lcom/google/android/gms/internal/ads/zzbjr;

    iget-object v0, p0, Lg/bxy;->b:Lcom/google/android/gms/internal/ads/zzbmx;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbjr;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
