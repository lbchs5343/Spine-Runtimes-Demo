.class public final Lcom/google/android/gms/internal/ads/zzbxw;
.super Lg/eks;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbxu;

.field public b:Lg/fas;

.field public final c:Ljava/lang/String;

.field public d:Lg/dhb;

.field public final e:Lcom/google/android/gms/internal/ads/zzbxc;

.field public final f:Landroid/content/Context;

.field public final g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->g:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxw;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->f:Landroid/content/Context;

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->e:Lg/ph;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/gci;

    invoke-direct {v0, p1, p2, v1}, Lg/gci;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbxc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbxu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->a:Lcom/google/android/gms/internal/ads/zzbxu;

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lg/fas;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->b:Lg/fas;

    return-object v0
.end method

.method public final getOnAdMetadataChangedListener()Lg/dhb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->d:Lg/dhb;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

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
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbxc;->zzd()Lcom/google/android/gms/internal/ads/zzbwz;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbxm;-><init>(Lcom/google/android/gms/internal/ads/zzbwz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    sget-object v0, Lg/coc;->ab:Lg/bli;

    return-object v0
.end method

.method public final setFullScreenContentCallback(Lg/fas;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->b:Lg/fas;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->a:Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxu;->zzb(Lg/fas;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->d:Lg/dhb;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

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
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbxq;-><init>(Lg/fmh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzl(Lcom/google/android/gms/internal/ads/zzbxq;)V
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

.method public final show(Landroid/app/Activity;Lg/fqz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->a:Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbxu;->zzc(Lg/fqz;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz p2, :cond_0

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

    :cond_0
    return-void
.end method

.method public final zza(Lg/qo;Lg/gsq;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->e:Lcom/google/android/gms/internal/ads/zzbxc;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->g:J

    iput-wide v1, p1, Lg/qo;->h:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxw;->f:Landroid/content/Context;

    invoke-static {v1, p1}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxv;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzbxv;-><init>(Lg/gsq;Lcom/google/android/gms/internal/ads/zzbxw;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzg(Lg/aeh;Lcom/google/android/gms/internal/ads/zzbxj;)V
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
