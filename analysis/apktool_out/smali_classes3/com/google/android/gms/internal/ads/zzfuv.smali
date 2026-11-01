.class public final synthetic Lcom/google/android/gms/internal/ads/zzfuv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fia;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfvk;

.field public final synthetic zzc:I

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfvi;


# direct methods
.method public synthetic constructor <init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvk;ILcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zza:Lg/fia;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzd:Lcom/google/android/gms/internal/ads/zzfvi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zza:Lg/fia;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzd:Lcom/google/android/gms/internal/ads/zzfvi;

    iget-object v4, v0, Lg/fia;->d:Ljava/lang/String;

    :try_start_0
    iget-object v5, v0, Lg/fia;->c:Lg/fwu;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    if-nez v5, :cond_0

    return-void

    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "callerPackage"

    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "displayMode"

    invoke-virtual {v6, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-direct {v8, v6}, Lcom/google/android/gms/internal/ads/zzfuo;-><init>(Landroid/os/Bundle;)V

    invoke-static {v7, v8}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvk;->zza()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzfuu;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v7}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v1, Lg/fkk;

    invoke-direct {v1, v0, v3}, Lg/fkk;-><init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvi;)V

    invoke-interface {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzftu;->zzg(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzftw;)V

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

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const/4 v2, 0x1

    aput-object v4, v3, v2

    const-string v2, "switchDisplayMode overlay display to %d from: %s"

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfvv;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
