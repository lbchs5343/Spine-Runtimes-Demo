.class public final Lg/ctl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Z

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/cp;Landroid/os/Handler;Lg/evf;Lg/fnq;Lg/yk;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/eed;

    const-string v1, "Picasso-Dispatcher"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lg/dxc;->a:Ljava/lang/StringBuilder;

    new-instance v2, Lg/dae;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lg/dae;-><init>(Landroid/os/Looper;IZ)V

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-object p1, p0, Lg/ctl;->j:Ljava/lang/Object;

    iput-object p2, p0, Lg/ctl;->l:Ljava/lang/Object;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lg/ctl;->e:Ljava/lang/Object;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lg/ctl;->g:Ljava/lang/Object;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lg/ctl;->m:Ljava/lang/Object;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lg/ctl;->a:Ljava/lang/Object;

    new-instance p2, Lg/eqi;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0, v4}, Lg/eqi;-><init>(Landroid/os/Looper;Ljava/lang/Object;I)V

    iput-object p2, p0, Lg/ctl;->i:Ljava/lang/Object;

    iput-object p4, p0, Lg/ctl;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/ctl;->k:Ljava/lang/Object;

    iput-object p5, p0, Lg/ctl;->b:Ljava/lang/Object;

    iput-object p6, p0, Lg/ctl;->d:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lg/ctl;->h:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    :try_start_0
    const-string p3, "airplane_mode_on"

    invoke-static {p2, p3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lg/ctl;->f:Z

    new-instance p1, Lg/sr;

    invoke-direct {p1, p0, v3, v4}, Lg/sr;-><init>(Ljava/lang/Object;IZ)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p1, Lg/sr;->c:Ljava/lang/Object;

    check-cast p3, Lg/ctl;

    iget-boolean p4, p3, Lg/ctl;->f:Z

    if-eqz p4, :cond_1

    const-string p4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object p3, p3, Lg/ctl;->j:Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lg/cgp;)V
    .locals 2

    sget-object v0, Lg/ao;->af:Lg/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    iput-object v1, p0, Lg/ctl;->j:Ljava/lang/Object;

    new-instance v1, Lg/hl;

    invoke-direct {v1}, Lg/hl;-><init>()V

    iput-object v1, p0, Lg/ctl;->c:Ljava/lang/Object;

    new-instance v1, Lg/cza;

    invoke-direct {v1, p0}, Lg/cza;-><init>(Lg/ctl;)V

    iput-object v1, p0, Lg/ctl;->e:Ljava/lang/Object;

    iput-object p1, p0, Lg/ctl;->h:Ljava/lang/Object;

    iput-object v0, p0, Lg/ctl;->l:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/ctl;->k:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public static n(Landroid/content/Context;[Lg/gin;)Lg/eno;
    .locals 21

    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Lg/gin;->c:Lg/gin;

    invoke-virtual {v4, v5}, Lg/gin;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Lg/eno;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v6, "invalid"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v5 .. v20}, Lg/eno;-><init>(Ljava/lang/String;IIZII[Lg/eno;ZZZZZZZZ)V

    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/eno;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v0}, Lg/eno;-><init>(Landroid/content/Context;[Lg/gin;)V

    iput-boolean v2, v1, Lg/eno;->zzj:Z

    return-object v1
.end method


# virtual methods
.method public varargs o([Lg/gin;)V
    .locals 3

    iget-object v0, p0, Lg/ctl;->h:Ljava/lang/Object;

    check-cast v0, Lg/cgp;

    iput-object p1, p0, Lg/ctl;->a:Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast p1, Lg/deq;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v2, [Lg/gin;

    invoke-static {v1, v2}, Lg/ctl;->n(Landroid/content/Context;[Lg/gin;)Lg/eno;

    move-result-object v1

    invoke-interface {p1, v1}, Lg/deq;->zzF(Lg/eno;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public p(Lg/fgs;Z)V
    .locals 13

    iget-object v0, p0, Lg/ctl;->l:Ljava/lang/Object;

    check-cast v0, Lg/cp;

    iget-object v1, p0, Lg/ctl;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    iget-object v3, p1, Lg/fgs;->b:Lg/fgs;

    iget-object v4, p1, Lg/fgs;->e:Lg/fpu;

    iget-object v5, p1, Lg/fgs;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p2, p0, Lg/ctl;->m:Ljava/lang/Object;

    check-cast p2, Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/awa;

    if-eqz v2, :cond_4

    iget-object p2, v2, Lg/awa;->r:Lg/akf;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v2, Lg/awa;->i:Lg/fgs;

    if-nez p2, :cond_1

    iput-object p1, v2, Lg/awa;->i:Lg/fgs;

    return-void

    :cond_1
    iget-object p2, v2, Lg/awa;->l:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, v2, Lg/awa;->l:Ljava/util/ArrayList;

    :cond_2
    iget-object p2, v2, Lg/awa;->l:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v4, Lg/fpu;->c:Lg/je;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v0, v2, Lg/awa;->o:Lg/je;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-le p2, v0, :cond_3

    iput-object p1, v2, Lg/awa;->o:Lg/je;

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-object v7, p1, Lg/fgs;->c:Lg/akf;

    iget-object v2, p0, Lg/ctl;->b:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lg/fnq;

    iget-object v2, p0, Lg/ctl;->d:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lg/yk;

    sget-object v2, Lg/awa;->d:Ljava/lang/Object;

    iget-object v2, v7, Lg/akf;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lg/gsp;

    invoke-virtual {v12, v4}, Lg/gsp;->d(Lg/fpu;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v6, Lg/awa;

    move-object v8, p0

    move-object v11, p1

    invoke-direct/range {v6 .. v12}, Lg/awa;-><init>(Lg/akf;Lg/ctl;Lg/fnq;Lg/yk;Lg/fgs;Lg/gsp;)V

    goto :goto_1

    :cond_6
    move-object v11, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    move-object v11, p1

    new-instance v6, Lg/awa;

    sget-object v12, Lg/awa;->b:Lg/boc;

    move-object v8, p0

    invoke-direct/range {v6 .. v12}, Lg/awa;-><init>(Lg/akf;Lg/ctl;Lg/fnq;Lg/yk;Lg/fgs;Lg/gsp;)V

    :goto_1
    invoke-virtual {v0, v6}, Lg/cp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, v6, Lg/awa;->u:Ljava/util/concurrent/Future;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8

    iget-object p1, v8, Lg/ctl;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/WeakHashMap;

    invoke-virtual {v11}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public q(Lg/awa;)V
    .locals 3

    iget-object v0, p0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    iget-object v1, p1, Lg/awa;->u:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lg/awa;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_1
    iget-object v1, p0, Lg/ctl;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public r(Lg/qo;)V
    .locals 12

    const-string v1, "#007 Could not call remote method."

    iget-object v0, p0, Lg/ctl;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/cgp;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-nez v0, :cond_7

    iget-object v0, p0, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v0, [Lg/gin;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/ctl;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v0, p0, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v0, [Lg/gin;

    invoke-static {v7, v0}, Lg/ctl;->n(Landroid/content/Context;[Lg/gin;)Lg/eno;

    move-result-object v8

    const-string v0, "search_v2"

    iget-object v5, v8, Lg/eno;->zza:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->e:Lg/ph;

    iget-object v5, p0, Lg/ctl;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lg/hbn;

    invoke-direct {v6, v0, v7, v8, v5}, Lg/hbn;-><init>(Lg/ph;Landroid/content/Context;Lg/eno;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v11}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/deq;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v6, v0, Lg/cbv;->e:Lg/ph;

    iget-object v0, p0, Lg/ctl;->d:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, p0, Lg/ctl;->j:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzbpc;

    new-instance v5, Lg/gnr;

    invoke-direct/range {v5 .. v10}, Lg/gnr;-><init>(Lg/ph;Landroid/content/Context;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;)V

    invoke-virtual {v5, v7, v11}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/deq;

    :goto_0
    iput-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    new-instance v5, Lg/fnu;

    iget-object v6, p0, Lg/ctl;->e:Ljava/lang/Object;

    check-cast v6, Lg/cza;

    invoke-direct {v5, v6}, Lg/fnu;-><init>(Lg/nl;)V

    invoke-interface {v0, v5}, Lg/deq;->zzD(Lg/ejp;)V

    iget-object v0, p0, Lg/ctl;->g:Ljava/lang/Object;

    check-cast v0, Lg/evo;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v5, Lg/deq;

    new-instance v6, Lg/bqy;

    invoke-direct {v6, v0}, Lg/bqy;-><init>(Lg/evo;)V

    invoke-interface {v5, v6}, Lg/deq;->zzC(Lg/dyo;)V

    :cond_1
    iget-object v0, p0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eus;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v5, Lg/deq;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaza;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzaza;-><init>(Lg/eus;)V

    invoke-interface {v5, v6}, Lg/deq;->zzG(Lg/fbj;)V

    :cond_2
    iget-object v0, p0, Lg/ctl;->b:Ljava/lang/Object;

    check-cast v0, Lg/cxt;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v5, Lg/deq;

    new-instance v6, Lg/cpm;

    invoke-direct {v6, v0}, Lg/cpm;-><init>(Lg/cxt;)V

    invoke-interface {v5, v6}, Lg/deq;->zzU(Lg/cpm;)V

    :cond_3
    iget-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    new-instance v5, Lg/bmt;

    invoke-direct {v5}, Lg/bmt;-><init>()V

    invoke-interface {v0, v5}, Lg/deq;->zzP(Lg/gwt;)V

    iget-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    iget-boolean v5, p0, Lg/ctl;->f:Z

    invoke-interface {v0, v5}, Lg/deq;->zzN(Z)V

    iget-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v0}, Lg/deq;->zzn()Lg/bjq;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbel;->zzf:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzkP:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v6, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lg/mx;->e:Lcom/google/android/gms/internal/ads/zzftd;

    new-instance v6, Lg/efr;

    const/16 v7, 0x1d

    const/4 v8, 0x0

    invoke-direct {v6, v7, p0, v0, v8}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    iput-wide v3, p1, Lg/qo;->h:J

    :cond_8
    iget-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lg/ctl;->l:Ljava/lang/Object;

    check-cast v3, Lg/ao;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/deq;->zzab(Lg/aeh;)Z

    return-void

    :cond_9
    const/4 p1, 0x0

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-static {v1, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public s(Lg/eus;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lg/ctl;->i:Ljava/lang/Object;

    iget-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaza;-><init>(Lg/eus;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lg/deq;->zzG(Lg/fbj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public t(Lg/awa;)V
    .locals 2

    iget-object v0, p0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public u(Lg/awa;Z)V
    .locals 1

    iget-object p2, p1, Lg/awa;->r:Lg/akf;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lg/ctl;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashMap;

    iget-object v0, p1, Lg/awa;->v:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lg/ctl;->q(Lg/awa;)V

    return-void
.end method

.method public v(Lg/evo;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lg/ctl;->g:Ljava/lang/Object;

    iget-object v0, p0, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Lg/deq;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lg/bqy;

    invoke-direct {v1, p1}, Lg/bqy;-><init>(Lg/evo;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lg/deq;->zzC(Lg/dyo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
