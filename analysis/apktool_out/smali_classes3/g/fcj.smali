.class public final Lg/fcj;
.super Lg/nl;
.source "SourceFile"

# interfaces
.implements Lg/eus;
.implements Lg/evo;


# instance fields
.field public final f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field public final g:Lg/bmi;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lg/bmi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fcj;->f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lg/fcj;->g:Lg/bmi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lg/fcj;->g:Lg/bmi;

    iget-object v1, p0, Lg/fcj;->f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/bmi;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lg/fcj;->g:Lg/bmi;

    iget-object v1, p0, Lg/fcj;->f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/bmi;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lg/fcj;->g:Lg/bmi;

    iget-object v1, p0, Lg/fcj;->f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/bmi;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final d(Lg/bfi;)V
    .locals 2

    iget-object v0, p0, Lg/fcj;->g:Lg/bmi;

    iget-object v1, p0, Lg/fcj;->f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lg/bmi;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lg/ezz;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 2

    iget-object v0, p0, Lg/fcj;->g:Lg/bmi;

    iget-object v1, p0, Lg/fcj;->f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/bmi;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/fcj;->g:Lg/bmi;

    iget-object v1, p0, Lg/fcj;->f:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lg/bmi;->zzb(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
