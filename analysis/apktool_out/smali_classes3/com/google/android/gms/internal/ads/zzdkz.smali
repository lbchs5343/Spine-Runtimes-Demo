.class public final Lcom/google/android/gms/internal/ads/zzdkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdjg;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzffo;

.field public b:Z

.field public final c:Lcom/google/android/gms/internal/ads/zzdej;

.field public final d:Lcom/google/android/gms/internal/ads/zzbpr;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/zzbpv;

.field public final g:Lcom/google/android/gms/internal/ads/zzfet;

.field public final h:Lcom/google/android/gms/internal/ads/zzbps;

.field public i:Z

.field public final j:Lcom/google/android/gms/internal/ads/zzcxe;

.field public k:Z

.field public final l:Lcom/google/android/gms/internal/ads/zzcwk;

.field public final m:Lg/akx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpr;Lcom/google/android/gms/internal/ads/zzbps;Lcom/google/android/gms/internal/ads/zzbpv;Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzcwk;Lcom/google/android/gms/internal/ads/zzdej;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfet;Lg/akx;Lcom/google/android/gms/internal/ads/zzffo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->d:Lcom/google/android/gms/internal/ads/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->h:Lcom/google/android/gms/internal/ads/zzbps;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkz;->f:Lcom/google/android/gms/internal/ads/zzbpv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkz;->j:Lcom/google/android/gms/internal/ads/zzcxe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdkz;->l:Lcom/google/android/gms/internal/ads/zzcwk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdkz;->c:Lcom/google/android/gms/internal/ads/zzdej;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdkz;->e:Landroid/content/Context;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdkz;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdkz;->m:Lg/akx;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdkz;->a:Lcom/google/android/gms/internal/ads/zzffo;

    return-void
.end method

.method public static final n(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final o(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->f:Lcom/google/android/gms/internal/ads/zzbpv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->c:Lcom/google/android/gms/internal/ads/zzdej;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->l:Lcom/google/android/gms/internal/ads/zzcwk;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbpv;->zzA()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lg/bpp;

    invoke-direct {v3, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbpv;->zzw(Lg/bjq;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwk;->onAdClicked()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkt:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdej;->zzdG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->d:Lcom/google/android/gms/internal/ads/zzbpr;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpr;->zzx()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lg/bpp;

    invoke-direct {v3, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbpr;->zzs(Lg/bjq;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwk;->onAdClicked()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkt:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdej;->zzdG()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->h:Lcom/google/android/gms/internal/ads/zzbps;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbps;->zzv()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lg/bpp;

    invoke-direct {v3, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbps;->zzq(Lg/bjq;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwk;->onAdClicked()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkt:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdej;->zzdG()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_2
    return-void
.end method

.method public final zzA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzB()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzL:Z

    return v0
.end method

.method public final zzC(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zze(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzf(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzg()V
    .locals 1

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 0

    return-void
.end method

.method public final zzj(Lg/gga;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final zzk(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfet;->zzL:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdkz;->o(Landroid/view/View;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzm(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzo(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->k:Z

    if-nez p1, :cond_0

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzfet;->zzL:Z

    if-nez p1, :cond_1

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not in allow list."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdkz;->o(Landroid/view/View;)V

    return-void
.end method

.method public final zzp()V
    .locals 0

    return-void
.end method

.method public final zzq(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->i:Z

    if-nez p1, :cond_0

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->g:Lg/bkm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->e:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkz;->m:Lg/akx;

    iget-object p3, p3, Lg/akx;->afmaVersion:Ljava/lang/String;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkz;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzfet;->zzC:Lorg/json/JSONObject;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->a:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4, v0}, Lg/bkm;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->i:Z

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->b:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->f:Lcom/google/android/gms/internal/ads/zzbpv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->j:Lcom/google/android/gms/internal/ads/zzcxe;

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbpv;->zzB()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbpv;->zzx()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->d:Lcom/google/android/gms/internal/ads/zzbpr;

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpr;->zzy()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpr;->zzt()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->h:Lcom/google/android/gms/internal/ads/zzbps;

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbps;->zzw()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbps;->zzr()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final zzr()V
    .locals 0

    return-void
.end method

.method public final zzs(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzt(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzu(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzv()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->k:Z

    return-void
.end method

.method public final zzw(Lg/gfc;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzbhs;)V
    .locals 0

    return-void
.end method

.method public final zzy(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 13

    :try_start_0
    new-instance v0, Lg/bpp;

    invoke-direct {v0, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfet;->zzaj:Lorg/json/JSONObject;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzbD:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->f:Lcom/google/android/gms/internal/ads/zzbpv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkz;->h:Lcom/google/android/gms/internal/ads/zzbps;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdkz;->d:Lcom/google/android/gms/internal/ads/zzbpr;

    const/4 v5, 0x1

    if-eqz v1, :cond_e

    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    if-nez p3, :cond_2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_2
    move-object/from16 v6, p3

    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    const/4 v10, 0x0

    if-nez v9, :cond_5

    :cond_4
    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/internal/ads/zzbcn;->zzbE:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v12, Lg/edt;->a:Lg/edt;

    iget-object v12, v12, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "3010"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    if-eqz v2, :cond_7

    :try_start_2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbpv;->zzn()Lg/bjq;

    move-result-object v9

    goto :goto_4

    :catch_1
    nop

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbpr;->zzk()Lg/bjq;

    move-result-object v9

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbps;->zzj()Lg/bjq;

    move-result-object v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_9
    move-object v9, v6

    :goto_4
    if-eqz v9, :cond_a

    :try_start_3
    invoke-static {v9}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_a
    :goto_5
    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_c
    :try_start_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8, v6}, Lg/fso;->af(Lorg/json/JSONArray;Ljava/util/ArrayList;)Ljava/util/List;

    sget-object v8, Lg/ti;->a:Lg/ti;

    iget-object v8, v8, Lg/ti;->z:Lg/esy;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdkz;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :catchall_0
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-static {v11, v10, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v11, :cond_d

    goto/16 :goto_2

    :cond_e
    :goto_6
    :try_start_7
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzdkz;->b:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdkz;->n(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdkz;->n(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v2, :cond_f

    new-instance v3, Lg/bpp;

    invoke-direct {v3, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lg/bpp;

    invoke-direct {p1, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/gms/internal/ads/zzbpv;->zzy(Lg/bjq;Lg/bjq;Lg/bjq;)V

    goto :goto_7

    :cond_f
    if-eqz v4, :cond_10

    new-instance v2, Lg/bpp;

    invoke-direct {v2, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lg/bpp;

    invoke-direct {p1, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbpr;->zzv(Lg/bjq;Lg/bjq;Lg/bjq;)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbpr;->zzu(Lg/bjq;)V

    goto :goto_7

    :cond_10
    if-eqz v3, :cond_11

    new-instance v2, Lg/bpp;

    invoke-direct {v2, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lg/bpp;

    invoke-direct {p1, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbps;->zzt(Lg/bjq;Lg/bjq;Lg/bjq;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbps;->zzs(Lg/bjq;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_11
    :goto_7
    return-void

    :catch_2
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public final zzz(Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    :try_start_0
    new-instance p2, Lg/bpp;

    invoke-direct {p2, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->f:Lcom/google/android/gms/internal/ads/zzbpv;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpv;->zzz(Lg/bjq;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->d:Lcom/google/android/gms/internal/ads/zzbpr;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpr;->zzw(Lg/bjq;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->h:Lcom/google/android/gms/internal/ads/zzbps;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbps;->zzu(Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method
