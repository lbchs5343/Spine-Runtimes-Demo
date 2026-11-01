.class public final Lg/fzj;
.super Lcom/google/android/gms/internal/ads/zzbxb;
.source "SourceFile"


# virtual methods
.method public final zzb()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzc()Lg/gcq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbwz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final zzf(Lg/aeh;Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 2

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    sget-object p1, Lg/mx;->e:Lcom/google/android/gms/internal/ads/zzftd;

    new-instance v0, Lg/aku;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p2}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzg(Lg/aeh;Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 2

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    sget-object p1, Lg/mx;->e:Lcom/google/android/gms/internal/ads/zzftd;

    new-instance v0, Lg/aku;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p2}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzh(Z)V
    .locals 0

    return-void
.end method

.method public final zzi(Lg/gag;)V
    .locals 0

    return-void
.end method

.method public final zzj(Lg/gwt;)V
    .locals 0

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbxf;)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbxq;)V
    .locals 0

    return-void
.end method

.method public final zzm(Lg/bjq;)V
    .locals 0

    return-void
.end method

.method public final zzn(Lg/bjq;Z)V
    .locals 0

    return-void
.end method

.method public final zzo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbxk;)V
    .locals 0

    return-void
.end method
