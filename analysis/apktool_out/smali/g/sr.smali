.class public final Lg/sr;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/sr;->b:I

    iput-object p2, p0, Lg/sr;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    iput p2, p0, Lg/sr;->b:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    iget v0, p0, Lg/sr;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/esy;

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v6, p1, Lg/esy;->e:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean v7, p1, Lg/esy;->e:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzov;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzop;->f(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzov;->k(Lcom/google/android/gms/internal/ads/zzop;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfob;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzfob;->d:Z

    invoke-virtual {p1, v6, p2}, Lcom/google/android/gms/internal/ads/zzfob;->zzd(ZZ)V

    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzfob;->c:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzfob;->d:Z

    invoke-virtual {p1, v7, p2}, Lcom/google/android/gms/internal/ads/zzfob;->zzd(ZZ)V

    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzfob;->c:Z

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    iget-object p2, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzeb;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v8, 0x5

    if-nez v0, :cond_6

    :cond_5
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x6

    if-eqz v9, :cond_c

    if-eq v9, v6, :cond_b

    if-eq v9, v2, :cond_c

    if-eq v9, v8, :cond_c

    if-eq v9, v10, :cond_a

    if-eq v9, v3, :cond_9

    const/16 v1, 0x8

    goto :goto_3

    :cond_9
    const/4 v1, 0x7

    goto :goto_3

    :cond_a
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_3

    :cond_b
    :pswitch_4
    const/4 v1, 0x2

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    const/4 v1, 0x6

    goto :goto_3

    :pswitch_6
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    const/16 v1, 0x9

    goto :goto_3

    :pswitch_7
    const/4 v1, 0x4

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    :goto_3
    :pswitch_8
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_e

    if-ne v1, v8, :cond_e

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_d

    new-instance v1, Lg/azd;

    invoke-direct {v1, p2}, Lg/azd;-><init>(Lcom/google/android/gms/internal/ads/zzeb;)V

    invoke-static {p1}, Lg/agk;->ad(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lg/dgd;->l(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lg/azd;)V

    invoke-static {v0, v1}, Lg/dgd;->o(Landroid/telephony/TelephonyManager;Lg/azd;)V

    goto :goto_4

    :cond_d
    throw v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {p2, v8}, Lcom/google/android/gms/internal/ads/zzeb;->f(Lcom/google/android/gms/internal/ads/zzeb;I)V

    goto :goto_4

    :cond_e
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzeb;->f(Lcom/google/android/gms/internal/ads/zzeb;I)V

    :goto_4
    return-void

    :pswitch_9
    iget-object v0, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast v0, Lg/aga;

    monitor-enter v0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lg/aga;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-ge v7, v2, :cond_11

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_11
    monitor-exit v0

    return-void

    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :pswitch_a
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzayn;

    sget p2, Lcom/google/android/gms/internal/ads/zzayn;->a:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzayn;->v(I)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawm;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawm;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawm;->r()V

    return-void

    :pswitch_c
    :try_start_4
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "level"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast v0, Lg/cyl;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Lg/cyl;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_12
    return-void

    :pswitch_d
    const-string p1, "accessibility_event_simple"

    iget-object v0, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast v0, Lg/drp;

    const-string v1, "alternative_window_event"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lg/ejn;

    invoke-static {v0, v1}, Lg/erl;->bb(Ljava/lang/Object;Lg/ejn;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_a

    :cond_13
    sget-boolean v1, Lg/drp;->a:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ejn;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lg/ejn;->getEventType()I

    move-result p2

    const/16 v1, 0x20

    if-eq p2, v1, :cond_14

    goto/16 :goto_a

    :cond_14
    invoke-virtual {p1}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lg/ejn;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg/drp;->d:Lg/ejn;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p2}, Lg/cux;->ah(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lg/drp;->d:Lg/ejn;

    invoke-virtual {v2}, Lg/ejn;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lg/cux;->ah(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lg/drp;->d:Lg/ejn;

    invoke-virtual {v2}, Lg/ejn;->getEventType()I

    move-result v2

    invoke-virtual {p1}, Lg/ejn;->getEventType()I

    move-result v3

    if-ne v2, v3, :cond_15

    goto :goto_a

    :cond_15
    iput-object p1, v0, Lg/drp;->d:Lg/ejn;

    iget-object p1, v0, Lg/drp;->h:Lg/drp;

    invoke-static {p1}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object p1

    invoke-virtual {p1, p2, v7}, Lg/cwz;->c(Ljava/lang/String;Z)Lg/auj;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object v5, p1, Lg/auj;->j:Ljava/lang/String;

    :cond_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_a

    :cond_17
    iget-object p1, v0, Lg/drp;->c:Ljava/util/ArrayList;

    new-instance p2, Lg/bfr;

    invoke-direct {p2, v5, v1, v6}, Lg/bfr;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v6

    const/4 p2, 0x1

    :goto_8
    if-ltz p1, :cond_1a

    iget-object v1, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lg/bfr;

    if-eqz v1, :cond_19

    if-nez p2, :cond_18

    iget-object v1, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bfr;

    iput-boolean v7, v1, Lg/bfr;->a:Z

    goto :goto_9

    :cond_18
    const/4 p2, 0x0

    :cond_19
    :goto_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_1a
    iget-object p1, v0, Lg/drp;->k:Lg/dbv;

    if-eqz p1, :cond_1b

    iget-object p2, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object p1, v0, Lg/drp;->k:Lg/dbv;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object p1, v0, Lg/drp;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1b
    :goto_a
    return-void

    :pswitch_e
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_b

    :cond_1c
    const-string v1, "window_state_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-boolean p1, Lg/fri;->a:Z

    if-eqz p1, :cond_23

    const-string p1, "accessibility_event_simple"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ejn;

    if-nez p1, :cond_1d

    goto/16 :goto_b

    :cond_1d
    invoke-virtual {p1}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_23

    iget-object p2, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p2, Lg/fri;

    invoke-virtual {p1}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string v0, "com.android.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p2, Lg/fri;->j:Lg/fri;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_b

    :cond_1e
    iget-boolean p1, p2, Lg/fri;->f:Z

    if-nez p1, :cond_1f

    goto :goto_b

    :cond_1f
    iget-object p1, p2, Lg/fri;->j:Lg/fri;

    const-string v0, "tc_tips_click_view_button"

    invoke-static {p1, v0}, Lg/acw;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p2, Lg/fri;->j:Lg/fri;

    const p2, 0x7f12046a

    invoke-static {p1, p2}, Lg/gm;->c(Landroid/content/Context;I)V

    goto :goto_b

    :cond_20
    const-string v1, "c.t.d.t.c.e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/fri;

    invoke-virtual {p1}, Lg/fri;->p()V

    iget-object p2, p1, Lg/fri;->j:Lg/fri;

    new-instance v0, Lg/dyy;

    invoke-direct {v0, p2}, Lg/dyy;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x7544

    iget-object v0, v0, Lg/dyy;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_b

    :cond_21
    const-string v1, "c.t.d.s.c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "auto_hide_changed"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_23

    const-string p2, "text_copy_ow_auto_hide"

    invoke-static {p1, p2, v6}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/fri;

    iget-object p1, p1, Lg/fri;->m:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->c()V

    goto :goto_b

    :cond_22
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/fri;

    iget-object p1, p1, Lg/fri;->m:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->b()V

    :cond_23
    :goto_b
    return-void

    :pswitch_f
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "fp"

    iget-object v1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast v1, Lb/c/d;

    if-nez p2, :cond_24

    goto/16 :goto_c

    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "c.t.d.p.sf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lb/c/d;->k:Ljava/lang/String;

    invoke-static {p2}, Lg/buj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lb/c/d;->f:Ljava/lang/String;

    iget-object p2, v1, Lb/c/d;->k:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_28

    invoke-static {}, Lg/dyd;->aa()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-virtual {v1}, Lb/c/d;->ak()V

    goto :goto_c

    :cond_25
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lg/fhf;

    invoke-direct {p2, v7, v1}, Lg/fhf;-><init>(ILjava/lang/Object;)V

    new-array v0, v6, [Lg/fcd;

    aput-object p2, v0, v7

    invoke-static {v1, p1, v0}, Lg/fyt;->c(Landroid/app/Activity;[Ljava/lang/String;[Lg/fcd;)V

    goto :goto_c

    :cond_26
    const-string v3, "c.t.d.p.sf2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lb/c/d;->v:Ljava/lang/String;

    invoke-static {p2}, Lg/buj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lb/c/d;->i:Ljava/lang/String;

    iget-object p2, v1, Lb/c/d;->v:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_28

    invoke-static {}, Lg/dyd;->aa()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-virtual {v1}, Lb/c/d;->ah()V

    goto :goto_c

    :cond_27
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lg/fhf;

    invoke-direct {p2, v6, v1}, Lg/fhf;-><init>(ILjava/lang/Object;)V

    new-array v0, v6, [Lg/fcd;

    aput-object p2, v0, v7

    invoke-static {v1, p1, v0}, Lg/fyt;->c(Landroid/app/Activity;[Ljava/lang/String;[Lg/fcd;)V

    :cond_28
    :goto_c
    return-void

    :pswitch_10
    if-nez p2, :cond_29

    goto :goto_d

    :cond_29
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/cwq;

    const-string v0, "package_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cwq;->j(Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_11
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/doq;

    if-nez p2, :cond_2a

    goto :goto_e

    :cond_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c.t.d.p.sf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "fp"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "fn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lg/doq;->ag:Ljava/lang/String;

    invoke-static {}, Lg/dyd;->aa()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Lg/doq;->u()V

    goto :goto_e

    :cond_2b
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xca

    invoke-static {p1, p2, v0}, Lg/fyt;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2c
    :goto_e
    return-void

    :pswitch_12
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/elf;

    if-eqz p2, :cond_2d

    const-string v0, "cn.trinea.android.developertools.ACTION_AUTO_CLICK_TOOL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "tool_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lg/elf;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lg/elf;->ag()V

    :cond_2d
    return-void

    :pswitch_13
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto/16 :goto_f

    :cond_2e
    const-string v1, "window_state_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget-boolean p1, Lg/ka;->a:Z

    if-eqz p1, :cond_3b

    const-string p1, "accessibility_event_simple"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ejn;

    if-nez p1, :cond_2f

    goto/16 :goto_f

    :cond_2f
    invoke-virtual {p1}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3b

    iget-object p2, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p2, Lg/ka;

    invoke-virtual {p1}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/ejn;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_30

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p2, Lg/ka;->p:Lg/ka;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_f

    :cond_30
    sput-object p1, Lg/ka;->c:Ljava/lang/String;

    iget-boolean v1, p2, Lg/ka;->g:Z

    if-nez v1, :cond_31

    goto/16 :goto_f

    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Lg/ka;->p:Lg/ka;

    invoke-static {v2}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Lg/cwz;->c(Ljava/lang/String;Z)Lg/auj;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v3, v2, Lg/auj;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    new-instance v3, Lg/bfr;

    const v4, 0x7f120277

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lg/auj;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v7}, Lg/bfr;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    new-instance v2, Lg/bfr;

    const v3, 0x7f1202a6

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v7}, Lg/bfr;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/bfr;

    const v2, 0x7f120275

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1, v7}, Lg/bfr;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lg/ka;->u:Lg/dbv;

    if-eqz p1, :cond_34

    invoke-virtual {p1, v1}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p1, p2, Lg/ka;->l:Lg/axs;

    iget-boolean p1, p1, Lg/axs;->g:Z

    if-eqz p1, :cond_33

    iget-object p1, p2, Lg/ka;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_33
    iget-object p1, p2, Lg/ka;->u:Lg/dbv;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    :cond_34
    iget-object p1, p2, Lg/ka;->p:Lg/ka;

    const-string v0, "tips_click_view_button"

    invoke-static {p1, v0}, Lg/acw;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3b

    iget-object p1, p2, Lg/ka;->p:Lg/ka;

    const p2, 0x7f120280

    invoke-static {p1, p2}, Lg/gm;->c(Landroid/content/Context;I)V

    goto/16 :goto_f

    :cond_35
    const-string v1, "action_permissionResultReceiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v0, "permissionSeqID"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3b

    iget-object v2, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast v2, Lg/ka;

    iget-wide v2, v2, Lg/ka;->e:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_36

    goto :goto_f

    :cond_36
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/ka;

    invoke-static {v7, v6}, Lg/ka;->z(ZZ)Lg/he;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ka;->aa(Lg/he;)V

    goto :goto_f

    :cond_37
    invoke-static {p1}, Lg/fyt;->f(Landroid/content/Context;)V

    goto :goto_f

    :cond_38
    const-string v1, "c.t.d.l.v.e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/ka;

    invoke-virtual {p1}, Lg/ka;->ab()V

    iget-object p2, p1, Lg/ka;->p:Lg/ka;

    new-instance v0, Lg/dyy;

    invoke-direct {v0, p2}, Lg/dyy;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x7545

    iget-object v0, v0, Lg/dyy;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_f

    :cond_39
    const-string v1, "c.t.d.s.c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "auto_hide_changed"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3b

    const-string p2, "layout_inspector_ow_auto_hide"

    invoke-static {p1, p2, v6}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/ka;

    iget-object p1, p1, Lg/ka;->l:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->c()V

    goto :goto_f

    :cond_3a
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/ka;

    iget-object p1, p1, Lg/ka;->l:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->b()V

    :cond_3b
    :goto_f
    return-void

    :pswitch_14
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/fc;

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3c

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_3c
    move-object v0, v5

    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_12

    :cond_3d
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, p1, Lg/fc;->c:I

    packed-switch v1, :pswitch_data_2

    iget-object v1, p1, Lg/fc;->e:Ljava/lang/Object;

    check-cast v1, Lg/haz;

    new-instance v3, Lg/ffr;

    invoke-direct {v3, v4, p1, v0, v7}, Lg/ffr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-boolean v6, v1, Lg/haz;->w:Z

    invoke-virtual {v1, v5, v5, v3}, Lg/haz;->ad(Lg/bsx;Lg/byq;Lg/bwb;)V

    goto :goto_11

    :pswitch_15
    iget-object v1, p1, Lg/fc;->e:Ljava/lang/Object;

    check-cast v1, Lg/fzn;

    invoke-virtual {v1}, Lg/fzn;->r()V

    :cond_3e
    :goto_11
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    iget p2, p1, Lg/fc;->c:I

    packed-switch p2, :pswitch_data_3

    iget-object p2, p1, Lg/fc;->e:Ljava/lang/Object;

    check-cast p2, Lg/haz;

    new-instance v1, Lg/akj;

    invoke-direct {v1, v2, p1, v0, v7}, Lg/akj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-boolean v6, p2, Lg/haz;->w:Z

    invoke-virtual {p2, v5, v5, v1}, Lg/haz;->ad(Lg/bsx;Lg/byq;Lg/bwb;)V

    goto :goto_12

    :pswitch_16
    iget-object p1, p1, Lg/fc;->e:Ljava/lang/Object;

    check-cast p1, Lg/fzn;

    invoke-virtual {p1}, Lg/fzn;->r()V

    :cond_3f
    :goto_12
    return-void

    :pswitch_17
    iget-object v0, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast v0, Lg/ctl;

    const-string v1, "state"

    if-nez p2, :cond_40

    goto :goto_13

    :cond_40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_13

    :cond_41
    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast p2, Lg/eqi;

    const/16 v0, 0xa

    invoke-virtual {p2, v0, p1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13

    :cond_42
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    const-string p2, "connectivity"

    sget-object v1, Lg/dxc;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    iget-object p2, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast p2, Lg/eqi;

    invoke-virtual {p2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_43
    :goto_13
    return-void

    :pswitch_18
    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/eil;

    invoke-virtual {p1, p2}, Lg/eil;->l(Landroid/content/Intent;)V

    return-void

    :pswitch_19
    iget-object p1, p0, Lg/sr;->c:Ljava/lang/Object;

    check-cast p1, Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->g()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_16
    .end packed-switch
.end method
