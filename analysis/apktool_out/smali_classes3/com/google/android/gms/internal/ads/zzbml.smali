.class public final Lcom/google/android/gms/internal/ads/zzbml;
.super Lg/ban;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Landroid/content/Context;

.field public d:Lg/eus;

.field public final e:Lg/ao;

.field public final f:Lg/deq;

.field public g:Lg/fas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->b:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbml;->a:Ljava/lang/String;

    sget-object v0, Lg/ao;->af:Lg/ao;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->e:Lg/ao;

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v0, Lg/cbv;->e:Lg/ph;

    new-instance v3, Lg/eno;

    invoke-direct {v3}, Lg/eno;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/ezj;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lg/ezj;-><init>(Lg/ph;Landroid/content/Context;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v2, p1}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/deq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg/deq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->b:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbml;->a:Ljava/lang/String;

    sget-object p1, Lg/ao;->af:Lg/ao;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->e:Lg/ao;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lg/eus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->d:Lg/eus;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lg/fas;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->g:Lg/fas;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lg/deq;->zzk()Lg/gcq;

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

.method public final setAppEventListener(Lg/eus;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->d:Lg/eus;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaza;-><init>(Lg/eus;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lg/deq;->zzG(Lg/fbj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setFullScreenContentCallback(Lg/fas;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->g:Lg/fas;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    if-eqz v0, :cond_0

    new-instance v1, Lg/dnv;

    invoke-direct {v1, p1}, Lg/dnv;-><init>(Lg/fas;)V

    invoke-interface {v0, v1}, Lg/deq;->zzJ(Lg/bzx;)V
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

.method public final setImmersiveMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/deq;->zzL(Z)V
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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    if-eqz p1, :cond_0

    new-instance v0, Lg/bmt;

    invoke-direct {v0}, Lg/bmt;-><init>()V

    invoke-interface {p1, v0}, Lg/deq;->zzP(Lg/gwt;)V
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

.method public final show(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    if-eqz v0, :cond_1

    new-instance v1, Lg/bpp;

    invoke-direct {v1, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lg/deq;->zzW(Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final zza(Lg/qo;Lg/df;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->f:Lg/deq;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->b:J

    iput-wide v1, p1, Lg/qo;->h:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->e:Lg/ao;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbml;->c:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object p1

    new-instance v1, Lg/alu;

    invoke-direct {v1, p2, p0}, Lg/alu;-><init>(Lg/df;Lcom/google/android/gms/internal/ads/zzbml;)V

    invoke-interface {v0, p1, v1}, Lg/deq;->zzy(Lg/aeh;Lg/gpa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Lg/bfi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Internal Error."

    const-string v4, "com.google.android.gms.ads"

    invoke-direct/range {v1 .. v6}, Lg/bfi;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;Lg/bof;)V

    invoke-virtual {p2, v1}, Lg/df;->c(Lg/bfi;)V

    return-void
.end method
