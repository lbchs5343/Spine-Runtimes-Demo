.class public final synthetic Lg/fuy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lg/fuy;->b:I

    iput-object p2, p0, Lg/fuy;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/fuy;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/emi;Lg/gio;Lg/emi;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lg/fuy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fuy;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/fuy;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/fuy;->b:I

    iput-object p1, p0, Lg/fuy;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/fuy;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 7

    iget-object v0, p0, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v0, Lg/cmo;

    iget-object v1, p0, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-string v2, "admob"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :try_start_0
    iget-object v3, v0, Lg/cmo;->k:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    iput-object v2, v0, Lg/cmo;->ac:Landroid/content/SharedPreferences$Editor;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-static {}, Lg/fnh;->u()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-static {v1}, Lg/fnh;->r(Landroid/security/NetworkSecurityPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "use_https"

    iget-boolean v4, v0, Lg/cmo;->b:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lg/cmo;->b:Z

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "content_url_opted_out"

    iget-boolean v4, v0, Lg/cmo;->l:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lg/cmo;->l:Z

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "content_url_hashes"

    iget-object v4, v0, Lg/cmo;->u:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->u:Ljava/lang/String;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "gad_idless"

    iget-boolean v4, v0, Lg/cmo;->c:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lg/cmo;->c:Z

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "content_vertical_opted_out"

    iget-boolean v4, v0, Lg/cmo;->o:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lg/cmo;->o:Z

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "content_vertical_hashes"

    iget-object v4, v0, Lg/cmo;->w:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->w:Ljava/lang/String;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    iget v4, v0, Lg/cmo;->ad:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lg/cmo;->ad:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbef;->zzg:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zze()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzt;

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbzt;-><init>(Ljava/lang/String;J)V

    iput-object v1, v0, Lg/cmo;->f:Lcom/google/android/gms/internal/ads/zzbzt;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "app_settings_json"

    iget-object v4, v0, Lg/cmo;->f:Lcom/google/android/gms/internal/ads/zzbzt;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbzt;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v4, "app_settings_last_update_ms"

    iget-object v5, v0, Lg/cmo;->f:Lcom/google/android/gms/internal/ads/zzbzt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbzt;->zza()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbzt;

    invoke-direct {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzbzt;-><init>(Ljava/lang/String;J)V

    iput-object v2, v0, Lg/cmo;->f:Lcom/google/android/gms/internal/ads/zzbzt;

    :goto_1
    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "app_last_background_time_ms"

    iget-wide v4, v0, Lg/cmo;->d:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lg/cmo;->d:J

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "request_in_session_count"

    iget v4, v0, Lg/cmo;->x:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lg/cmo;->x:I

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "first_ad_req_time_ms"

    iget-wide v4, v0, Lg/cmo;->s:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lg/cmo;->s:J

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "never_pool_slots"

    iget-object v4, v0, Lg/cmo;->r:Ljava/util/Set;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->r:Ljava/util/Set;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "display_cutout"

    iget-object v4, v0, Lg/cmo;->p:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->p:Ljava/lang/String;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "app_measurement_npa"

    iget v4, v0, Lg/cmo;->h:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lg/cmo;->h:I

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "sd_app_measure_npa"

    iget v4, v0, Lg/cmo;->n:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lg/cmo;->n:I

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "sd_app_measure_npa_ts"

    iget-wide v4, v0, Lg/cmo;->m:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lg/cmo;->m:J

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "inspector_info"

    iget-object v4, v0, Lg/cmo;->ab:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->ab:Ljava/lang/String;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "linked_device"

    iget-boolean v4, v0, Lg/cmo;->e:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lg/cmo;->e:Z

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "linked_ad_unit"

    iget-object v4, v0, Lg/cmo;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->a:Ljava/lang/String;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "inspector_ui_storage"

    iget-object v4, v0, Lg/cmo;->y:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->y:Ljava/lang/String;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "IABTCF_TCString"

    iget-object v4, v0, Lg/cmo;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/cmo;->i:Ljava/lang/String;

    iget-object v1, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v2, "gad_has_consent_for_cookies"

    iget v4, v0, Lg/cmo;->t:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lg/cmo;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lg/cmo;->q:Landroid/content/SharedPreferences;

    const-string v4, "native_advanced_settings"

    const-string v5, "{}"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lg/cmo;->z:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_3
    sget-object v1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_2
    invoke-virtual {v0}, Lg/cmo;->ah()V

    monitor-exit v3

    goto :goto_4

    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "AdSharedPreferenceManagerImpl.initializeOnBackgroundThread"

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lg/agd;->h()Z

    :goto_4
    return-void
.end method

.method private final e()V
    .locals 3

    iget-object v0, p0, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v0, v0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v1, Lg/err;

    iget-object v1, v1, Lg/err;->b:Ljava/lang/Object;

    check-cast v1, Lg/fbr;

    iget-object v2, p0, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v2, Lg/ci;

    invoke-virtual {v2}, Lg/ci;->b()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lg/fbr;->onFailure(Ljava/lang/Exception;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final f()V
    .locals 3

    iget-object v0, p0, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v0, v0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v1, Lg/err;

    iget-object v1, v1, Lg/err;->b:Ljava/lang/Object;

    check-cast v1, Lg/etk;

    iget-object v2, p0, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v2, Lg/ci;

    invoke-virtual {v2}, Lg/ci;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/etk;->onSuccess(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 31

    move-object/from16 v1, p0

    iget v0, v1, Lg/fuy;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/fuy;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/chw;

    :try_start_0
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/chw;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lg/chw;->l(Ljava/lang/Exception;)V

    goto :goto_2

    :goto_1
    invoke-virtual {v2, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    :goto_2
    return-void

    :pswitch_0
    invoke-direct {v1}, Lg/fuy;->f()V

    return-void

    :pswitch_1
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v2, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v2, Lg/ffm;

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/os;->zza()V

    iget-object v3, v0, Lg/csp;->p:Lg/ffm;

    if-eq v2, v3, :cond_1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    :goto_3
    const-string v4, "EventInterceptor already set."

    invoke-static {v4, v3}, Lg/ckd;->an(Ljava/lang/String;Z)V

    :cond_1
    iput-object v2, v0, Lg/csp;->p:Lg/ffm;

    return-void

    :pswitch_2
    invoke-direct {v1}, Lg/fuy;->e()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v2, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v3

    invoke-virtual {v3}, Lg/fth;->_e()V

    iget-object v3, v0, Lg/bsz;->c:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lg/bsz;->c:Ljava/util/ArrayList;

    :cond_2
    iget-object v3, v0, Lg/bsz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lg/bsz;->bf()V

    return-void

    :pswitch_4
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/gyy;

    iget-object v0, v0, Lg/gyy;->a:Lg/dbb;

    iget-object v2, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v0, v2}, Lg/dbb;->o(Lg/dbb;Landroid/content/ComponentName;)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/dbb;

    iget-object v3, v2, Lg/dbb;->l:Lg/ake;

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    if-nez v3, :cond_3

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to send current screen to service"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_6

    :cond_3
    :try_start_1
    iget-object v4, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v4, Lg/ein;

    if-nez v4, :cond_4

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lg/ake;->g(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_4
    iget-wide v5, v4, Lg/ein;->f:J

    move-wide v7, v5

    iget-object v6, v4, Lg/ein;->c:Ljava/lang/String;

    iget-object v4, v4, Lg/ein;->e:Ljava/lang/String;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v29, v7

    move-object v7, v4

    move-wide/from16 v4, v29

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Lg/ake;->g(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2}, Lg/dbb;->x()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :goto_5
    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Failed to send current screen to the service"

    invoke-virtual {v2, v0, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-void

    :pswitch_6
    iget-object v0, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v0, Lg/bbu;

    iget-object v0, v0, Lg/bbu;->b:Ljava/lang/Object;

    check-cast v0, Lg/cwg;

    iget-object v0, v0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_7
    invoke-direct {v1}, Lg/fuy;->d()V

    return-void

    :pswitch_8
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v2, v0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v0, v0, Lg/err;->b:Ljava/lang/Object;

    check-cast v0, Lg/dyt;

    iget-object v3, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v3, Lg/ci;

    invoke-interface {v0, v3}, Lg/dyt;->onComplete(Lg/ci;)V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_9
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v2, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lg/csp;->ao(Ljava/lang/Boolean;Z)V

    return-void

    :pswitch_a
    iget-object v0, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v2, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->at()Lg/fqh;

    move-result-object v3

    iget-object v4, v3, Lg/fqh;->s:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v5, 0x1

    :cond_5
    iput-object v2, v3, Lg/fqh;->s:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/fqh;->w()V

    :cond_6
    return-void

    :pswitch_b
    const-string v0, "app_set_id_storage"

    iget-object v2, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v2, Lg/fpd;

    iget-object v3, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v3, Lg/eeo;

    iget-object v3, v3, Lg/eeo;->a:Lg/chw;

    const-string v4, "AppSet"

    iget-object v2, v2, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lg/fpd;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "app_set_id"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lg/fpd;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "app_set_id_last_used_time"

    const-wide/16 v9, -0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-eqz v11, :cond_7

    const-wide v9, 0x7d8702800L

    add-long/2addr v9, v7

    :cond_7
    if-eqz v5, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-lez v11, :cond_8

    goto :goto_7

    :cond_8
    :try_start_3
    invoke-static {v2}, Lg/fpd;->r(Landroid/content/Context;)V
    :try_end_3
    .catch Lg/auq; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    goto/16 :goto_c

    :cond_9
    :goto_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v2, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-nez v6, :cond_b

    const-string v0, "Failed to store app set ID generated for App "

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_b

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_8
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lg/auq;

    const-string v2, "Failed to store the app set ID."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {v2}, Lg/fpd;->r(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "app_set_id_creation_time"

    invoke-interface {v0, v8, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Failed to store app set ID creation time for App "

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_9
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lg/auq;

    const-string v2, "Failed to store the app set ID creation time."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lg/auq; {:try_start_4 .. :try_end_4} :catch_3

    :cond_d
    :goto_a
    new-instance v0, Lg/fro;

    const/4 v2, 0x1

    invoke-direct {v0, v5, v2}, Lg/fro;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Lg/chw;->m(Ljava/lang/Object;)V

    goto :goto_c

    :goto_b
    invoke-virtual {v3, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    :goto_c
    return-void

    :pswitch_c
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgee;

    iget-object v0, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/zzgfk;

    if-eqz v3, :cond_f

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgfk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgfl;->zza(Lcom/google/android/gms/internal/ads/zzgfk;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_e

    goto :goto_d

    :cond_e
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzgee;->zza(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_f
    :goto_d
    :try_start_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgee;->zzb(Ljava/lang/Object;)V

    goto :goto_e

    :catchall_2
    move-exception v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgee;->zza(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgee;->zza(Ljava/lang/Throwable;)V

    :goto_e
    return-void

    :pswitch_d
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v2, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v2, Lg/bou;

    iget-object v3, v2, Lg/bou;->zzc:Lg/cmd;

    invoke-virtual {v3}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v3}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lg/bsz;->az(Ljava/lang/String;)Lg/afh;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v2, v3}, Lg/bsz;->bj(Lg/bou;Lg/afh;)V

    goto :goto_f

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {v3}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lg/bsz;->az(Ljava/lang/String;)Lg/afh;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v2, v3}, Lg/bsz;->bg(Lg/bou;Lg/afh;)V

    :cond_11
    :goto_f
    return-void

    :pswitch_e
    const-string v2, "measurement_enabled"

    const-string v3, "admob_app_id"

    const-string v0, "Can\'t initialize twice"

    iget-object v4, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v5, v4, Lg/cyg;->b:Lg/gmr;

    iget-object v6, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v6, Lg/acu;

    iget-object v7, v4, Lg/cyg;->j:Lg/fth;

    iget-object v8, v4, Lg/cyg;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v7}, Lg/fth;->_e()V

    iget-object v10, v4, Lg/cyg;->e:Lg/dsd;

    iget-object v11, v10, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v11, Lg/cyg;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lg/auk;

    invoke-direct {v11, v4}, Lg/bkw;-><init>(Lg/cyg;)V

    invoke-virtual {v11}, Lg/bkw;->ao()V

    iput-object v11, v4, Lg/cyg;->g:Lg/auk;

    new-instance v11, Lg/fqh;

    iget-wide v12, v6, Lg/acu;->e:J

    invoke-direct {v11, v4, v12, v13}, Lg/fqh;-><init>(Lg/cyg;J)V

    invoke-virtual {v11}, Lg/os;->c()V

    iput-object v11, v4, Lg/cyg;->ac:Lg/fqh;

    new-instance v12, Lg/efm;

    invoke-direct {v12, v4}, Lg/efm;-><init>(Lg/cyg;)V

    invoke-virtual {v12}, Lg/os;->c()V

    iput-object v12, v4, Lg/cyg;->d:Lg/efm;

    new-instance v12, Lg/dbb;

    invoke-direct {v12, v4}, Lg/dbb;-><init>(Lg/cyg;)V

    invoke-virtual {v12}, Lg/os;->c()V

    iput-object v12, v4, Lg/cyg;->o:Lg/dbb;

    iget-object v12, v4, Lg/cyg;->m:Lg/dkq;

    iget-boolean v13, v12, Lg/bkw;->am:Z

    iget-object v14, v12, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v14, Lg/cyg;

    if-nez v13, :cond_4a

    invoke-virtual {v12}, Lg/bgf;->_e()V

    new-instance v13, Ljava/security/SecureRandom;

    invoke-direct {v13}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v13}, Ljava/util/Random;->nextLong()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-nez v19, :cond_12

    invoke-virtual {v13}, Ljava/util/Random;->nextLong()J

    move-result-wide v15

    cmp-long v13, v15, v17

    if-nez v13, :cond_12

    iget-object v13, v12, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v13, Lg/cyg;

    iget-object v13, v13, Lg/cyg;->z:Lg/bgm;

    invoke-static {v13}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v13, v13, Lg/bgm;->g:Lg/dvb;

    move-object/from16 v17, v7

    const-string v7, "Utils falling back to Random for random id"

    invoke-virtual {v13, v7}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_10
    move-object v13, v8

    move-wide v7, v15

    goto :goto_11

    :cond_12
    move-object/from16 v17, v7

    goto :goto_10

    :goto_11
    iget-object v15, v12, Lg/dkq;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v15, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-virtual {v14}, Lg/cyg;->aq()V

    const/4 v7, 0x1

    iput-boolean v7, v12, Lg/bkw;->am:Z

    iget-boolean v8, v5, Lg/bkw;->am:Z

    if-nez v8, :cond_49

    iget-object v8, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v8, Lg/cyg;

    iget-object v8, v8, Lg/cyg;->v:Landroid/content/Context;

    const-string v15, "com.google.android.gms.measurement.prefs"

    const/4 v7, 0x0

    invoke-virtual {v8, v15, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, v5, Lg/gmr;->r:Landroid/content/SharedPreferences;

    const-string v15, "has_been_opened"

    invoke-interface {v8, v15, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Lg/gmr;->c:Z

    if-nez v7, :cond_13

    iget-object v7, v5, Lg/gmr;->r:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v15, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_13
    new-instance v7, Lg/dkh;

    sget-object v8, Lg/gad;->bj:Lg/tw;

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v15, v0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v8, v11

    move-object/from16 v18, v12

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {v7, v5, v0, v1}, Lg/dkh;-><init>(Lg/gmr;J)V

    iput-object v7, v5, Lg/gmr;->s:Lg/dkh;

    iget-object v0, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->aq()V

    const/4 v1, 0x1

    iput-boolean v1, v5, Lg/bkw;->am:Z

    iget-object v1, v4, Lg/cyg;->ac:Lg/fqh;

    iget-boolean v0, v1, Lg/os;->a:Z

    iget-object v7, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v7, Lg/cyg;

    if-nez v0, :cond_48

    const-string v0, ""

    iget-object v11, v7, Lg/cyg;->v:Landroid/content/Context;

    iget-object v12, v7, Lg/cyg;->q:Ljava/lang/String;

    iget-object v15, v7, Lg/cyg;->aa:Ljava/lang/String;

    move-object/from16 v19, v8

    iget-object v8, v7, Lg/cyg;->z:Lg/bgm;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v13

    iget-object v13, v7, Lg/cyg;->v:Landroid/content/Context;

    move-object/from16 v21, v2

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v22, "unknown"

    const-string v23, "Unknown"

    move-object/from16 v24, v10

    const/high16 v25, -0x80000000

    if-nez v2, :cond_14

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v10, v8, Lg/bgm;->b:Lg/dvb;

    move-object/from16 v26, v5

    const-string v5, "PackageManager is null, app identity information might be inaccurate. appId"

    move-object/from16 v27, v6

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v6

    invoke-virtual {v10, v6, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v2

    :goto_12
    move-object/from16 v2, v22

    move-object/from16 v5, v23

    const/high16 v6, -0x80000000

    goto/16 :goto_19

    :cond_14
    move-object/from16 v26, v5

    move-object/from16 v27, v6

    :try_start_6
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_13
    move-object/from16 v5, v22

    goto :goto_14

    :catch_5
    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Error retrieving app installer package name. appId"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v10

    invoke-virtual {v5, v10, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13

    :goto_14
    if-nez v5, :cond_16

    const-string v5, "manual_install"

    :cond_15
    move-object/from16 v22, v5

    goto :goto_15

    :cond_16
    const-string v6, "com.android.vending"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object/from16 v22, v0

    :goto_15
    :try_start_7
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_18

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_16

    :cond_17
    move-object/from16 v6, v23

    :goto_16
    :try_start_8
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    move/from16 v25, v5

    move-object/from16 v23, v10

    goto :goto_17

    :catch_6
    move-object/from16 v23, v10

    goto :goto_18

    :cond_18
    :goto_17
    move-object/from16 v28, v2

    move-object/from16 v2, v22

    move-object/from16 v5, v23

    move/from16 v6, v25

    goto :goto_19

    :catch_7
    move-object/from16 v6, v23

    :catch_8
    :goto_18
    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->b:Lg/dvb;

    const-string v10, "Error retrieving package info. appId, appName"

    move-object/from16 v28, v2

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v2

    invoke-virtual {v5, v2, v10, v6}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :goto_19
    iput-object v11, v1, Lg/fqh;->o:Ljava/lang/String;

    iput-object v2, v1, Lg/fqh;->j:Ljava/lang/String;

    iput-object v5, v1, Lg/fqh;->p:Ljava/lang/String;

    iput v6, v1, Lg/fqh;->u:I

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lg/fqh;->g:J

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "am"

    iget-object v10, v7, Lg/cyg;->l:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v7}, Lg/cyg;->av()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    move-wide/from16 v22, v5

    iget-object v5, v8, Lg/bgm;->p:Lg/dvb;

    const-string v6, "App measurement disabled due to denied storage consent"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_f
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->p:Lg/dvb;

    const-string v6, "App measurement disabled via the global data collection setting"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_10
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->h:Lg/dvb;

    const-string v6, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_11
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->c:Lg/dvb;

    const-string v6, "App measurement disabled via the init parameters"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_12
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->p:Lg/dvb;

    const-string v6, "App measurement disabled via the manifest"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_13
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->p:Lg/dvb;

    const-string v6, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_14
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->c:Lg/dvb;

    const-string v6, "App measurement deactivated via the init parameters"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_15
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->p:Lg/dvb;

    const-string v6, "App measurement deactivated via the manifest"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_16
    move-wide/from16 v22, v5

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->c:Lg/dvb;

    const-string v6, "App measurement collection enabled"

    invoke-virtual {v5, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_1b
    iput-object v0, v1, Lg/fqh;->t:Ljava/lang/String;

    iput-object v0, v1, Lg/fqh;->r:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iput-object v15, v1, Lg/fqh;->r:Ljava/lang/String;

    :cond_1a
    const/4 v2, 0x0

    :try_start_a
    invoke-static {v13, v12}, Lg/cux;->av(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v15, 0x1

    if-eq v15, v6, :cond_1b

    move-object v0, v5

    :cond_1b
    iput-object v0, v1, Lg/fqh;->t:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_1c

    :cond_1c
    invoke-static {v13}, Lg/awt;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    :goto_1c
    const-string v5, "string"

    invoke-virtual {v0, v3, v5, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_a

    if-nez v5, :cond_1d

    :catch_9
    move-object v0, v2

    goto :goto_1d

    :cond_1d
    :try_start_b
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_a

    :goto_1d
    :try_start_c
    iput-object v0, v1, Lg/fqh;->r:Ljava/lang/String;

    goto :goto_1e

    :catch_a
    move-exception v0

    goto :goto_20

    :cond_1e
    :goto_1e
    if-nez v10, :cond_20

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v8, Lg/bgm;->c:Lg/dvb;

    const-string v5, "App measurement enabled for app package, google app id"

    iget-object v6, v1, Lg/fqh;->o:Ljava/lang/String;

    iget-object v10, v1, Lg/fqh;->t:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, v1, Lg/fqh;->r:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    iget-object v10, v1, Lg/fqh;->t:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v0, v6, v5, v10}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_21

    :goto_20
    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v8, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Fetching Google App Id failed with exception. appId"

    invoke-static {v11}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v10

    invoke-virtual {v5, v10, v6, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    :goto_21
    iput-object v2, v1, Lg/fqh;->l:Ljava/util/List;

    iget-object v0, v7, Lg/cyg;->e:Lg/dsd;

    iget-object v5, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    const-string v6, "analytics.safelisted_events"

    invoke-static {v6}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/dsd;->t()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v0, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_22
    move-object v0, v2

    goto :goto_23

    :cond_21
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    goto :goto_22

    :cond_22
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_23
    if-eqz v0, :cond_23

    :try_start_d
    iget-object v6, v5, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    :cond_23
    :goto_24
    move-object v0, v2

    goto :goto_25

    :cond_24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_25

    :catch_b
    move-exception v0

    iget-object v5, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v5, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v5, v0, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    :goto_25
    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v8, Lg/bgm;->h:Lg/dvb;

    const-string v5, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_27

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v7, Lg/cyg;->m:Lg/dkq;

    invoke-static {v8}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v10, "safelisted event"

    invoke-virtual {v8, v10, v6}, Lg/dkq;->bd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_27

    :cond_28
    :goto_26
    iput-object v0, v1, Lg/fqh;->l:Ljava/util/List;

    :goto_27
    if-eqz v28, :cond_29

    invoke-static {v13}, Lg/ckd;->bd(Landroid/content/Context;)Z

    move-result v0

    iput v0, v1, Lg/fqh;->m:I

    goto :goto_28

    :cond_29
    const/4 v6, 0x0

    iput v6, v1, Lg/fqh;->m:I

    :goto_28
    invoke-virtual {v7}, Lg/cyg;->aq()V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lg/os;->a:Z

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->p:Lg/dvb;

    invoke-virtual/range {v24 .. v24}, Lg/dsd;->n()V

    const-string v1, "App measurement initialized, version"

    const-wide/32 v5, 0x11d28

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v4, Lg/cyg;->aa:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v6, 0x0

    goto :goto_29

    :cond_2a
    iget-object v5, v14, Lg/cyg;->e:Lg/dsd;

    const-string v6, "debug.firebase.analytics.app"

    invoke-virtual {v5, v6}, Lg/dsd;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_29
    if-eqz v6, :cond_2b

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_2a

    :cond_2b
    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v5, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_2c
    :goto_2a
    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    iget v0, v4, Lg/cyg;->s:I

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_2d

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Not all components initialized"

    iget v5, v4, Lg/cyg;->s:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v1, v6}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    const/4 v15, 0x1

    iput-boolean v15, v4, Lg/cyg;->x:Z

    move-object/from16 v6, v27

    iget-object v0, v6, Lg/acu;->j:Lg/apu;

    const-string v1, "gmp_app_id"

    iget-object v5, v4, Lg/cyg;->v:Landroid/content/Context;

    iget-wide v6, v4, Lg/cyg;->ah:J

    iget-object v8, v4, Lg/cyg;->c:Lg/csp;

    invoke-static/range {v17 .. v17}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual/range {v17 .. v17}, Lg/fth;->_e()V

    invoke-static/range {v26 .. v26}, Lg/cyg;->ai(Lg/bgf;)V

    move-object/from16 v10, v26

    iget-object v11, v10, Lg/gmr;->g:Lg/dxb;

    iget-object v12, v10, Lg/gmr;->h:Lg/dxb;

    iget-object v13, v10, Lg/gmr;->ap:Lg/fou;

    invoke-virtual {v10}, Lg/gmr;->as()Lg/rs;

    move-result-object v14

    invoke-virtual {v10}, Lg/bgf;->_e()V

    invoke-virtual {v10}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v2, "consent_source"

    move-object/from16 v19, v5

    const/16 v5, 0x64

    invoke-interface {v15, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v15, v24

    iget-object v5, v15, Lg/bgf;->z:Ljava/lang/Object;

    const-string v5, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v15, v5}, Lg/dsd;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v24, v14

    const-string v14, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v15, v14}, Lg/dsd;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v25, v11

    const/16 v11, -0xa

    if-nez v5, :cond_2e

    if-eqz v14, :cond_2f

    :cond_2e
    invoke-virtual {v10, v11}, Lg/gmr;->aq(I)Z

    move-result v26

    if-eqz v26, :cond_2f

    new-instance v0, Lg/rs;

    invoke-direct {v0, v5, v14}, Lg/rs;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/16 v5, -0xa

    goto :goto_2b

    :cond_2f
    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v5

    invoke-virtual {v5}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v14, 0x1e

    if-nez v5, :cond_32

    if-eqz v2, :cond_30

    if-eq v2, v14, :cond_30

    const/16 v5, 0xa

    if-eq v2, v5, :cond_30

    if-eq v2, v14, :cond_30

    if-eq v2, v14, :cond_30

    const/16 v5, 0x28

    if-ne v2, v5, :cond_32

    :cond_30
    invoke-static {v8}, Lg/cyg;->aj(Lg/os;)V

    sget-object v0, Lg/rs;->a:Lg/rs;

    invoke-virtual {v8, v0, v11, v6, v7}, Lg/csp;->as(Lg/rs;IJ)V

    :cond_31
    const/4 v0, 0x0

    const/16 v5, 0x64

    goto :goto_2b

    :cond_32
    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    invoke-virtual {v2}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    if-eqz v0, :cond_31

    iget-object v2, v0, Lg/apu;->zzg:Landroid/os/Bundle;

    if-eqz v2, :cond_31

    invoke-virtual {v10, v14}, Lg/gmr;->aq(I)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v0, v0, Lg/apu;->zzg:Landroid/os/Bundle;

    invoke-static {v0}, Lg/rs;->c(Landroid/os/Bundle;)Lg/rs;

    move-result-object v0

    sget-object v2, Lg/rs;->a:Lg/rs;

    invoke-virtual {v0, v2}, Lg/rs;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const/16 v5, 0x1e

    :goto_2b
    if-eqz v0, :cond_33

    invoke-static {v8}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v8, v0, v5, v6, v7}, Lg/csp;->as(Lg/rs;IJ)V

    move-object v14, v0

    goto :goto_2c

    :cond_33
    move-object/from16 v14, v24

    :goto_2c
    invoke-static {v8}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v8, v14}, Lg/csp;->ar(Lg/rs;)V

    invoke-virtual {v13}, Lg/fou;->f()J

    move-result-wide v26

    cmp-long v0, v26, v22

    if-nez v0, :cond_34

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Persisting first open"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v6, v7}, Lg/fou;->g(J)V

    :cond_34
    invoke-static {v8}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v8, Lg/csp;->k:Lg/bzv;

    invoke-virtual {v0}, Lg/bzv;->e()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Lg/bzv;->h()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v0, v0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->p:Lg/dxb;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/dxb;->l(Ljava/lang/String;)V

    :cond_35
    invoke-virtual {v4}, Lg/cyg;->au()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v4}, Lg/cyg;->as()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static/range {v18 .. v18}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v0, "android.permission.INTERNET"

    move-object/from16 v2, v18

    invoke-virtual {v2, v0}, Lg/dkq;->bk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->b:Lg/dvb;

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_36
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, v0}, Lg/dkq;->bk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->b:Lg/dvb;

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_37
    invoke-static/range {v19 .. v19}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v0

    invoke-virtual {v0}, Lg/ccb;->d()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {v15}, Lg/dsd;->s()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static/range {v19 .. v19}, Lg/dkq;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->b:Lg/dvb;

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_38
    invoke-static/range {v19 .. v19}, Lg/dkq;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->b:Lg/dvb;

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_39
    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_3a
    move-object/from16 v2, v18

    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/os;->zza()V

    iget-object v0, v0, Lg/fqh;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_2d

    :cond_3b
    move-object/from16 v26, v10

    goto/16 :goto_2f

    :cond_3c
    :goto_2d
    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lg/bgf;->_e()V

    invoke-virtual {v10}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v11, 0x0

    invoke-interface {v5, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v14

    invoke-virtual {v14}, Lg/os;->zza()V

    iget-object v14, v14, Lg/fqh;->r:Ljava/lang/String;

    invoke-virtual {v10}, Lg/bgf;->_e()V

    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v14, v10}, Lg/dkq;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->p:Lg/dvb;

    const-string v5, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Lg/bgf;->_e()V

    invoke-virtual/range {v26 .. v26}, Lg/bgf;->_e()V

    invoke-virtual/range {v26 .. v26}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    move-object/from16 v5, v21

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual/range {v26 .. v26}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    :cond_3d
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual/range {v26 .. v26}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_3e

    invoke-virtual/range {v26 .. v26}, Lg/bgf;->_e()V

    invoke-virtual/range {v26 .. v26}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v10, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3e
    invoke-virtual {v4}, Lg/cyg;->an()Lg/efm;

    move-result-object v0

    invoke-virtual {v0}, Lg/efm;->j()V

    iget-object v0, v4, Lg/cyg;->o:Lg/dbb;

    invoke-virtual {v0}, Lg/dbb;->am()V

    iget-object v0, v4, Lg/cyg;->o:Lg/dbb;

    invoke-virtual {v0}, Lg/dbb;->an()V

    invoke-virtual {v13, v6, v7}, Lg/fou;->g(J)V

    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Lg/dxb;->l(Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v26 .. v26}, Lg/bgf;->_e()V

    invoke-virtual/range {v26 .. v26}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/os;->zza()V

    iget-object v0, v0, Lg/fqh;->r:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lg/bgf;->_e()V

    invoke-virtual/range {v26 .. v26}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2f
    invoke-virtual/range {v26 .. v26}, Lg/gmr;->as()Lg/rs;

    move-result-object v0

    sget-object v1, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v0, v1}, Lg/rs;->g(Lg/gxx;)Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Lg/dxb;->l(Ljava/lang/String;)V

    :cond_40
    invoke-static {v8}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v12}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v0, Lg/ear;->a:Lg/ear;

    iget-object v0, v0, Lg/ear;->b:Lg/dvf;

    invoke-interface {v0}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gbh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg/gad;->q:Lg/tw;

    const/4 v11, 0x0

    invoke-virtual {v15, v11, v0}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    :try_start_e
    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_30

    :catch_c
    nop

    invoke-virtual/range {v25 .. v25}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v9, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Remote config removed with active feature rollouts"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    move-object/from16 v0, v25

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lg/dxb;->l(Ljava/lang/String;)V

    :cond_41
    :goto_30
    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v0

    invoke-virtual {v0}, Lg/os;->zza()V

    iget-object v0, v0, Lg/fqh;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_31

    :cond_42
    move-object/from16 v10, v26

    goto :goto_33

    :cond_43
    :goto_31
    invoke-virtual {v4}, Lg/cyg;->as()Z

    move-result v0

    move-object/from16 v10, v26

    iget-object v1, v10, Lg/gmr;->r:Landroid/content/SharedPreferences;

    if-nez v1, :cond_44

    const/4 v6, 0x0

    goto :goto_32

    :cond_44
    const-string v2, "deferred_analytics_collection"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    :goto_32
    if-nez v6, :cond_45

    invoke-virtual {v15}, Lg/dsd;->m()Z

    move-result v1

    if-nez v1, :cond_45

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {v10, v1}, Lg/gmr;->at(Z)V

    :cond_45
    if-eqz v0, :cond_46

    invoke-static {v8}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v8}, Lg/csp;->am()V

    :cond_46
    iget-object v0, v4, Lg/cyg;->n:Lg/cjv;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v0, Lg/cjv;->j:Lg/bzv;

    invoke-virtual {v0}, Lg/bzv;->zza()V

    invoke-virtual {v4}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lg/dbb;->r(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v4}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v0

    iget-object v1, v10, Lg/gmr;->w:Lg/dpa;

    invoke-virtual {v1}, Lg/dpa;->p()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/os;->zza()V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v2

    new-instance v3, Lg/eax;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v2, v1, v4}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    :cond_47
    :goto_33
    iget-object v0, v10, Lg/gmr;->v:Lg/avz;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lg/avz;->f(Z)V

    return-void

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    move-object v15, v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    move-object v15, v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_17
    iget-object v0, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v2, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzk(Landroid/webkit/WebView;Ljava/lang/String;)Z

    return-void

    :pswitch_18
    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/emi;

    iget-object v2, v0, Lg/emi;->b:Lg/yh;

    iget-object v0, v0, Lg/emi;->a:Ljava/lang/String;

    iget-object v3, v1, Lg/fuy;->c:Ljava/lang/Object;

    check-cast v3, Lg/gio;

    iget-object v2, v2, Lg/yh;->a:Lg/cyg;

    iget-object v4, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v4}, Lg/fth;->_e()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package_name"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_f
    check-cast v3, Lg/amn;

    invoke-virtual {v3}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, v4}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lg/ob;->_cf(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v3, :cond_4b

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Install Referrer Service returned a null response"

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_34

    :catch_d
    move-exception v0

    iget-object v3, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v3, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4b
    :goto_34
    iget-object v0, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected call on client side"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    iget-object v0, v1, Lg/fuy;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/cgp;

    iget-object v0, v1, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v0, Lg/awn;

    :try_start_10
    iget-object v3, v2, Lg/cgp;->a:Lg/ctl;

    iget-object v0, v0, Lg/awn;->a:Lg/qo;

    invoke-virtual {v3, v0}, Lg/ctl;->r(Lg/qo;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_35

    :catch_e
    move-exception v0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v2

    const-string v3, "BaseAdView.loadAd"

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_35
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/fuy;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwk;

    move-result-object v0

    iget-object v1, p0, Lg/fuy;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgee;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwk;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
