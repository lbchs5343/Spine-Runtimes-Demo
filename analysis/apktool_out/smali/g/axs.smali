.class public final Lg/axs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/alj;
.implements Lg/fnt;


# instance fields
.field public a:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Z

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/eoy;Lg/ffr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/axs;->h:Ljava/lang/Object;

    iput-object p2, p0, Lg/axs;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/axs;->d:Ljava/lang/Object;

    new-instance p1, Lg/gwx;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lg/gwx;-><init>(Lg/axs;Z)V

    iput-object p1, p0, Lg/axs;->e:Ljava/lang/Object;

    new-instance p1, Lg/gwx;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lg/gwx;-><init>(Lg/axs;Z)V

    iput-object p1, p0, Lg/axs;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/alj;Landroid/os/Handler;Lg/ghz;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/axs;->g:Z

    iput-object p1, p0, Lg/axs;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/axs;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/axs;->h:Ljava/lang/Object;

    iput-object p4, p0, Lg/axs;->f:Ljava/lang/Object;

    new-instance p1, Lg/byd;

    const/16 p2, 0x1a

    invoke-direct {p1, p2, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/axs;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lg/axs;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "main_template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lg/axs;->a:Ljava/lang/Object;

    :goto_0
    const-string v1, "sub_templates"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lg/axs;->d:Ljava/lang/Object;

    const-string v1, "meta"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "template_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_1
    const-string v2, "3.0"

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lg/axs;->g:Z

    const-string p1, "version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/axs;->f:Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v2, p0, Lg/axs;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p1, "sdk_version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/axs;->f:Ljava/lang/Object;

    :cond_3
    :goto_2
    const-string p1, "adType"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object v2, p0, Lg/axs;->f:Ljava/lang/Object;

    iput-boolean v3, p0, Lg/axs;->g:Z

    :cond_5
    :goto_3
    iput-object p2, p0, Lg/axs;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/axs;->h:Ljava/lang/Object;

    :cond_6
    return-void
.end method


# virtual methods
.method public _ck(Lg/nk;)V
    .locals 3

    iget-object v0, p0, Lg/axs;->f:Ljava/lang/Object;

    check-cast v0, Lg/ecd;

    iget-object v0, v0, Lg/ecd;->q:Lg/dae;

    new-instance v1, Lg/efr;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/axs;->g:Z

    iget-object v1, p0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v1, Lg/alj;

    invoke-interface {v1}, Lg/alj;->b()V

    iget-object v1, p0, Lg/axs;->h:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/axs;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "TrineaAndroidCommon"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/axs;->e:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Lg/byd;

    const/16 v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/axs;->g:Z

    iget-object v0, p0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v0, Lg/alj;

    invoke-interface {v0}, Lg/alj;->c()V

    return-void
.end method

.method public i(Z)V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-boolean p1, p0, Lg/axs;->g:Z

    iget-object p1, p0, Lg/axs;->f:Ljava/lang/Object;

    check-cast p1, Lg/gwx;

    iget-object v2, p0, Lg/axs;->h:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lg/gwx;->f(Landroid/content/Context;Landroid/content/IntentFilter;)V

    iget-boolean p1, p0, Lg/axs;->g:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/axs;->e:Ljava/lang/Object;

    check-cast p1, Lg/gwx;

    monitor-enter p1

    :try_start_0
    iget-boolean v1, p1, Lg/gwx;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v4, 0x21

    const/4 v5, 0x1

    if-lt v1, v4, :cond_2

    iget-boolean v1, p1, Lg/gwx;->d:Z

    if-eq v5, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v2, p1, v0, v1}, Lg/ahq;->s(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, p1, v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_1
    iput-boolean v5, p1, Lg/gwx;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    return-void

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    iget-object p1, p0, Lg/axs;->e:Ljava/lang/Object;

    check-cast p1, Lg/gwx;

    invoke-virtual {p1, v2, v0}, Lg/gwx;->f(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public j()Lcom/google/android/gms/internal/ads/zzfvk;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc()Lcom/google/android/gms/internal/ads/zzfvj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzlf:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvj;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/axs;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvj;

    goto :goto_0

    :cond_1
    const-string v1, "Missing session token and/or appId"

    const-string v2, "onLMDupdate"

    invoke-virtual {p0, v1, v2}, Lg/axs;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvj;->zzc()Lcom/google/android/gms/internal/ads/zzfvk;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lg/axs;->p(Lorg/json/JSONObject;)Lg/abm;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public l(Lg/nk;)V
    .locals 2

    iget-object v0, p0, Lg/axs;->f:Ljava/lang/Object;

    check-cast v0, Lg/ecd;

    iget-object v0, v0, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v1, Lg/dzu;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fbd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/fbd;->w(Lg/nk;)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "message"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "action"

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lg/eax;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const-string v3, "onError"

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public n(Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzfvf;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "adWebview missing"

    const-string p2, "onLMDShow"

    invoke-virtual {p0, p1, p2}, Lg/axs;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lg/axs;->d:Ljava/lang/Object;

    iget-boolean v0, p0, Lg/axs;->g:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/axs;->o(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "LMDOverlay not bound"

    const-string p2, "on_play_store_bind"

    invoke-virtual {p0, p1, p2}, Lg/axs;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzlf:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfvf;->zzh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/axs;->a:Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lg/axs;->h:Ljava/lang/Object;

    check-cast p1, Lg/eap;

    if-nez p1, :cond_4

    new-instance p1, Lg/eap;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lg/eap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/axs;->h:Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lg/axs;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzful;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lg/axs;->h:Ljava/lang/Object;

    check-cast v0, Lg/eap;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzful;->zzd(Lcom/google/android/gms/internal/ads/zzfvf;Lcom/google/android/gms/internal/ads/zzfvi;)V

    :cond_5
    return-void
.end method

.method public declared-synchronized o(Landroid/content/Context;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfvx;->zza(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfum;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzful;

    move-result-object p1

    iput-object p1, p0, Lg/axs;->e:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Error connecting LMD Overlay service"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    const-string v0, "LastMileDeliveryOverlay.bindLastMileDeliveryService"

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lg/axs;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzful;

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lg/axs;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_3
    iget-object p1, p0, Lg/axs;->h:Ljava/lang/Object;

    check-cast p1, Lg/eap;

    if-nez p1, :cond_2

    new-instance p1, Lg/eap;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lg/eap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/axs;->h:Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/axs;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/axs;->g:Z

    iget-object v0, p0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v0, Lg/alj;

    invoke-interface {v0}, Lg/alj;->onDestroy()V

    return-void
.end method

.method public p(Lorg/json/JSONObject;)Lg/abm;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "name"

    if-eqz v0, :cond_1

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v11, "children"

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_3
    new-instance v10, Lg/abm;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v8, v10, Lg/abm;->c:Ljava/lang/String;

    iget-boolean v0, v1, Lg/axs;->g:Z

    if-eqz v0, :cond_4

    const-string v0, "Video"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "V3"

    invoke-static {v6, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lg/abm;->e:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object v6, v10, Lg/abm;->e:Ljava/lang/String;

    :goto_3
    iput-object v9, v10, Lg/abm;->f:Lorg/json/JSONObject;

    iget-object v0, v1, Lg/axs;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v10, Lg/abm;->d:Ljava/lang/String;

    const-string v0, "i18n"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v10, Lg/abm;->a:Lorg/json/JSONObject;

    :cond_5
    const-string v0, "CustomComponent"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_f

    iget-object v0, v10, Lg/abm;->f:Lorg/json/JSONObject;

    const-string v8, "events"

    iget-object v9, v1, Lg/axs;->h:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    if-eqz v9, :cond_f

    if-nez v0, :cond_6

    goto/16 :goto_8

    :cond_6
    const-string v12, "targetId"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :try_start_1
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto/16 :goto_8

    :cond_7
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "targetProps"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    instance-of v13, v14, Lorg/json/JSONArray;

    if-eqz v13, :cond_b

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    check-cast v14, Lorg/json/JSONArray;

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-gtz v15, :cond_8

    goto :goto_6

    :cond_8
    if-nez v13, :cond_9

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    :cond_9
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v15, v3, :cond_b

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    const/4 v3, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_c
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_d
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_e
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_8
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_10

    goto :goto_d

    :cond_10
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_16

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_11
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_a
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lg/axs;->e:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONObject;

    invoke-static {v9, v11}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Template"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v3, v1, Lg/axs;->d:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_12

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    invoke-virtual {v1, v3}, Lg/axs;->p(Lorg/json/JSONObject;)Lg/abm;

    move-result-object v3

    :goto_c
    if-eqz v3, :cond_15

    iget-object v8, v10, Lg/abm;->b:Ljava/util/ArrayList;

    if-nez v8, :cond_14

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v10, Lg/abm;->b:Ljava/util/ArrayList;

    :cond_14
    iget-object v8, v10, Lg/abm;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_16
    :goto_d
    return-object v10
.end method
