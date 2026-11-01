.class public final Lcom/google/android/gms/internal/ads/zzdnd;
.super Lcom/google/android/gms/internal/ads/zzbmd;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzbfk;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzdit;

.field public b:Z

.field public c:Z

.field public d:Landroid/view/View;

.field public e:Lg/cbz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdit;Lcom/google/android/gms/internal/ads/zzdiy;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbmd;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzf()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzj()Lg/cbz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->e:Lg/cbz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzdit;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->c:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzs()Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzs()Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzap(Lcom/google/android/gms/internal/ads/zzbfk;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzdit;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdit;->zzY(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdit;->zzB(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnd;->f()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnd;->f()V

    return-void
.end method

.method public final zzb()Lg/cbz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->e:Lg/cbz;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbfv;
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzdit;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzc()Lcom/google/android/gms/internal/ads/zzdiv;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzc()Lcom/google/android/gms/internal/ads/zzdiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiv;->zza()Lcom/google/android/gms/internal/ads/zzbfv;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final zzd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzdit;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzb()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzdit;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->e:Lg/cbz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Z

    return-void
.end method

.method public final zze(Lg/bjq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    new-instance v0, Lg/czo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmg;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdnd;->zzf(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbmh;)V

    return-void
.end method

.method public final zzf(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbmh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Z

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_0

    const-string p1, "Instream ad can not be shown after destroy()."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    const/4 p1, 0x2

    :try_start_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbmh;->zze(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {v1, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnd;->e:Lg/cbz;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdnd;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string p1, "Instream ad should not be used again."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    :try_start_1
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzbmh;->zze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-static {v1, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdnd;->c:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_0
    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->i:Lcom/google/android/gms/internal/ads/zzcaw;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcaw;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->d:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcaw;->zzb(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnd;->f()V

    :try_start_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbmh;->zzf()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-static {v1, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    const-string p1, "can not get video view."

    goto :goto_2

    :cond_6
    const-string p1, "can not get video controller."

    :goto_2
    const-string v0, "Instream internal error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_3
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbmh;->zze(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    invoke-static {v1, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
