.class public final Lcom/google/android/gms/internal/ads/zzbxl;
.super Lg/dth;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/zzbxu;

.field public c:Lg/dzg;

.field public final d:Ljava/lang/String;

.field public e:Lg/dhb;

.field public final f:Ljava/lang/Object;

.field public final g:Lcom/google/android/gms/internal/ads/zzbxc;

.field public final h:Landroid/content/Context;

.field public i:Lg/fas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->e:Lg/ph;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/gci;

    invoke-direct {v1, p1, p2, v2}, Lg/gci;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbxc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbxu;-><init>()V

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzbxl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxc;Lcom/google/android/gms/internal/ads/zzbxu;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxc;Lcom/google/android/gms/internal/ads/zzbxu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxl;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxl;->b:Lcom/google/android/gms/internal/ads/zzbxu;

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbxc;->zzb()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lg/fas;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->i:Lg/fas;

    return-object v0
.end method

.method public final getOnAdMetadataChangedListener()Lg/dhb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->e:Lg/dhb;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lg/dpt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lg/bof;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzc()Lg/gcq;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    new-instance v1, Lg/bof;

    invoke-direct {v1, v0}, Lg/bof;-><init>(Lg/gcq;)V

    return-object v1
.end method

.method public final getRewardItem()Lg/coc;
    .locals 3

    sget-object v0, Lg/coc;->ab:Lg/bli;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzd()Lcom/google/android/gms/internal/ads/zzbwz;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzbxm;-><init>(Lcom/google/android/gms/internal/ads/zzbwz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->c:Lg/dzg;

    if-nez v1, :cond_0

    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->e:Lg/ph;

    invoke-virtual {v1, p1, p2}, Lg/ph;->k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)Lg/dzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->c:Lg/dzg;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setFullScreenContentCallback(Lg/fas;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->i:Lg/fas;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->b:Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxu;->zzb(Lg/fas;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzh(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setOnAdMetadataChangedListener(Lg/dhb;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->e:Lg/dhb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_0

    new-instance v1, Lg/dyi;

    invoke-direct {v1, p1}, Lg/dyi;-><init>(Lg/dhb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzi(Lg/gag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lg/dpt;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz p1, :cond_0

    new-instance v0, Lg/bmt;

    invoke-direct {v0}, Lg/bmt;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbxc;->zzj(Lg/gwt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lg/fmh;)V
    .locals 0

    return-void
.end method

.method public final show(Landroid/app/Activity;Lg/fqz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->b:Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbxu;->zzc(Lg/fqz;)V

    if-nez p1, :cond_0

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    invoke-static {p2}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbxc;->zzk(Lcom/google/android/gms/internal/ads/zzbxf;)V

    new-instance v0, Lg/bpp;

    invoke-direct {v0, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbxc;->zzm(Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final zza()Lg/dth;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->h:Landroid/content/Context;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzbxl;->j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxl;->c:Lg/dzg;

    invoke-interface {v3, v0}, Lg/dzg;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbxc;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Failed to obtain a Rewarded Ad from the preloader."

    invoke-static {v0, v2}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbxl;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbxl;->b:Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-direct {v4, v1, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzbxl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxc;Lcom/google/android/gms/internal/ads/zzbxu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_0
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v2
.end method

.method public final zzb(Lg/qo;Lg/byk;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->g:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->a:J

    iput-wide v1, p1, Lg/qo;->h:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->h:Landroid/content/Context;

    invoke-static {v1, p1}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxp;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzbxp;-><init>(Lg/byk;Lg/dth;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzf(Lg/aeh;Lcom/google/android/gms/internal/ads/zzbxj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzc()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->h:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbxl;->j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxl;->c:Lg/dzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxl;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lg/dzg;->zzl(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method
