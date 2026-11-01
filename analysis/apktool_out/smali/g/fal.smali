.class public final Lg/fal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lg/fal;->a:I

    iput-object p2, p0, Lg/fal;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/fal;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/tq;Lg/fdy;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/fal;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/fal;->b:Ljava/lang/Object;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg/fal;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/fal;->a:I

    iput-object p1, p0, Lg/fal;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/fal;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lg/fal;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    iget-object v3, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v3, Lg/afh;

    iget-object v4, v3, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v4}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v4

    sget-object v5, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v4, v5}, Lg/rs;->g(Lg/gxx;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lg/afh;->zzv:Ljava/lang/String;

    invoke-static {v4}, Lg/rs;->d(Ljava/lang/String;)Lg/rs;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg/rs;->g(Lg/gxx;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    move-result-object v0

    invoke-virtual {v0}, Lg/cyo;->al()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Analytics storage consent denied. Returning null app instance id"

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_1
    return-object v2

    :pswitch_0
    sget-object v0, Lg/esy;->a:Lg/gfx;

    iget-object v0, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebSettings;

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaS:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_2
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v0, Lg/gvq;

    iget-object v2, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lg/gvq;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v0, Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v0, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/ggz;->bf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_3
    const-string v0, "user_agent"

    const-string v2, "admob_user_agent"

    iget-object v5, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v6, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    if-eqz v5, :cond_3

    const-string v3, "Attempting to read user agent from Google Play Services."

    invoke-static {v3}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const-string v5, "Attempting to read user agent from local cache."

    invoke-static {v5}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :goto_2
    const-string v4, ""

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "Reading user agent from WebSettings"

    invoke-static {v4}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Persisting user agent."

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    :cond_4
    return-object v4

    :pswitch_4
    iget-object v0, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbwe;->a:Ljava/util/WeakHashMap;

    iget-object v2, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dwx;

    if-eqz v3, :cond_6

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbec;->zzd:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v3, Lg/dwx;->a:J

    add-long/2addr v6, v4

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->v:Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v8, v6, v4

    if-gez v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, v3, Lg/dwx;->b:Lcom/google/android/gms/internal/ads/zzbwb;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbwa;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbwa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbwb;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbwa;->zza()Lcom/google/android/gms/internal/ads/zzbwb;

    move-result-object v3

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbwa;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzbwa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbwa;->zza()Lcom/google/android/gms/internal/ads/zzbwb;

    move-result-object v3

    :goto_4
    new-instance v4, Lg/dwx;

    invoke-direct {v4, v3}, Lg/dwx;-><init>(Lcom/google/android/gms/internal/ads/zzbwb;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :pswitch_5
    iget-object v0, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v0, Lg/ad;

    iget-object v2, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/ad;->getClickSignals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, v1, Lg/fal;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/tq;

    invoke-virtual {v5}, Lg/tq;->aj()Z

    move-result v0

    const/16 v6, 0x9

    if-nez v0, :cond_7

    sget-object v0, Lg/hm;->zzb:Lg/hm;

    sget-object v3, Lg/edc;->n:Lg/ejd;

    invoke-virtual {v5, v0, v6, v3}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    iget-object v0, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v0, Lg/fdy;

    sget-object v4, Lg/fkz;->g:Lg/duz;

    sget-object v4, Lg/fun;->a:Lg/fun;

    invoke-virtual {v0, v3, v4}, Lg/fdy;->i(Lg/ejd;Ljava/util/List;)V

    :goto_5
    move-object/from16 v16, v2

    goto/16 :goto_13

    :cond_7
    const-string v0, "inapp"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget v0, Lg/gbs;->a:I

    sget-object v0, Lg/hm;->zzX:Lg/hm;

    sget-object v3, Lg/edc;->g:Lg/ejd;

    invoke-virtual {v5, v0, v6, v3}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    iget-object v0, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v0, Lg/fdy;

    sget-object v4, Lg/fkz;->g:Lg/duz;

    sget-object v4, Lg/fun;->a:Lg/fun;

    invoke-virtual {v0, v3, v4}, Lg/fdy;->i(Lg/ejd;Ljava/util/List;)V

    goto :goto_5

    :cond_8
    const-string v7, "Querying owned items, item type: "

    const-string v8, "BillingClient"

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v7, v5, Lg/tq;->f:Z

    iget-object v8, v5, Lg/tq;->z:Lg/cuf;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Lg/tq;->z:Lg/cuf;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Lg/tq;->w:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v11, v5, Lg/tq;->y:Ljava/lang/String;

    iget-object v12, v5, Lg/tq;->g:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11, v12}, Lg/gbs;->g(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_9

    const-string v7, "enablePendingPurchases"

    invoke-virtual {v10, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    move-object v7, v2

    :goto_6
    :try_start_0
    iget-object v8, v5, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, v5, Lg/tq;->s:Lg/agh;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_a

    :try_start_2
    sget-object v0, Lg/edc;->n:Lg/ejd;

    sget-object v3, Lg/hm;->zzbc:Lg/hm;

    invoke-virtual {v5, v0, v3, v2}, Lg/tq;->ak(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/gtb;

    move-result-object v0

    :goto_7
    move-object/from16 v16, v2

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_11

    :cond_a
    iget-boolean v8, v5, Lg/tq;->f:Z

    if-nez v8, :cond_b

    iget-object v8, v5, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    check-cast v9, Lg/eaw;

    invoke-virtual {v9, v8, v7}, Lg/eaw;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_9

    :cond_b
    iget-boolean v8, v5, Lg/tq;->n:Z

    if-eqz v8, :cond_c

    const/16 v8, 0x1a

    goto :goto_8

    :cond_c
    iget-boolean v8, v5, Lg/tq;->m:Z

    if-eqz v8, :cond_d

    const/16 v8, 0x18

    goto :goto_8

    :cond_d
    iget-boolean v8, v5, Lg/tq;->p:Z

    if-eqz v8, :cond_e

    const/16 v8, 0x13

    goto :goto_8

    :cond_e
    const/16 v8, 0x9

    :goto_8
    iget-object v12, v5, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    check-cast v9, Lg/eaw;

    invoke-virtual {v9, v8, v12, v7, v10}, Lg/eaw;->l(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_9
    sget-object v8, Lg/edc;->a:Lg/ejd;

    const-string v9, "BillingClient"

    if-nez v7, :cond_f

    sget v9, Lg/gbs;->a:I

    sget-object v9, Lg/hm;->zzab:Lg/hm;

    :goto_a
    move-object v12, v9

    move-object v9, v8

    goto :goto_c

    :cond_f
    invoke-static {v7, v9}, Lg/gbs;->e(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v12

    invoke-static {v7, v9}, Lg/gbs;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v13

    iput v12, v13, Lg/gvg;->e:I

    iput-object v9, v13, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v13}, Lg/gvg;->h()Lg/ejd;

    move-result-object v9

    if-eqz v12, :cond_10

    sget-object v12, Lg/hm;->zzw:Lg/hm;

    goto :goto_c

    :cond_10
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_b

    :cond_11
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v12, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v9, :cond_12

    sget-object v9, Lg/hm;->zzad:Lg/hm;

    goto :goto_a

    :cond_12
    if-nez v12, :cond_13

    sget-object v9, Lg/hm;->zzae:Lg/hm;

    goto :goto_a

    :cond_13
    if-nez v13, :cond_14

    sget-object v9, Lg/hm;->zzaf:Lg/hm;

    goto :goto_a

    :cond_14
    sget-object v9, Lg/edc;->l:Lg/ejd;

    sget-object v12, Lg/hm;->zza:Lg/hm;

    goto :goto_c

    :cond_15
    :goto_b
    sget-object v9, Lg/hm;->zzac:Lg/hm;

    goto :goto_a

    :goto_c
    sget-object v13, Lg/edc;->l:Lg/ejd;

    if-eq v9, v13, :cond_16

    invoke-virtual {v5, v9, v12, v2}, Lg/tq;->ak(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/gtb;

    move-result-object v0

    goto/16 :goto_7

    :cond_16
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v12, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v16, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_18

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "Sku is owned: "

    const-string v6, "BillingClient"

    invoke-virtual {v11, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v4, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v4, v2, v3}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v2, v4, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v3, "purchaseToken"

    const-string v6, "token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v15, 0x1

    :cond_17
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x9

    goto :goto_d

    :catch_2
    move-exception v0

    sget-object v2, Lg/edc;->a:Lg/ejd;

    sget-object v3, Lg/hm;->zzY:Lg/hm;

    invoke-virtual {v5, v2, v3, v0}, Lg/tq;->ak(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/gtb;

    move-result-object v0

    goto :goto_12

    :cond_18
    if-eqz v15, :cond_19

    sget-object v2, Lg/hm;->zzz:Lg/hm;

    const/16 v3, 0x9

    invoke-virtual {v5, v2, v3, v8}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    goto :goto_e

    :cond_19
    const/16 v3, 0x9

    :goto_e
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v7, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Continuation token: "

    const-string v6, "BillingClient"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lg/gtb;

    sget-object v3, Lg/edc;->l:Lg/ejd;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v0, v5}, Lg/gtb;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    move-object v0, v2

    goto :goto_12

    :cond_1a
    move-object/from16 v2, v16

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x9

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    :goto_f
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_f

    :goto_10
    sget-object v2, Lg/edc;->a:Lg/ejd;

    sget-object v3, Lg/hm;->zzZ:Lg/hm;

    invoke-virtual {v5, v2, v3, v0}, Lg/tq;->ak(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/gtb;

    move-result-object v0

    goto :goto_12

    :goto_11
    sget-object v2, Lg/edc;->n:Lg/ejd;

    sget-object v3, Lg/hm;->zzZ:Lg/hm;

    invoke-virtual {v5, v2, v3, v0}, Lg/tq;->ak(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/gtb;

    move-result-object v0

    :goto_12
    iget-object v2, v0, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1b

    iget-object v3, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v3, Lg/fdy;

    iget-object v0, v0, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Lg/ejd;

    invoke-virtual {v3, v0, v2}, Lg/fdy;->i(Lg/ejd;Ljava/util/List;)V

    goto :goto_13

    :cond_1b
    iget-object v2, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v2, Lg/fdy;

    iget-object v0, v0, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Lg/ejd;

    sget-object v3, Lg/fkz;->g:Lg/duz;

    sget-object v3, Lg/fun;->a:Lg/fun;

    invoke-virtual {v2, v0, v3}, Lg/fdy;->i(Lg/ejd;Ljava/util/List;)V

    :goto_13
    return-object v16

    :pswitch_7
    iget-object v0, v1, Lg/fal;->c:Ljava/lang/Object;

    check-cast v0, Lg/gg;

    iget-object v0, v0, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v2, v1, Lg/fal;->b:Ljava/lang/Object;

    check-cast v2, Lg/fcg;

    invoke-virtual {v0, v2}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v3, 0x1

    goto :goto_14

    :cond_1c
    const/4 v3, 0x0

    :goto_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_15

    :catchall_2
    move-exception v0

    goto :goto_16

    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_15
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_16
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finalize()V
    .locals 1

    iget v0, p0, Lg/fal;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fal;->b:Ljava/lang/Object;

    check-cast v0, Lg/fcg;

    invoke-virtual {v0}, Lg/fcg;->p()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
