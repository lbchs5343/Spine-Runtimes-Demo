.class public final Lcom/google/android/gms/internal/ads/zzcox;
.super Lcom/google/android/gms/internal/ads/zzcrq;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzddp;

.field public final c:Lcom/google/android/gms/internal/ads/zzdgv;

.field public final d:Landroid/content/Context;

.field public e:Z

.field public final f:Lcom/google/android/gms/internal/ads/zzcwz;

.field public final g:Lcom/google/android/gms/internal/ads/zzcol;

.field public final h:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final i:Z

.field public final j:Lcom/google/android/gms/internal/ads/zzcad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcrp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfk;ILcom/google/android/gms/internal/ads/zzcol;Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzddp;Lcom/google/android/gms/internal/ads/zzcwz;Lcom/google/android/gms/internal/ads/zzcad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzcrp;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->e:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcox;->h:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcox;->d:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcox;->a:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcox;->g:Lcom/google/android/gms/internal/ads/zzcol;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcox;->c:Lcom/google/android/gms/internal/ads/zzdgv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcox;->b:Lcom/google/android/gms/internal/ads/zzddp;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcox;->f:Lcom/google/android/gms/internal/ads/zzcwz;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfp:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object p2, Lg/edt;->a:Lg/edt;

    iget-object p2, p2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->i:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcox;->j:Lcom/google/android/gms/internal/ads/zzcad;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->a:I

    return v0
.end method

.method public final zzb()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcrq;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->h:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->destroy()V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzazz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->h:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzak(Lcom/google/android/gms/internal/ads/zzazz;)V

    :cond_0
    return-void
.end method

.method public final zzd(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbam;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->d:Landroid/content/Context;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcox;->b:Lcom/google/android/gms/internal/ads/zzddp;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzddp;->zzb()V

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzaJ:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcox;->f:Lcom/google/android/gms/internal/ads/zzcwz;

    if-eqz v1, :cond_2

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v4, v1, Lg/ti;->z:Lg/esy;

    invoke-static {p1}, Lg/esy;->v(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p2}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcwz;->zzb()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzaK:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfqa;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, v1, Lg/ti;->q:Lg/fkn;

    invoke-virtual {p3}, Lg/fkn;->f()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfqa;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->n:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfew;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfqa;->zza(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzlC:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcox;->h:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzar:Z

    if-eqz v4, :cond_4

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzas:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcox;->j:Lcom/google/android/gms/internal/ads/zzcad;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcad;->zzb()I

    move-result v4

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "The app open consent form has been shown."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    const/16 p1, 0xc

    const-string p2, "The consent form has already been shown."

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zza(Lg/abz;)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcox;->e:Z

    if-eqz v1, :cond_5

    const-string v1, "App open interstitial ad is already visible."

    invoke-static {v1}, Lg/agd;->b(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzcwz;->zza(Lg/abz;)V

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcox;->e:Z

    if-nez v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcox;->c:Lcom/google/android/gms/internal/ads/zzdgv;

    invoke-interface {v1, p3, p1, v3}, Lcom/google/android/gms/internal/ads/zzdgv;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwz;)V

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzddp;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdgu; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->e:Z

    return-void

    :goto_2
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zzc(Lcom/google/android/gms/internal/ads/zzdgu;)V

    :cond_7
    return-void
.end method

.method public final zze(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->g:Lcom/google/android/gms/internal/ads/zzcol;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcol;->zza(JI)V

    return-void
.end method
