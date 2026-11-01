.class public final Lcom/google/android/gms/internal/ads/zzbrs;
.super Lcom/google/android/gms/internal/ads/zzbre;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbre;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    return-void
.end method

.method public static final b(Lg/aeh;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "max_ad_content_rating"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final c(Lg/aeh;)V
    .locals 0

    iget-boolean p0, p0, Lg/aeh;->zzf:Z

    if-nez p0, :cond_0

    sget-object p0, Lg/cbv;->a:Lg/cbv;

    iget-object p0, p0, Lg/cbv;->d:Lg/mx;

    invoke-static {}, Lg/mx;->l()Z

    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Server parameters: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final e(Lg/aeh;)V
    .locals 1

    iget-object p1, p1, Lg/aeh;->zzm:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-void
.end method

.method public final zze()Lg/cbz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbru;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lg/dn;->getVersionInfo()Lg/axk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbru;->zza(Lg/axk;)Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzbru;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lg/dn;->getSDKVersionInfo()Lg/axk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbru;->zza(Lg/axk;)Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(Lg/bjq;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lg/eno;Lcom/google/android/gms/internal/ads/zzbri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p3, Lg/aoy;

    invoke-direct {p3, p6}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance p6, Lg/bli;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "rewarded_interstitial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "app_open_ad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "app_open"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "interstitial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "rewarded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "native"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "banner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    :try_start_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzlz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Internal Error"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_4

    :goto_3
    :pswitch_1
    const/4 p2, 0x7

    invoke-direct {p6, p2}, Lg/bli;-><init>(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/alk;

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/Context;

    iget p6, p5, Lg/eno;->zze:I

    iget v0, p5, Lg/eno;->zzb:I

    iget-object p5, p5, Lg/eno;->zza:Ljava/lang/String;

    new-instance v1, Lg/gin;

    invoke-direct {v1, p6, v0, p5}, Lg/gin;-><init>(IILjava/lang/String;)V

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lg/alk;Lg/bic;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_4
    const-string p3, "Error generating signals for RTB"

    invoke-static {p3, p2}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "adapter.collectSignals"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_6
        -0x3ebdafe9 -> :sswitch_5
        -0xe47b3f2 -> :sswitch_4
        0x240b672c -> :sswitch_3
        0x459991a8 -> :sswitch_2
        0x69fe9e1a -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbqq;Lcom/google/android/gms/internal/ads/zzbpm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Lg/akj;

    const/16 v0, 0x1a

    invoke-direct {p1, p5, v0, p6}, Lg/akj;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance p6, Lg/gtn;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbAppOpenAd(Lg/gtn;Lg/gon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render app open ad."

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "adapter.loadRtbAppOpenAd"

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbqt;Lcom/google/android/gms/internal/ads/zzbpm;Lg/eno;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Lg/gtb;

    const/16 v0, 0x11

    invoke-direct {p1, p5, v0, p6}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance p6, Lg/cdw;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    iget p2, p7, Lg/eno;->zze:I

    iget p3, p7, Lg/eno;->zzb:I

    iget-object p7, p7, Lg/eno;->zza:Ljava/lang/String;

    new-instance v0, Lg/gin;

    invoke-direct {v0, p2, p3, p7}, Lg/gin;-><init>(IILjava/lang/String;)V

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbBannerAd(Lg/cdw;Lg/gon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render banner ad."

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "adapter.loadRtbBannerAd"

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbqt;Lcom/google/android/gms/internal/ads/zzbpm;Lg/eno;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Lg/akj;

    const/16 v0, 0x19

    invoke-direct {p1, p5, v0, p6}, Lg/akj;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance p6, Lg/cdw;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    iget p2, p7, Lg/eno;->zze:I

    iget p3, p7, Lg/eno;->zzb:I

    iget-object p7, p7, Lg/eno;->zza:Ljava/lang/String;

    new-instance v0, Lg/gin;

    invoke-direct {v0, p2, p3, p7}, Lg/gin;-><init>(IILjava/lang/String;)V

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterscrollerAd(Lg/cdw;Lg/gon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render interscroller ad."

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "adapter.loadRtbInterscrollerAd"

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbqw;Lcom/google/android/gms/internal/ads/zzbpm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Lg/ffr;

    const/16 v0, 0x10

    invoke-direct {p1, p5, v0, p6}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance p6, Lg/jy;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterstitialAd(Lg/jy;Lg/gon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render interstitial ad."

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "adapter.loadRtbInterstitialAd"

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbqz;Lcom/google/android/gms/internal/ads/zzbpm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzbrs;->zzn(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbqz;Lcom/google/android/gms/internal/ads/zzbpm;Lcom/google/android/gms/internal/ads/zzbfn;)V

    return-void
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbqz;Lcom/google/android/gms/internal/ads/zzbpm;Lcom/google/android/gms/internal/ads/zzbfn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    :try_start_0
    new-instance p7, Lg/fdy;

    const/16 v0, 0x18

    invoke-direct {p7, p5, v0, p6}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v0, Lg/giv;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, p7}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAdMapper(Lg/giv;Lg/gon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p7

    const-string v0, "Adapter failed to render native ad."

    invoke-static {v0, p7}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "adapter.loadRtbNativeAdMapper"

    invoke-static {p4, p7, v1}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Method is not found"

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_0

    :try_start_1
    new-instance p7, Lg/clx;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {p7, v1, p5, p6, v2}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    new-instance p5, Lg/giv;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p5, p7}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAd(Lg/giv;Lg/gon;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "adapter.loadRtbNativeAd"

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzo(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbrc;Lcom/google/android/gms/internal/ads/zzbpm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Lg/gtb;

    const/16 v0, 0x12

    invoke-direct {p1, p5, v0, p6}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance p6, Lg/dpg;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedInterstitialAd(Lg/dpg;Lg/gon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render rewarded interstitial ad."

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "adapter.loadRtbRewardedInterstitialAd"

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzp(Ljava/lang/String;Ljava/lang/String;Lg/aeh;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbrc;Lcom/google/android/gms/internal/ads/zzbpm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Lg/gtb;

    const/16 v0, 0x12

    invoke-direct {p1, p5, v0, p6}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbrs;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance p6, Lg/dpg;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbrs;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbrs;->e(Lg/aeh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbrs;->c(Lg/aeh;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->b(Lg/aeh;Ljava/lang/String;)V

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p6, p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedAd(Lg/dpg;Lg/gon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render rewarded ad."

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "adapter.loadRtbRewardedAd"

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Lg/bjq;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzq(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzr(Lg/bjq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final zzs(Lg/bjq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final zzt(Lg/bjq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
