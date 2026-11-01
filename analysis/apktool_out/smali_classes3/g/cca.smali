.class public final Lg/cca;
.super Lg/nl;
.source "SourceFile"

# interfaces
.implements Lg/fdm;
.implements Lg/edz;
.implements Lg/ehx;


# instance fields
.field public final f:Ljava/lang/Object;

.field public final synthetic g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lg/ccj;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/cca;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cca;->h:Ljava/lang/Object;

    iput-object p2, p0, Lg/cca;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/cca;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cca;->h:Ljava/lang/Object;

    iput-object p1, p0, Lg/cca;->f:Ljava/lang/Object;

    return-void
.end method

.method private final i()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lg/cca;->g:I

    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lg/cca;->g:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cca;->f:Ljava/lang/Object;

    check-cast v0, Lg/ccj;

    iget-object v1, p0, Lg/cca;->h:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/ccj;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lg/cca;->g:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cca;->f:Ljava/lang/Object;

    check-cast v0, Lg/ccj;

    iget-object v1, p0, Lg/cca;->h:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/ccj;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lg/bfi;)V
    .locals 2

    iget v0, p0, Lg/cca;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cca;->f:Ljava/lang/Object;

    check-cast v0, Lg/ccj;

    iget-object v1, p0, Lg/cca;->h:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lg/ccj;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lg/ezz;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cca;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdwh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lg/cca;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lg/cca;->g:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cca;->f:Ljava/lang/Object;

    check-cast v0, Lg/ccj;

    iget-object v1, p0, Lg/cca;->h:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/ccj;->onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdClicked()V
    .locals 2

    iget v0, p0, Lg/cca;->g:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cca;->f:Ljava/lang/Object;

    check-cast v0, Lg/ccj;

    iget-object v1, p0, Lg/cca;->h:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lg/ccj;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
