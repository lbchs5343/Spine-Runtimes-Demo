.class public final Lcom/google/android/gms/internal/ads/zzdfj;
.super Lcom/google/android/gms/internal/ads/zzcrq;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lcom/google/android/gms/internal/ads/zzfqa;

.field public final c:Lcom/google/android/gms/internal/ads/zzcsl;

.field public final d:Lcom/google/android/gms/internal/ads/zzddp;

.field public final e:Lcom/google/android/gms/internal/ads/zzcwz;

.field public final f:Lcom/google/android/gms/internal/ads/zzdgv;

.field public final g:Landroid/content/Context;

.field public final h:Lcom/google/android/gms/internal/ads/zzcad;

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcrp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzddp;Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzcsl;Lcom/google/android/gms/internal/ads/zzfqa;Lcom/google/android/gms/internal/ads/zzcwz;Lcom/google/android/gms/internal/ads/zzcad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzcrp;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->i:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfj;->g:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->a:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdfj;->d:Lcom/google/android/gms/internal/ads/zzddp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdfj;->f:Lcom/google/android/gms/internal/ads/zzdgv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdfj;->c:Lcom/google/android/gms/internal/ads/zzcsl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdfj;->b:Lcom/google/android/gms/internal/ads/zzfqa;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdfj;->e:Lcom/google/android/gms/internal/ads/zzcwz;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdfj;->h:Lcom/google/android/gms/internal/ads/zzcad;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgB:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->i:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdfi;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdfi;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final zza()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->c:Lcom/google/android/gms/internal/ads/zzcsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsl;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzc(ZLandroid/app/Activity;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->d:Lcom/google/android/gms/internal/ads/zzddp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddp;->zzb()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzaJ:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdfj;->g:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdfj;->e:Lcom/google/android/gms/internal/ads/zzcwz;

    if-eqz v1, :cond_0

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    invoke-static {v4}, Lg/esy;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcwz;->zzb()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzaK:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->n:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfew;->zzb:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfj;->b:Lcom/google/android/gms/internal/ads/zzfqa;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfqa;->zza(Ljava/lang/String;)V

    return v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfk;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzlC:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzar:Z

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzas:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfj;->h:Lcom/google/android/gms/internal/ads/zzcad;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcad;->zzb()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string p1, "The interstitial consent form has been shown."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    const/16 p1, 0xc

    const-string p2, "The consent form has already been shown."

    invoke-static {p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zza(Lg/abz;)V

    return v3

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->i:Z

    if-eqz v1, :cond_2

    const-string v1, "The interstitial ad has been shown."

    invoke-static {v1}, Lg/agd;->b(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1, v6, v6}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcwz;->zza(Lg/abz;)V

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->i:Z

    if-nez v1, :cond_4

    if-nez p2, :cond_3

    move-object p2, v4

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->f:Lcom/google/android/gms/internal/ads/zzdgv;

    invoke-interface {v1, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzdgv;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddp;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdgu; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->i:Z

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zzc(Lcom/google/android/gms/internal/ads/zzdgu;)V

    :cond_4
    return v3
.end method
