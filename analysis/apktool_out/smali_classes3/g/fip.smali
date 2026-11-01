.class public final Lg/fip;
.super Lg/djd;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzblw;


# virtual methods
.method public final zze()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 0

    return-void
.end method

.method public final zzj(Z)V
    .locals 0

    return-void
.end method

.method public final zzk()V
    .locals 3

    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    sget-object v0, Lg/mx;->e:Lcom/google/android/gms/internal/ads/zzftd;

    new-instance v1, Lg/aku;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzl(Ljava/lang/String;Lg/bjq;)V
    .locals 0

    return-void
.end method

.method public final zzm(Lg/dri;)V
    .locals 0

    return-void
.end method

.method public final zzn(Lg/bjq;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbpg;)V
    .locals 0

    return-void
.end method

.method public final zzp(Z)V
    .locals 0

    return-void
.end method

.method public final zzq(F)V
    .locals 0

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzblw;)V
    .locals 0

    iput-object p1, p0, Lg/fip;->a:Lcom/google/android/gms/internal/ads/zzblw;

    return-void
.end method

.method public final zzt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzu(Lg/pw;)V
    .locals 0

    return-void
.end method

.method public final zzv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
