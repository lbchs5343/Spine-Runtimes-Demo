.class public final synthetic Lcom/google/android/gms/internal/ads/zzfuy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fia;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfvf;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfvi;


# direct methods
.method public synthetic constructor <init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvf;Lcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuy;->zza:Lg/fia;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuy;->zzb:Lcom/google/android/gms/internal/ads/zzfvf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuy;->zzc:Lcom/google/android/gms/internal/ads/zzfvi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuy;->zza:Lg/fia;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuy;->zzb:Lcom/google/android/gms/internal/ads/zzfvf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfuy;->zzc:Lcom/google/android/gms/internal/ads/zzfvi;

    iget-object v3, v0, Lg/fia;->d:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v0, Lg/fia;->c:Lg/fwu;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v6, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    if-nez v6, :cond_0

    return-void

    :cond_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "callerPackage"

    invoke-virtual {v8, v9, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "windowToken"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvf;->zzf()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvf;->zzg()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfvb;

    invoke-direct {v10, v8}, Lcom/google/android/gms/internal/ads/zzfvb;-><init>(Landroid/os/Bundle;)V

    invoke-static {v9, v10}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v9, "layoutGravity"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvf;->zzc()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "layoutVerticalMargin"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvf;->zza()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v9, "displayMode"

    invoke-virtual {v8, v9, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "triggerMode"

    invoke-virtual {v8, v9, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "windowWidthPx"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvf;->zze()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfup;

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzfup;-><init>(Landroid/os/Bundle;)V

    invoke-static {v7, v9}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfuq;

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzfuq;-><init>(Landroid/os/Bundle;)V

    invoke-static {v7, v9}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvf;->zzh()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfur;

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzfur;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v9}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfus;

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzfus;-><init>(Landroid/os/Bundle;)V

    invoke-static {v7, v1}, Lg/fia;->e(Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v1, "stableSessionToken"

    invoke-virtual {v8, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lg/fkk;

    invoke-direct {v1, v0, v2}, Lg/fkk;-><init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvi;)V

    invoke-interface {v6, v3, v8, v1}, Lcom/google/android/gms/internal/ads/zzftu;->zzf(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzftw;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    throw v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v5

    const-string v3, "show overlay display from: %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfvv;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
