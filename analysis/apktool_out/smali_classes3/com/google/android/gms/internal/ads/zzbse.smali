.class public final Lcom/google/android/gms/internal/ads/zzbse;
.super Lcom/google/android/gms/internal/ads/zzbsk;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public c:Landroid/widget/ImageView;

.field public d:Lcom/google/android/gms/internal/ads/zzche;

.field public e:Z

.field public final f:Lcom/google/android/gms/internal/ads/zzcfk;

.field public g:I

.field public h:I

.field public i:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/LinearLayout;

.field public final k:Landroid/app/Activity;

.field public l:I

.field public m:I

.field public final n:Lcom/google/android/gms/internal/ads/zzbsl;

.field public o:Landroid/view/ViewGroup;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/glm;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lg/glm;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzbsl;)V
    .locals 2

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->l:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbse;->n:Lcom/google/android/gms/internal/ads/zzbsl;

    return-void
.end method


# virtual methods
.method public final s(Z)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkx:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzky:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbse;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkz:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->d:Lcom/google/android/gms/internal/ads/zzche;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaj(Lcom/google/android/gms/internal/ads/zzche;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to add webview back to view hierarchy."

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->d:Lcom/google/android/gms/internal/ads/zzche;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaj(Lcom/google/android/gms/internal/ads/zzche;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsk;->zzl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->n:Lcom/google/android/gms/internal/ads/zzbsl;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzb()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->j:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final zza(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkw:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsc;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbsc;-><init>(Lcom/google/android/gms/internal/ads/zzbse;Z)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzges;->zza(Ljava/lang/Runnable;)Lg/dcy;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbse;->s(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/util/Map;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Cannot show popup window: "

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbse;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    if-nez v4, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :cond_1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzche;->zzi()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :cond_2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaF()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :cond_3
    const-string v4, "width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->z:Lg/esy;

    const-string v4, "width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lg/esy;->n(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    :cond_4
    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->z:Lg/esy;

    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lg/esy;->n(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    :cond_5
    const-string v4, "offsetX"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->z:Lg/esy;

    const-string v4, "offsetX"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lg/esy;->n(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    :cond_6
    const-string v4, "offsetY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->z:Lg/esy;

    const-string v4, "offsetY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lg/esy;->n(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->l:I

    :cond_7
    const-string v4, "allowOffscreen"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "allowOffscreen"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->e:Z

    :cond_8
    const-string v4, "customClosePosition"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->p:Ljava/lang/String;

    :cond_9
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    if-ltz v0, :cond_2b

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    if-ltz v0, :cond_2b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_a

    goto/16 :goto_e

    :cond_a
    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->z:Lg/esy;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-static {v4}, Lg/esy;->ae(Landroid/app/Activity;)[I

    move-result-object v5

    sget-object v6, Lg/cbv;->a:Lg/cbv;

    iget-object v7, v6, Lg/cbv;->d:Lg/mx;

    const/4 v8, 0x0

    aget v9, v5, v8

    invoke-virtual {v7, v4, v9}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v7

    iget-object v9, v6, Lg/cbv;->d:Lg/mx;

    const/4 v10, 0x1

    aget v5, v5, v10

    invoke-virtual {v9, v4, v5}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v4

    filled-new-array {v7, v4}, [I

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-static {v5}, Lg/esy;->r(Landroid/app/Activity;)[I

    move-result-object v5

    aget v7, v4, v8

    aget v4, v4, v10

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v11, 0x32

    const/16 v16, 0x0

    if-lt v9, v11, :cond_b

    if-le v9, v7, :cond_c

    :cond_b
    const/16 v17, 0x0

    const/16 v18, 0x32

    goto/16 :goto_8

    :cond_c
    const/16 v17, 0x0

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    if-lt v8, v11, :cond_d

    if-le v8, v4, :cond_e

    :cond_d
    const/16 v18, 0x32

    goto/16 :goto_7

    :cond_e
    if-ne v8, v4, :cond_f

    if-ne v9, v7, :cond_f

    const-string v4, "Cannot resize to a full-screen ad."

    invoke-static {v4}, Lg/agd;->b(Ljava/lang/String;)V

    const/16 v18, 0x32

    goto/16 :goto_9

    :cond_f
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->e:Z

    if-eqz v4, :cond_18

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v18, :sswitch_data_0

    const/16 v18, 0x32

    goto :goto_0

    :sswitch_0
    const/16 v18, 0x32

    const-string v11, "top-center"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    const/16 v18, 0x32

    const-string v11, "bottom-center"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const/16 v18, 0x32

    const-string v11, "bottom-right"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_3
    const/16 v18, 0x32

    const-string v11, "bottom-left"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const/16 v18, 0x32

    const-string v11, "top-left"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_5
    const/16 v18, 0x32

    const-string v11, "center"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x2

    goto :goto_1

    :cond_10
    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_16

    if-eq v4, v10, :cond_15

    if-eq v4, v12, :cond_14

    if-eq v4, v13, :cond_13

    if-eq v4, v15, :cond_12

    if-eq v4, v14, :cond_11

    :try_start_1
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    add-int/2addr v4, v8

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    :goto_2
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->l:I

    add-int/2addr v8, v9

    goto :goto_4

    :cond_11
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    add-int/2addr v4, v11

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x32

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    :goto_3
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbse;->l:I

    add-int/2addr v9, v11

    add-int/2addr v9, v8

    add-int/lit8 v8, v9, -0x32

    goto :goto_4

    :cond_12
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    shr-int/2addr v9, v10

    add-int/2addr v4, v11

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x19

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    goto :goto_3

    :cond_13
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    add-int/2addr v4, v9

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    goto :goto_3

    :cond_14
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    shr-int/2addr v9, v10

    add-int/2addr v4, v11

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x19

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbse;->l:I

    add-int/2addr v9, v11

    shr-int/2addr v8, v10

    add-int/2addr v9, v8

    add-int/lit8 v8, v9, -0x19

    goto :goto_4

    :cond_15
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    shr-int/2addr v9, v10

    add-int/2addr v4, v8

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    goto :goto_2

    :cond_16
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    add-int/2addr v4, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    goto :goto_2

    :goto_4
    if-ltz v4, :cond_1d

    add-int/lit8 v4, v4, 0x32

    if-gt v4, v7, :cond_1d

    aget v4, v5, v17

    if-lt v8, v4, :cond_1d

    add-int/lit8 v8, v8, 0x32

    aget v4, v5, v10

    if-le v8, v4, :cond_17

    goto/16 :goto_9

    :cond_17
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->l:I

    add-int/2addr v5, v7

    filled-new-array {v4, v5}, [I

    move-result-object v16

    goto :goto_9

    :cond_18
    const/16 v18, 0x32

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-static {v4}, Lg/esy;->ae(Landroid/app/Activity;)[I

    move-result-object v5

    iget-object v7, v6, Lg/cbv;->d:Lg/mx;

    aget v8, v5, v17

    invoke-virtual {v7, v4, v8}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v6, Lg/cbv;->d:Lg/mx;

    aget v5, v5, v10

    invoke-virtual {v8, v4, v5}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v4

    filled-new-array {v7, v4}, [I

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-static {v5}, Lg/esy;->r(Landroid/app/Activity;)[I

    move-result-object v5

    aget v4, v4, v17

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->a:I

    add-int/2addr v7, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->l:I

    add-int/2addr v8, v9

    if-gez v7, :cond_19

    const/4 v4, 0x0

    goto :goto_5

    :cond_19
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    add-int v11, v7, v9

    if-le v11, v4, :cond_1a

    sub-int/2addr v4, v9

    goto :goto_5

    :cond_1a
    move v4, v7

    :goto_5
    aget v7, v5, v17

    if-ge v8, v7, :cond_1b

    move v8, v7

    goto :goto_6

    :cond_1b
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    add-int v9, v8, v7

    aget v5, v5, v10

    if-le v9, v5, :cond_1c

    sub-int v8, v5, v7

    :cond_1c
    :goto_6
    filled-new-array {v4, v8}, [I

    move-result-object v16

    goto :goto_9

    :goto_7
    const-string v4, "Height is too small or too large."

    invoke-static {v4}, Lg/agd;->b(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    const-string v4, "Width is too small or too large."

    invoke-static {v4}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_1d
    :goto_9
    if-nez v16, :cond_1e

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :cond_1e
    iget-object v4, v6, Lg/cbv;->d:Lg/mx;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    invoke-static {v4, v5}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    invoke-static {v5, v6}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_29

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_29

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    if-nez v7, :cond_1f

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    move-object v7, v6

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v7, v6

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    check-cast v6, Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->d:Lcom/google/android/gms/internal/ads/zzche;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_a

    :cond_1f
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_a
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v4, v5, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v10}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->e:Z

    xor-int/2addr v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v7, Landroid/view/View;

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->j:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    const/16 v9, 0x32

    invoke-static {v7, v9}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v7

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-static {v11, v9}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->p:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v9, :sswitch_data_1

    goto :goto_b

    :sswitch_6
    const-string v9, "top-center"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x1

    goto :goto_c

    :sswitch_7
    const-string v9, "bottom-center"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x4

    goto :goto_c

    :sswitch_8
    const-string v9, "bottom-right"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x5

    goto :goto_c

    :sswitch_9
    const-string v9, "bottom-left"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x3

    goto :goto_c

    :sswitch_a
    const-string v9, "top-left"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x0

    goto :goto_c

    :sswitch_b
    const-string v9, "center"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x2

    goto :goto_c

    :cond_20
    :goto_b
    const/4 v11, -0x1

    :goto_c
    const/16 v7, 0x9

    const/16 v8, 0xa

    if-eqz v11, :cond_26

    const/16 v9, 0xe

    if-eq v11, v10, :cond_25

    if-eq v11, v12, :cond_24

    const/16 v12, 0xc

    if-eq v11, v13, :cond_23

    if-eq v11, v15, :cond_22

    const/16 v7, 0xb

    if-eq v11, v14, :cond_21

    :try_start_2
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_d

    :cond_21
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_d

    :cond_22
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_d

    :cond_23
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_d

    :cond_24
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_d

    :cond_25
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_d

    :cond_26
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_d
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->j:Landroid/widget/LinearLayout;

    new-instance v8, Lg/get;

    const/16 v9, 0x10

    invoke-direct {v8, v9, v1}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->j:Landroid/widget/LinearLayout;

    const-string v8, "Close button"

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    const/4 v8, 0x0

    aget v9, v16, v8

    invoke-static {v7, v9}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v7

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    aget v11, v16, v10

    invoke-static {v9, v11}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v6, v0, v8, v7, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    aget v0, v16, v8

    aget v2, v16, v10

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbse;->n:Lcom/google/android/gms/internal/ads/zzbsl;

    if-eqz v6, :cond_27

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    invoke-interface {v6, v0, v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzbsl;->zza(IIII)V

    :cond_27
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzche;->zzb(II)Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaj(Lcom/google/android/gms/internal/ads/zzche;)V

    const/16 v17, 0x0

    aget v0, v16, v17

    aget v2, v16, v10

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->k:Landroid/app/Activity;

    invoke-static {v4}, Lg/esy;->r(Landroid/app/Activity;)[I

    move-result-object v4

    aget v4, v4, v17

    sub-int/2addr v2, v4

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbse;->m:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbse;->q:I

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbsk;->zzk(IIII)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzl(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->i:Landroid/widget/RelativeLayout;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbse;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->o:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbse;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbse;->d:Lcom/google/android/gms/internal/ads/zzche;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaj(Lcom/google/android/gms/internal/ads/zzche;)V

    :cond_28
    monitor-exit v3

    return-void

    :cond_29
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :cond_2a
    :goto_e
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :cond_2b
    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :goto_f
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final zzd(IIZ)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbse;->b:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->g:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbse;->h:I

    return-void
.end method

.method public final zzf()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbse;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
