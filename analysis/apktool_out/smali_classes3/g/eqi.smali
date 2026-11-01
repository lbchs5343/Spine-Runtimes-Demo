.class public final Lg/eqi;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lg/eqi;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, Lg/eqi;->a:I

    iput-object p1, p0, Lg/eqi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lg/eqi;->a:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lg/eqi;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Lg/eqi;->a:I

    iput-object p1, p0, Lg/eqi;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final c(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object p1, p0, Lg/eqi;->b:Ljava/lang/Object;

    check-cast p1, Lg/fzn;

    :cond_1
    iget-object v0, p1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-array v2, v1, [Lg/fdy;

    iget-object v3, p1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    iget-object v5, v4, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    iget-object v7, v4, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/dhg;

    iget-boolean v8, v7, Lg/dhg;->a:Z

    if-nez v8, :cond_3

    iget-object v7, v7, Lg/dhg;->c:Landroid/content/BroadcastReceiver;

    iget-object v8, p1, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v9, v4, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lg/eqi;->a:I

    const/16 v3, 0xd

    const v4, 0x7f1200bd

    const v5, 0x7f1203f3

    const v6, 0x7f1203a4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const v9, 0x7f1203f0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v2, Lg/bgy;

    iget v3, v0, Landroid/os/Message;->what:I

    if-eq v3, v13, :cond_3

    if-eq v3, v11, :cond_2

    if-eq v3, v10, :cond_1

    if-eq v3, v7, :cond_0

    iget-object v2, v2, Lg/bgy;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/lang/IllegalStateException;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v8, v3}, Lcom/google/android/gms/internal/ads/zzry;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    :try_start_0
    iget-object v3, v2, Lg/bgy;->i:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v2, Lg/bgy;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v8, v0}, Lcom/google/android/gms/internal/ads/zzry;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lg/bgy;->h:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zze()Z

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/cte;

    iget v10, v3, Lg/cte;->c:I

    iget-object v12, v3, Lg/cte;->e:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v13, v3, Lg/cte;->a:J

    iget v15, v3, Lg/cte;->b:I

    :try_start_1
    sget-object v4, Lg/bgy;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v9, v2, Lg/bgy;->i:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    iget-object v2, v2, Lg/bgy;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v8, v0}, Lcom/google/android/gms/internal/ads/zzry;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/cte;

    iget v10, v3, Lg/cte;->c:I

    iget v12, v3, Lg/cte;->d:I

    iget-wide v13, v3, Lg/cte;->a:J

    iget v15, v3, Lg/cte;->b:I

    :try_start_4
    iget-object v9, v2, Lg/bgy;->i:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, v2, Lg/bgy;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v8, v0}, Lcom/google/android/gms/internal/ads/zzry;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    if-eqz v8, :cond_4

    sget-object v2, Lg/bgy;->b:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_5
    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v2, Lg/cpx;

    iget-object v2, v2, Lg/cpx;->f:Ljava/util/HashSet;

    iget v0, v0, Landroid/os/Message;->what:I

    if-eq v0, v13, :cond_6

    if-eq v0, v11, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_7
    :goto_5
    return-void

    :pswitch_1
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lg/gk;

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, v0, Landroid/os/Message;->what:I

    if-eq v2, v13, :cond_9

    if-eq v2, v11, :cond_8

    goto :goto_7

    :cond_8
    iget-object v0, v15, Lg/gk;->j:Landroid/content/Context;

    invoke-static {v0, v9}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_7

    :cond_9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v14

    invoke-static {v15, v0}, Lg/dov;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v19}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v15, Lg/gk;->j:Landroid/content/Context;

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v12

    invoke-static {v2, v6, v3}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    iget-object v2, v15, Lg/gk;->j:Landroid/content/Context;

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v12

    invoke-static {v2, v5, v3}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_6
    iget-object v0, v15, Lg/gk;->j:Landroid/content/Context;

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lg/fnp;->g(Landroid/content/Context;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_2
    :try_start_6
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_8
    return-void

    :pswitch_3
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v2, Lg/yk;

    iget v3, v0, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_f

    if-eq v3, v13, :cond_e

    if-eq v3, v11, :cond_d

    if-eq v3, v10, :cond_c

    if-eq v3, v7, :cond_b

    sget-object v2, Lg/akf;->a:Lg/dae;

    new-instance v3, Lg/eea;

    invoke-direct {v3, v0, v13}, Lg/eea;-><init>(Landroid/os/Message;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget v3, v2, Lg/yk;->b:I

    add-int/2addr v3, v13

    iput v3, v2, Lg/yk;->b:I

    iget-wide v3, v2, Lg/yk;->e:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v2, Lg/yk;->e:J

    iget v0, v2, Lg/yk;->b:I

    int-to-long v3, v0

    div-long/2addr v5, v3

    iput-wide v5, v2, Lg/yk;->a:J

    goto :goto_9

    :cond_c
    iget v0, v0, Landroid/os/Message;->arg1:I

    int-to-long v3, v0

    iget v0, v2, Lg/yk;->h:I

    add-int/2addr v0, v13

    iput v0, v2, Lg/yk;->h:I

    iget-wide v5, v2, Lg/yk;->m:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lg/yk;->m:J

    iget v0, v2, Lg/yk;->d:I

    int-to-long v3, v0

    div-long/2addr v5, v3

    iput-wide v5, v2, Lg/yk;->k:J

    goto :goto_9

    :cond_d
    iget v0, v0, Landroid/os/Message;->arg1:I

    int-to-long v3, v0

    iget v0, v2, Lg/yk;->d:I

    add-int/2addr v0, v13

    iput v0, v2, Lg/yk;->d:I

    iget-wide v5, v2, Lg/yk;->g:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lg/yk;->g:J

    int-to-long v3, v0

    div-long/2addr v5, v3

    iput-wide v5, v2, Lg/yk;->i:J

    goto :goto_9

    :cond_e
    iget-wide v6, v2, Lg/yk;->c:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Lg/yk;->c:J

    goto :goto_9

    :cond_f
    iget-wide v6, v2, Lg/yk;->l:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Lg/yk;->l:J

    :goto_9
    return-void

    :pswitch_4
    const-string v2, "so"

    const-string v4, ""

    iget-object v5, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v5, Lb/c/d;

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v6, v0, Landroid/os/Message;->what:I

    const v7, 0x7f1203a1

    const/4 v8, -0x2

    const v14, 0x7f1203f6

    const v15, 0x7f09030f

    if-eq v6, v11, :cond_14

    if-eq v6, v10, :cond_13

    const/16 v10, 0xc

    if-eq v6, v10, :cond_11

    if-eq v6, v3, :cond_10

    goto/16 :goto_c

    :cond_10
    invoke-virtual {v5}, Lb/c/d;->af()V

    iget-object v0, v5, Lb/c/d;->u:Lb/c/d;

    invoke-static {v0, v9}, Lg/gm;->f(Landroid/content/Context;I)V

    goto/16 :goto_c

    :cond_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lb/c/d;->af()V

    invoke-virtual {v5, v15}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, v5, Lb/c/d;->i:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_a

    :cond_12
    iget-object v4, v5, Lb/c/d;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lb/c/d;->u:Lb/c/d;

    invoke-static {v9}, Lg/acw;->bk(Lg/cms;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v6, v9, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v12

    aput-object v2, v6, v13

    invoke-virtual {v5, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lg/eon;

    invoke-direct {v4, v5, v0, v13}, Lg/eon;-><init>(Lb/c/d;Ljava/lang/String;I)V

    invoke-static {v3, v2, v8, v7, v4}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    move-result-object v0

    iput-object v0, v5, Lb/c/d;->h:Lg/sd;

    goto :goto_c

    :cond_13
    invoke-virtual {v5}, Lb/c/d;->al()V

    iget-object v0, v5, Lb/c/d;->u:Lb/c/d;

    invoke-static {v0, v9}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_c

    :cond_14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lb/c/d;->al()V

    invoke-virtual {v5, v15}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, v5, Lb/c/d;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_b

    :cond_15
    iget-object v4, v5, Lb/c/d;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lb/c/d;->u:Lb/c/d;

    invoke-static {v9}, Lg/acw;->bk(Lg/cms;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v6, v9, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v12

    aput-object v2, v6, v13

    invoke-virtual {v5, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lg/eon;

    invoke-direct {v4, v5, v0, v12}, Lg/eon;-><init>(Lb/c/d;Ljava/lang/String;I)V

    invoke-static {v3, v2, v8, v7, v4}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    move-result-object v0

    iput-object v0, v5, Lb/c/d;->h:Lg/sd;

    :goto_c
    return-void

    :pswitch_5
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v2, Lg/doq;

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v3, v0, Landroid/os/Message;->what:I

    const v4, 0x7f120209

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_11

    :pswitch_6
    iget-object v3, v2, Lg/efx;->bb:Lg/efx;

    iget-object v5, v2, Lg/doq;->af:Lg/cgg;

    sget-object v6, Lg/cro;->q:Lg/cuf;

    if-eqz v6, :cond_20

    invoke-virtual {v5}, Lg/cgg;->getMode()I

    move-result v6

    if-ne v6, v13, :cond_19

    invoke-static {v3, v5}, Lg/cux;->au(Landroid/content/Context;Lg/cgg;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v5}, Lg/cgg;->isMultiProcess()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v5}, Lg/cgg;->getCode()I

    move-result v5

    invoke-static {v5}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v12, v5}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v5

    goto :goto_d

    :cond_16
    invoke-virtual {v5}, Lg/cgg;->getCode()I

    move-result v5

    invoke-static {v5}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v12, v5}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v5

    :goto_d
    invoke-static {v3}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v6

    invoke-virtual {v6}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v6

    if-eqz v6, :cond_17

    iget v12, v6, Lg/fxe$a;->mTC:I

    :cond_17
    if-ge v5, v12, :cond_18

    goto :goto_e

    :cond_18
    invoke-static {v3, v4}, Lg/gm;->c(Landroid/content/Context;I)V

    goto/16 :goto_11

    :cond_19
    :goto_e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    invoke-virtual {v2, v0}, Lg/doq;->z(Lg/auj;)V

    goto/16 :goto_11

    :pswitch_7
    iget-object v3, v2, Lg/efx;->bb:Lg/efx;

    iget-object v5, v2, Lg/doq;->af:Lg/cgg;

    sget-object v6, Lg/cro;->q:Lg/cuf;

    if-eqz v6, :cond_20

    invoke-virtual {v5}, Lg/cgg;->getMode()I

    move-result v6

    if-ne v6, v13, :cond_1d

    invoke-static {v3, v5}, Lg/cux;->au(Landroid/content/Context;Lg/cgg;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v5}, Lg/cgg;->isMultiProcess()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v5}, Lg/cgg;->getCode()I

    move-result v5

    invoke-static {v5}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v12, v5}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v5

    goto :goto_f

    :cond_1a
    invoke-virtual {v5}, Lg/cgg;->getCode()I

    move-result v5

    invoke-static {v5}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v12, v5}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v5

    :goto_f
    invoke-static {v3}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v6

    invoke-virtual {v6}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v6

    if-eqz v6, :cond_1b

    iget v12, v6, Lg/fxe$a;->mTC:I

    :cond_1b
    if-ge v5, v12, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-static {v3, v4}, Lg/gm;->c(Landroid/content/Context;I)V

    goto :goto_11

    :cond_1d
    :goto_10
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    invoke-virtual {v2}, Lg/doq;->q()V

    goto :goto_11

    :pswitch_8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lg/doq;->w(Ljava/lang/Object;)V

    goto :goto_11

    :pswitch_9
    invoke-virtual {v2}, Lg/doq;->x()V

    iget-object v0, v2, Lg/efx;->bb:Lg/efx;

    invoke-virtual {v2}, Lg/doq;->ab()Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v12

    const v2, 0x7f1203f4

    invoke-static {v0, v2, v3}, Lg/gm;->j(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_11

    :pswitch_a
    invoke-virtual {v2}, Lg/doq;->x()V

    iget-object v0, v2, Lg/efx;->bb:Lg/efx;

    invoke-static {v0, v9}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_11

    :pswitch_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lg/doq;->aa(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    iput-object v0, v2, Lg/doq;->ae:Lg/auj;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lg/auj;->h:Ljava/lang/String;

    invoke-static {v0}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v2}, Lg/doq;->t()V

    goto :goto_11

    :cond_1e
    iget-object v0, v2, Lg/efx;->bb:Lg/efx;

    iget-object v3, v2, Lg/doq;->af:Lg/cgg;

    invoke-static {v0, v3}, Lg/cro;->ba(Lg/dms;Lg/cgg;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_11

    :cond_1f
    invoke-virtual {v2}, Lg/doq;->_a()V

    :cond_20
    :goto_11
    return-void

    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lg/eqi;->c(Landroid/os/Message;)V

    return-void

    :pswitch_e
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lg/ka;

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, v0, Landroid/os/Message;->what:I

    if-eq v2, v13, :cond_22

    if-eq v2, v11, :cond_21

    goto :goto_13

    :cond_21
    iget-object v0, v15, Lg/ka;->p:Lg/ka;

    invoke-static {v0, v9}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_13

    :cond_22
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v14

    invoke-static {v15, v0}, Lg/dov;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v19}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v15, Lg/ka;->p:Lg/ka;

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v12

    invoke-static {v2, v6, v3}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_12

    :cond_23
    iget-object v2, v15, Lg/ka;->p:Lg/ka;

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v12

    invoke-static {v2, v5, v3}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_12
    iget-object v0, v15, Lg/ka;->p:Lg/ka;

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lg/fnp;->g(Landroid/content/Context;Ljava/lang/String;)V

    :goto_13
    return-void

    :pswitch_f
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v2, Lg/atk;

    const-string v3, "msg"

    invoke-static {v0, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, v0, Landroid/os/Message;->what:I

    sget v3, Lg/atk;->d:I

    if-ne v0, v13, :cond_2a

    iget-object v0, v2, Lg/atk;->y:Landroid/view/Menu;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_24
    if-eqz v8, :cond_26

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_26

    const/4 v4, 0x0

    :goto_14
    if-eqz v0, :cond_25

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-interface {v5, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_25
    if-eq v4, v3, :cond_26

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_26
    iget-object v0, v2, Lg/atk;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v2, Lg/atk;->y:Landroid/view/Menu;

    if-eqz v0, :cond_28

    const v3, 0x7f0900ac

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v3, v2, Lg/atk;->s:Lg/hbj;

    if-eqz v3, :cond_27

    iget-boolean v3, v3, Lg/hbj;->i:Z

    if-ne v3, v13, :cond_27

    goto :goto_15

    :cond_27
    const/4 v13, 0x0

    :goto_15
    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_28
    iget-object v3, v2, Lg/atk;->e:La/a/ab;

    if-eqz v3, :cond_29

    iget-object v5, v2, Lg/atk;->z:Ljava/lang/String;

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iput-boolean v12, v2, Lg/atk;->i:Z

    goto/16 :goto_19

    :cond_2a
    if-ne v0, v11, :cond_36

    iput-boolean v12, v2, Lg/atk;->i:Z

    iget-object v0, v2, Lg/atk;->e:La/a/ab;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lg/gc;->hideLoadingProgress()V

    :cond_2b
    iget-object v0, v2, Lg/atk;->p:Lg/coz;

    if-eqz v0, :cond_2c

    iget-object v3, v0, Lg/coz;->reason:Ljava/lang/String;

    goto :goto_16

    :cond_2c
    move-object v3, v8

    :goto_16
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2292d42e

    if-eq v4, v5, :cond_31

    const v5, 0x2e06d1

    if-eq v4, v5, :cond_2f

    const v5, 0x6891b1a

    if-eq v4, v5, :cond_2d

    goto :goto_17

    :cond_2d
    const-string v4, "split"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_17

    :cond_2e
    const v3, 0x7f1202d5

    goto :goto_18

    :cond_2f
    const-string v4, "base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_17

    :cond_30
    const v3, 0x7f1202d2

    goto :goto_18

    :cond_31
    const-string v4, "conflict"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_17

    :cond_32
    const v3, 0x7f1202d3

    goto :goto_18

    :cond_33
    :goto_17
    const v3, 0x7f1202d4

    :goto_18
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1202da

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v0, :cond_34

    iget-object v0, v0, Lg/coz;->source:Ljava/lang/String;

    if-nez v0, :cond_35

    :cond_34
    iget-object v0, v2, Lg/atk;->f:Ljava/lang/String;

    :cond_35
    new-array v5, v13, [Ljava/lang/Object;

    aput-object v0, v5, v12

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_36
    :goto_19
    return-void

    :pswitch_10
    iget-object v2, v1, Lg/eqi;->b:Ljava/lang/Object;

    check-cast v2, Lg/ctl;

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_2

    :pswitch_11
    sget-object v2, Lg/akf;->a:Lg/dae;

    new-instance v3, Lg/eea;

    invoke-direct {v3, v0, v12}, Lg/eea;-><init>(Landroid/os/Message;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_26

    :pswitch_12
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v2, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto/16 :goto_26

    :cond_37
    iget-object v4, v2, Lg/ctl;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_38
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fgs;

    iget-object v6, v5, Lg/fgs;->b:Lg/fgs;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    if-nez v8, :cond_39

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_39
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    :cond_3a
    if-eqz v8, :cond_56

    iget-object v0, v2, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_26

    :pswitch_13
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, v2, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    iget-object v4, v2, Lg/ctl;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/WeakHashMap;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_26

    :cond_3b
    iget-object v2, v2, Lg/ctl;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/awa;

    iget-object v5, v3, Lg/awa;->r:Lg/akf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lg/awa;->i:Lg/fgs;

    iget-object v6, v3, Lg/awa;->l:Ljava/util/ArrayList;

    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3d

    const/4 v7, 0x1

    goto :goto_1c

    :cond_3d
    const/4 v7, 0x0

    :goto_1c
    if-nez v5, :cond_3e

    if-nez v7, :cond_3e

    goto :goto_1b

    :cond_3e
    if-eqz v5, :cond_3f

    iget-object v8, v5, Lg/fgs;->b:Lg/fgs;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-virtual {v3, v5}, Lg/awa;->aa(Lg/fgs;)V

    invoke-virtual {v5}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    if-eqz v7, :cond_41

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v13

    :goto_1d
    if-ltz v5, :cond_41

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fgs;

    iget-object v8, v7, Lg/fgs;->b:Lg/fgs;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_1e

    :cond_40
    invoke-virtual {v3, v7}, Lg/awa;->aa(Lg/fgs;)V

    invoke-virtual {v7}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    :cond_41
    invoke-virtual {v3}, Lg/awa;->z()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    :pswitch_14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_26

    :pswitch_15
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v3, v2, Lg/ctl;->l:Ljava/lang/Object;

    check-cast v3, Lg/cp;

    iget-object v4, v2, Lg/ctl;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/WeakHashMap;

    invoke-static {v3}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    if-eqz v0, :cond_45

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_1f

    :cond_42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eqz v5, :cond_44

    if-eq v5, v13, :cond_43

    const/4 v6, 0x6

    if-eq v5, v6, :cond_43

    const/16 v6, 0x9

    if-eq v5, v6, :cond_43

    invoke-virtual {v3, v10}, Lg/cp;->a(I)V

    goto :goto_20

    :cond_43
    invoke-virtual {v3, v7}, Lg/cp;->a(I)V

    goto :goto_20

    :cond_44
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    packed-switch v5, :pswitch_data_4

    invoke-virtual {v3, v10}, Lg/cp;->a(I)V

    goto :goto_20

    :pswitch_16
    invoke-virtual {v3, v10}, Lg/cp;->a(I)V

    goto :goto_20

    :pswitch_17
    invoke-virtual {v3, v11}, Lg/cp;->a(I)V

    goto :goto_20

    :pswitch_18
    invoke-virtual {v3, v13}, Lg/cp;->a(I)V

    goto :goto_20

    :cond_45
    :goto_1f
    invoke-virtual {v3, v10}, Lg/cp;->a(I)V

    :cond_46
    :goto_20
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fgs;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v4, v3, Lg/fgs;->c:Lg/akf;

    invoke-virtual {v2, v3, v12}, Lg/ctl;->p(Lg/fgs;Z)V

    goto :goto_21

    :pswitch_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lg/ctl;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lg/ctl;->k:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    goto/16 :goto_26

    :cond_47
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/awa;

    iget-object v0, v0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_26

    :pswitch_1a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/awa;

    invoke-virtual {v2, v0, v12}, Lg/ctl;->u(Lg/awa;Z)V

    goto/16 :goto_26

    :pswitch_1b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/awa;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lg/ctl;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/WeakHashMap;

    iget-boolean v4, v2, Lg/ctl;->f:Z

    iget-object v5, v2, Lg/ctl;->l:Ljava/lang/Object;

    check-cast v5, Lg/cp;

    iget-object v6, v0, Lg/awa;->u:Ljava/util/concurrent/Future;

    iget-object v7, v0, Lg/awa;->q:Lg/gsp;

    if-eqz v6, :cond_48

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_48

    goto/16 :goto_26

    :cond_48
    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-virtual {v2, v0, v12}, Lg/ctl;->u(Lg/awa;Z)V

    goto/16 :goto_26

    :cond_49
    if-eqz v4, :cond_4a

    iget-object v6, v2, Lg/ctl;->j:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    const-string v8, "connectivity"

    sget-object v9, Lg/dxc;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    :cond_4a
    iget v6, v0, Lg/awa;->t:I

    if-lez v6, :cond_4b

    sub-int/2addr v6, v13

    iput v6, v0, Lg/awa;->t:I

    invoke-virtual {v7, v8}, Lg/gsp;->c(Landroid/net/NetworkInfo;)Z

    move-result v6

    goto :goto_22

    :cond_4b
    const/4 v6, 0x0

    :goto_22
    if-eqz v6, :cond_4d

    iget-object v2, v0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg/awa;->h:Ljava/lang/Exception;

    instance-of v2, v2, Lg/clp;

    if-eqz v2, :cond_4c

    iget v2, v0, Lg/awa;->e:I

    sget-object v3, Lg/sy;->NO_CACHE:Lg/sy;

    iget v3, v3, Lg/sy;->index:I

    or-int/2addr v2, v3

    iput v2, v0, Lg/awa;->e:I

    :cond_4c
    invoke-virtual {v5, v0}, Lg/cp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lg/awa;->u:Ljava/util/concurrent/Future;

    goto/16 :goto_26

    :cond_4d
    if-eqz v4, :cond_4e

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v7, Lg/dam;

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    goto :goto_23

    :cond_4e
    const/4 v4, 0x0

    :goto_23
    invoke-virtual {v2, v0, v4}, Lg/ctl;->u(Lg/awa;Z)V

    if-eqz v4, :cond_56

    iget-object v2, v0, Lg/awa;->i:Lg/fgs;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4f

    iput-boolean v13, v2, Lg/fgs;->d:Z

    invoke-virtual {v3, v4, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    iget-object v0, v0, Lg/awa;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_24
    if-ge v12, v2, :cond_56

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fgs;

    invoke-virtual {v4}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_50

    iput-boolean v13, v4, Lg/fgs;->d:Z

    invoke-virtual {v3, v5, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    :pswitch_1c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/awa;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lg/awa;->v:Ljava/lang/String;

    sget-object v4, Lg/alz;->NO_STORE:Lg/alz;

    iget v4, v4, Lg/alz;->index:I

    iget-object v4, v2, Lg/ctl;->b:Ljava/lang/Object;

    check-cast v4, Lg/fnq;

    iget-object v5, v0, Lg/awa;->k:Landroid/graphics/Bitmap;

    iget-object v4, v4, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v4, Lg/cjm;

    if-eqz v3, :cond_53

    if-eqz v5, :cond_53

    sget-object v6, Lg/dxc;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    if-ltz v6, :cond_52

    invoke-virtual {v4}, Landroid/util/LruCache;->maxSize()I

    move-result v7

    if-le v6, v7, :cond_51

    invoke-virtual {v4, v3}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_51
    new-instance v7, Lg/fta;

    invoke-direct {v7, v5, v6}, Lg/fta;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v3, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    iget-object v4, v2, Lg/ctl;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lg/ctl;->q(Lg/awa;)V

    iget-object v0, v0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_26

    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "key == null || bitmap == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/fgs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lg/ctl;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lg/fgs;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/awa;

    if-eqz v5, :cond_54

    invoke-virtual {v5, v0}, Lg/awa;->aa(Lg/fgs;)V

    invoke-virtual {v5}, Lg/awa;->z()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget-object v3, v2, Lg/ctl;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    iget-object v4, v0, Lg/fgs;->b:Lg/fgs;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, v2, Lg/ctl;->m:Ljava/lang/Object;

    check-cast v3, Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    iget-object v2, v2, Lg/ctl;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fgs;

    goto :goto_26

    :pswitch_1e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/fgs;

    invoke-virtual {v2, v0, v13}, Lg/ctl;->p(Lg/fgs;Z)V

    :cond_56
    :goto_26
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_11
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_11
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method
