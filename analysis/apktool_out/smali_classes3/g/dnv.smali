.class public final Lg/dnv;
.super Lcom/google/android/gms/internal/ads/zzayd;
.source "SourceFile"

# interfaces
.implements Lg/bzx;


# instance fields
.field public final a:Lg/fas;


# direct methods
.method public constructor <init>(Lg/fas;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/dnv;->a:Lg/fas;

    return-void
.end method


# virtual methods
.method public final l(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lg/dnv;->zzc()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/dnv;->zzf()V

    goto :goto_0

    :cond_2
    sget-object p1, Lg/abz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/abz;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/dnv;->zzd(Lg/abz;)V

    :cond_3
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lg/dnv;->a:Lg/fas;

    if-eqz v0, :cond_0

    check-cast v0, Lg/frt;

    iget-object v1, v0, Lg/frt;->b:Lg/eey;

    iget-object v0, v0, Lg/frt;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v1, v0}, Lg/eey;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public final zzd(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lg/dnv;->a:Lg/fas;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zza()Lg/ezz;

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 2

    iget-object v0, p0, Lg/dnv;->a:Lg/fas;

    if-eqz v0, :cond_0

    check-cast v0, Lg/frt;

    iget-object v1, v0, Lg/frt;->b:Lg/eey;

    iget-object v0, v0, Lg/frt;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v1, v0}, Lg/eey;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method
