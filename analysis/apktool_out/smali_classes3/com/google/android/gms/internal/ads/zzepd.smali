.class public final synthetic Lcom/google/android/gms/internal/ads/zzepd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzepe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zza:Lcom/google/android/gms/internal/ads/zzepe;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zza:Lcom/google/android/gms/internal/ads/zzepe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzepf;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzepe;->c:Lcom/google/android/gms/internal/ads/zzcad;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzepe;->b:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzj:Lg/gby;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcad;->zzm()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzepf;-><init>(Lg/gby;Z)V

    return-object v1
.end method
