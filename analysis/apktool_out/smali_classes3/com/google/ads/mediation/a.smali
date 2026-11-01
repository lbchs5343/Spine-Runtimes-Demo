.class public final Lcom/google/ads/mediation/a;
.super Lg/gsg;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field public final b:Lg/eey;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lg/eey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/a;->b:Lg/eey;

    return-void
.end method


# virtual methods
.method public final c(Lg/bfi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a;->b:Lg/eey;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lg/eey;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lg/ezz;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg/eti;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p1, v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lg/eti;

    new-instance v1, Lg/frt;

    iget-object v2, p0, Lcom/google/ads/mediation/a;->b:Lg/eey;

    invoke-direct {v1, v0, v2}, Lg/frt;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lg/eey;)V

    invoke-virtual {p1, v1}, Lg/eti;->setFullScreenContentCallback(Lg/fas;)V

    invoke-interface {v2, v0}, Lg/eey;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
