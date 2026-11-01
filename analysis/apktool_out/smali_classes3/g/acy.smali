.class public final synthetic Lg/acy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/der;


# direct methods
.method public synthetic constructor <init>(Lg/der;I)V
    .locals 0

    iput p2, p0, Lg/acy;->a:I

    iput-object p1, p0, Lg/acy;->b:Lg/der;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 4

    iget v0, p0, Lg/acy;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    iget-object v1, p0, Lg/acy;->b:Lg/der;

    invoke-virtual {v1, v0}, Lg/der;->at(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v0

    new-instance v2, Lg/cgu;

    invoke-direct {v2, v1, p1}, Lg/cgu;-><init>(Lg/der;Ljava/util/ArrayList;)V

    iget-object p1, v1, Lg/der;->ak:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    iget-object v1, p0, Lg/acy;->b:Lg/der;

    invoke-virtual {v1, v0}, Lg/der;->at(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v0

    new-instance v2, Lg/awi;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lg/awi;-><init>(ILjava/lang/Object;)V

    iget-object p1, v1, Lg/der;->ak:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
