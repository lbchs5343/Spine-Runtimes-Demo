.class public abstract Lg/cgp;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Lg/ctl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lg/ctl;

    invoke-direct {p1, p0}, Lg/ctl;-><init>(Lg/cgp;)V

    iput-object p1, p0, Lg/cgp;->a:Lg/ctl;

    return-void
.end method


# virtual methods
.method public final b(Lg/awn;)V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zzf:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkP:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/ga;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lg/fuy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lg/fuy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object p1, p1, Lg/awn;->a:Lg/qo;

    invoke-virtual {v0, p1}, Lg/ctl;->r(Lg/qo;)V

    return-void
.end method

.method public getAdListener()Lg/nl;
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v0, v0, Lg/ctl;->m:Ljava/lang/Object;

    check-cast v0, Lg/nl;

    return-object v0
.end method

.method public getAdSize()Lg/gin;
    .locals 5

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v1, Lg/deq;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lg/deq;->zzg()Lg/eno;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lg/eno;->zze:I

    iget v3, v1, Lg/eno;->zzb:I

    iget-object v1, v1, Lg/eno;->zza:Ljava/lang/String;

    new-instance v4, Lg/gin;

    invoke-direct {v4, v2, v3, v1}, Lg/gin;-><init>(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, v0, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v0, [Lg/gin;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v1, v0, Lg/ctl;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v1, Lg/deq;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lg/deq;->zzr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/ctl;->d:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget-object v0, v0, Lg/ctl;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOnPaidEventListener()Lg/dpt;
    .locals 1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseInfo()Lg/bof;
    .locals 3

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/deq;->zzk()Lg/gcq;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_2

    :goto_1
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_1

    new-instance v1, Lg/bof;

    invoke-direct {v1, v0}, Lg/bof;-><init>(Lg/gcq;)V

    :cond_1
    return-object v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lg/cgp;->getAdSize()Lg/gin;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to retrieve ad size."

    invoke-static {v2, v1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v1, Lg/gin;->f:I

    const/4 v3, -0x3

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    sget-object v5, Lg/cbv;->a:Lg/cbv;

    iget-object v5, v5, Lg/cbv;->d:Lg/mx;

    invoke-static {v0, v2}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    iget v1, v1, Lg/gin;->h:I

    const/4 v5, -0x4

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_4

    const/4 v3, -0x2

    if-eq v1, v3, :cond_3

    sget-object v3, Lg/cbv;->a:Lg/cbv;

    iget-object v3, v3, Lg/cbv;->d:Lg/mx;

    invoke-static {v0, v1}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lg/eno;->zza(Landroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    :goto_2
    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdListener(Lg/nl;)V
    .locals 2

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iput-object p1, v0, Lg/ctl;->m:Ljava/lang/Object;

    iget-object v0, v0, Lg/ctl;->e:Ljava/lang/Object;

    check-cast v0, Lg/cza;

    iget-object v1, v0, Lg/cza;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lg/cza;->h:Lg/nl;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/cgp;->a:Lg/ctl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/ctl;->v(Lg/evo;)V

    return-void

    :cond_0
    instance-of v0, p1, Lg/evo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    move-object v1, p1

    check-cast v1, Lg/evo;

    invoke-virtual {v0, v1}, Lg/ctl;->v(Lg/evo;)V

    :cond_1
    instance-of v0, p1, Lg/eus;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    check-cast p1, Lg/eus;

    invoke-virtual {v0, p1}, Lg/ctl;->s(Lg/eus;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAdSize(Lg/gin;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lg/gin;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v1, p1, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v1, [Lg/gin;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lg/ctl;->o([Lg/gin;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cgp;->a:Lg/ctl;

    iget-object v1, v0, Lg/ctl;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object p1, v0, Lg/ctl;->d:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnPaidEventListener(Lg/dpt;)V
    .locals 1

    iget-object p1, p0, Lg/cgp;->a:Lg/ctl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lg/ctl;->k:Ljava/lang/Object;

    check-cast p1, Lg/deq;

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
