.class public final Lg/cxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzcao;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cxv;->a:Lcom/google/android/gms/internal/ads/zzcao;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Failed to load media data due to video view load failure."

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cxv;->a:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdme;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdme;-><init>(Lg/cxv;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdd;-><init>(Ljava/util/function/Consumer;)V

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaa()V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeiz;

    const/4 v0, 0x1

    const-string v1, "Missing webview from video view future."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lg/cxv;->a:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
