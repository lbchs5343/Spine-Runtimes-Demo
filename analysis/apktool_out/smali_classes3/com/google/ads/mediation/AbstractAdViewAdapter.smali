.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field private adLoader:Lg/bya;

.field protected mAdView:Lg/aia;

.field protected mInterstitialAd:Lg/eti;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAdRequest(Landroid/content/Context;Lg/clz;Landroid/os/Bundle;Landroid/os/Bundle;)Lg/awn;
    .locals 5

    new-instance v0, Lg/dcq;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/dcq;-><init>(I)V

    iget-object v1, v0, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v1, Lg/gxk;

    invoke-interface {p2}, Lg/clz;->getKeywords()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lg/gxk;->f:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lg/clz;->isTesting()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lg/cbv;->a:Lg/cbv;

    iget-object v2, v2, Lg/cbv;->d:Lg/mx;

    invoke-static {p1}, Lg/mx;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, v1, Lg/gxk;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p2}, Lg/clz;->taggedForChildDirectedTreatment()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-interface {p2}, Lg/clz;->taggedForChildDirectedTreatment()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput v2, v1, Lg/gxk;->k:I

    :cond_3
    invoke-interface {p2}, Lg/clz;->isDesignedForFamilies()Z

    move-result p1

    iput-boolean p1, v1, Lg/gxk;->b:Z

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildExtrasBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/dcq;->h(Landroid/os/Bundle;)V

    new-instance p1, Lg/awn;

    invoke-direct {p1, v0}, Lg/awn;-><init>(Lg/dcq;)V

    return-object p1
.end method

.method public abstract buildExtrasBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    return-object v0
.end method

.method public getInterstitialAd()Lg/eti;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lg/eti;

    return-object v0
.end method

.method public getVideoController()Lg/cbz;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cgp;->a:Lg/ctl;

    iget-object v0, v0, Lg/ctl;->c:Ljava/lang/Object;

    check-cast v0, Lg/hl;

    iget-object v1, v0, Lg/hl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lg/hl;->b:Lg/cbz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public newAdLoader(Landroid/content/Context;Ljava/lang/String;)Lg/cyj;
    .locals 1

    new-instance v0, Lg/cyj;

    invoke-direct {v0, p1, p2}, Lg/cyj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbel;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzkM:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lg/ga;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lg/axd;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lg/axd;-><init>(Lg/cgp;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/deq;->zzx()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lg/eti;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lg/eti;

    :cond_3
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->adLoader:Lg/bya;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->adLoader:Lg/bya;

    :cond_4
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lg/eti;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/eti;->setImmersiveMode(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbel;->zzg:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkN:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/ga;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lg/axd;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lg/axd;-><init>(Lg/cgp;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, v0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/deq;->zzz()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbel;->zzh:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkL:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/ga;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lg/axd;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lg/axd;-><init>(Lg/cgp;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, v0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/deq;->zzB()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lg/bmi;Landroid/os/Bundle;Lg/gin;Lg/clz;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lg/aia;

    invoke-direct {v0, p1}, Lg/aia;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    new-instance v1, Lg/gin;

    iget v2, p4, Lg/gin;->f:I

    iget p4, p4, Lg/gin;->h:I

    invoke-direct {v1, v2, p4}, Lg/gin;-><init>(II)V

    invoke-virtual {v0, v1}, Lg/cgp;->setAdSize(Lg/gin;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lg/cgp;->setAdUnitId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    new-instance v0, Lg/fcj;

    invoke-direct {v0, p0, p2}, Lg/fcj;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lg/bmi;)V

    invoke-virtual {p4, v0}, Lg/cgp;->setAdListener(Lg/nl;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lg/aia;

    invoke-virtual {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildAdRequest(Landroid/content/Context;Lg/clz;Landroid/os/Bundle;Landroid/os/Bundle;)Lg/awn;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/cgp;->b(Lg/awn;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lg/eey;Landroid/os/Bundle;Lg/clz;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildAdRequest(Landroid/content/Context;Lg/clz;Landroid/os/Bundle;Landroid/os/Bundle;)Lg/awn;

    move-result-object p3

    new-instance p4, Lcom/google/ads/mediation/a;

    invoke-direct {p4, p0, p2}, Lcom/google/ads/mediation/a;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lg/eey;)V

    invoke-static {p1, v0, p3, p4}, Lg/eti;->load(Landroid/content/Context;Ljava/lang/String;Lg/awn;Lg/gsg;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lg/ccj;Landroid/os/Bundle;Lg/ags;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Lg/cca;

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v4}, Lg/cca;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lg/ccj;)V

    const-string v4, "pubid"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->newAdLoader(Landroid/content/Context;Ljava/lang/String;)Lg/cyj;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lg/cyj;->b:Lg/hav;

    :try_start_0
    new-instance v6, Lg/fnu;

    invoke-direct {v6, v0}, Lg/fnu;-><init>(Lg/nl;)V

    invoke-interface {v5, v6}, Lg/hav;->zzl(Lg/ejp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v6, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_0
    invoke-interface/range {p4 .. p4}, Lg/ags;->getNativeAdOptions()Lg/gyv;

    move-result-object v6

    :try_start_1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzbfn;-><init>(Lg/gyv;)V

    invoke-interface {v5, v7}, Lg/hav;->zzo(Lcom/google/android/gms/internal/ads/zzbfn;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v6, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_1
    invoke-interface/range {p4 .. p4}, Lg/ags;->getNativeAdRequestOptions()Lg/ov;

    move-result-object v6

    :try_start_2
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbfn;

    iget-boolean v10, v6, Lg/ov;->d:Z

    iget-boolean v12, v6, Lg/ov;->h:Z

    iget v13, v6, Lg/ov;->b:I

    iget-object v9, v6, Lg/ov;->c:Lg/cxt;

    if-eqz v9, :cond_0

    new-instance v11, Lg/cpm;

    invoke-direct {v11, v9}, Lg/cpm;-><init>(Lg/cxt;)V

    move-object v14, v11

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    :goto_2
    iget-boolean v15, v6, Lg/ov;->e:Z

    iget v9, v6, Lg/ov;->g:I

    iget v11, v6, Lg/ov;->a:I

    iget-boolean v7, v6, Lg/ov;->i:Z

    iget v6, v6, Lg/ov;->f:I

    add-int/lit8 v19, v6, -0x1

    move/from16 v16, v9

    const/4 v9, 0x4

    move/from16 v17, v11

    const/4 v11, -0x1

    move/from16 v18, v7

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzbfn;-><init>(IZIZILg/cpm;ZIIZI)V

    invoke-interface {v5, v8}, Lg/hav;->zzo(Lcom/google/android/gms/internal/ads/zzbfn;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    sget-object v6, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_3
    invoke-interface/range {p4 .. p4}, Lg/ags;->isUnifiedNativeAdRequested()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_3
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbif;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzbif;-><init>(Lg/fdm;)V

    invoke-interface {v5, v6}, Lg/hav;->zzk(Lcom/google/android/gms/internal/ads/zzbhm;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    sget-object v6, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_1
    :goto_4
    invoke-interface/range {p4 .. p4}, Lg/ags;->zzb()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {p4 .. p4}, Lg/ags;->zza()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface/range {p4 .. p4}, Lg/ags;->zza()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v9, v8, :cond_2

    const/4 v8, 0x0

    goto :goto_6

    :cond_2
    move-object v8, v0

    :goto_6
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbic;

    invoke-direct {v9, v0, v8}, Lcom/google/android/gms/internal/ads/zzbic;-><init>(Lg/edz;Lg/ehx;)V

    :try_start_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbic;->zzd()Lcom/google/android/gms/internal/ads/zzbhf;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbic;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lg/hav;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/internal/ads/zzbhc;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    sget-object v7, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    goto :goto_5

    :cond_3
    iget-object v4, v4, Lg/cyj;->a:Landroid/content/Context;

    :try_start_5
    new-instance v0, Lg/bya;

    invoke-interface {v5}, Lg/hav;->zze()Lg/cpu;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lg/bya;-><init>(Landroid/content/Context;Lg/cpu;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    const-string v5, "Failed to build AdLoader."

    invoke-static {v5, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lg/gkf;

    invoke-direct {v0}, Lg/zh;-><init>()V

    new-instance v5, Lg/bya;

    new-instance v6, Lg/afs;

    invoke-direct {v6, v0}, Lg/afs;-><init>(Lg/gkf;)V

    invoke-direct {v5, v4, v6}, Lg/bya;-><init>(Landroid/content/Context;Lg/cpu;)V

    move-object v0, v5

    :goto_7
    iput-object v0, v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;->adLoader:Lg/bya;

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildAdRequest(Landroid/content/Context;Lg/clz;Landroid/os/Bundle;Landroid/os/Bundle;)Lg/awn;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/bya;->c(Lg/awn;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lg/eti;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/eti;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
