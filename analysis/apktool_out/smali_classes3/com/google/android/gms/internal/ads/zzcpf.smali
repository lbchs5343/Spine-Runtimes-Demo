.class public final synthetic Lcom/google/android/gms/internal/ads/zzcpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/ezx;


# direct methods
.method public synthetic constructor <init>(Lg/ezx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zza:Lg/ezx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zza:Lg/ezx;

    iget-object v1, v0, Lg/ezx;->b:Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjj;->zze()Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjj;->zze()Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object v1

    iget-object v2, v0, Lg/ezx;->i:Lcom/google/android/gms/internal/ads/zzhfr;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhfr;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/deq;

    iget-object v0, v0, Lg/ezx;->h:Landroid/content/Context;

    new-instance v3, Lg/bpp;

    invoke-direct {v3, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbhj;->zze(Lg/deq;Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
