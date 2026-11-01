.class public final synthetic Lcom/google/android/gms/internal/ads/zzfut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fia;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfuk;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfvi;


# direct methods
.method public synthetic constructor <init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfuk;Lcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfut;->zza:Lg/fia;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfut;->zzb:Lcom/google/android/gms/internal/ads/zzfuk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfut;->zzc:Lcom/google/android/gms/internal/ads/zzfvi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfut;->zza:Lg/fia;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfut;->zzb:Lcom/google/android/gms/internal/ads/zzfuk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfut;->zzc:Lcom/google/android/gms/internal/ads/zzfvi;

    iget-object v3, v0, Lg/fia;->d:Ljava/lang/String;

    :try_start_0
    iget-object v4, v0, Lg/fia;->c:Lg/fwu;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "callerPackage"

    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzb()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfuw;

    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/ads/zzfuw;-><init>(Landroid/os/Bundle;)V

    invoke-static {v6, v7}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfuk;->zza()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfux;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzfux;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v6}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v1, Lg/fkk;

    invoke-direct {v1, v0, v2}, Lg/fkk;-><init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvi;)V

    invoke-interface {v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzftu;->zze(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzftw;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "dismiss overlay display from: %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfvv;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
