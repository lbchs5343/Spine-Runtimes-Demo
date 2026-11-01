.class public final Lg/gzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/gzm;->a:I

    iput-object p2, p0, Lg/gzm;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/zs;Lg/ctf;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lg/gzm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gzm;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Lg/gzm;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/gzm;->b:Ljava/lang/Object;

    check-cast v0, Lg/gbf;

    iget-object v2, v0, Lg/gbf;->f:Lg/akx;

    iget-object v2, v2, Lg/akx;->afmaVersion:Ljava/lang/String;

    iget-object v0, v0, Lg/gbf;->d:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzauz;

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzauz;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzavb;->zzu(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauz;)Lcom/google/android/gms/internal/ads/zzavb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzavc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzavc;-><init>(Lcom/google/android/gms/internal/ads/zzaux;)V

    return-object v2

    :pswitch_0
    sget-object v0, Lg/esy;->a:Lg/gfx;

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->z:Lg/esy;

    iget-object v0, v1, Lg/gzm;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lg/esy;->u(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lg/gzm;->b:Ljava/lang/Object;

    check-cast v0, Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v0, v0, Lg/bsz;->b:Lg/fit;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected call on client side"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, v1, Lg/gzm;->b:Ljava/lang/Object;

    check-cast v0, Lg/dqu;

    new-instance v2, Lg/auf;

    iget-object v0, v0, Lg/dqu;->k:Lg/bgb;

    invoke-direct {v2, v0}, Lg/auf;-><init>(Lg/bgb;)V

    return-object v2

    :pswitch_3
    iget-object v0, v1, Lg/gzm;->b:Ljava/lang/Object;

    check-cast v0, Lg/ad;

    invoke-virtual {v0}, Lg/ad;->getViewSignals()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v1, Lg/gzm;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/aaa;

    iget-object v0, v5, Lg/aaa;->b:Lg/tq;

    iget-object v6, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget v7, v0, Lg/tq;->t:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    monitor-exit v6

    goto/16 :goto_1a

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    :cond_0
    iget v7, v0, Lg/tq;->t:I

    if-ne v7, v3, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v9, "accountName"

    invoke-virtual {v6, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lg/tq;->y:Ljava/lang/String;

    iget-object v10, v0, Lg/tq;->g:Ljava/lang/String;

    iget-object v11, v0, Lg/tq;->w:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v6, v9, v10}, Lg/gbs;->g(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    sget-object v9, Lg/hm;->zza:Lg/hm;

    iget-object v10, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-object v0, v0, Lg/tq;->s:Lg/agh;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_3

    iget-object v0, v5, Lg/aaa;->b:Lg/tq;

    invoke-virtual {v0, v4}, Lg/tq;->ai(I)V

    sget-object v3, Lg/hm;->zzbc:Lg/hm;

    sget-object v4, Lg/edc;->n:Lg/ejd;

    invoke-virtual {v0, v4, v3}, Lg/tq;->bc(Lg/ejd;Lg/hm;)V

    invoke-virtual {v5, v4}, Lg/aaa;->g(Lg/ejd;)V

    goto/16 :goto_1a

    :cond_3
    iget-object v10, v5, Lg/aaa;->b:Lg/tq;

    iget-object v11, v10, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x19

    const/4 v14, 0x3

    :goto_2
    if-lt v13, v8, :cond_6

    if-nez v6, :cond_4

    :try_start_2
    const-string v14, "subs"

    move-object v15, v0

    check-cast v15, Lg/eaw;

    invoke-virtual {v15}, Lg/ob;->_cc()Landroid/os/Parcel;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v15, v12, v3}, Lg/ob;->h(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_15

    :cond_4
    const-string v12, "subs"

    move-object v14, v0

    check-cast v14, Lg/eaw;

    invoke-virtual {v14, v13, v11, v12, v6}, Lg/eaw;->o(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v12

    move v14, v12

    :goto_3
    if-nez v14, :cond_5

    const-string v12, "BillingClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "highestLevelSupportedForSubs: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    :goto_4
    if-lt v13, v8, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v10, Lg/tq;->c:Z

    if-ge v13, v8, :cond_8

    sget-object v9, Lg/hm;->zzi:Lg/hm;

    const-string v4, "BillingClient"

    const-string v12, "In-app billing API does not support subscription on this device."

    invoke-static {v4, v12}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v12, 0x19

    :goto_6
    if-lt v12, v8, :cond_b

    if-nez v6, :cond_9

    const-string v4, "inapp"

    move-object v13, v0

    check-cast v13, Lg/eaw;

    invoke-virtual {v13}, Lg/ob;->_cc()Landroid/os/Parcel;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v3}, Lg/ob;->h(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move v14, v13

    goto :goto_7

    :cond_9
    const-string v4, "inapp"

    move-object v13, v0

    check-cast v13, Lg/eaw;

    invoke-virtual {v13, v12, v11, v4, v6}, Lg/eaw;->o(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    move v14, v4

    :goto_7
    if-nez v14, :cond_a

    iput v12, v10, Lg/tq;->i:I

    const-string v0, "BillingClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHighestLevelSupportedForInApp: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    add-int/lit8 v12, v12, -0x1

    goto :goto_6

    :cond_b
    :goto_8
    iget v0, v10, Lg/tq;->i:I

    iput v0, v10, Lg/tq;->i:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, v10, Lg/tq;->n:Z

    const/16 v4, 0x18

    if-lt v0, v4, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    iput-boolean v4, v10, Lg/tq;->m:Z

    const/16 v4, 0x15

    if-lt v0, v4, :cond_e

    const/4 v4, 0x1

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    :goto_b
    iput-boolean v4, v10, Lg/tq;->l:Z

    const/16 v4, 0x14

    if-lt v0, v4, :cond_f

    const/4 v4, 0x1

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    :goto_c
    iput-boolean v4, v10, Lg/tq;->x:Z

    const/16 v4, 0x13

    if-lt v0, v4, :cond_10

    const/4 v4, 0x1

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    :goto_d
    iput-boolean v4, v10, Lg/tq;->p:Z

    const/16 v4, 0x11

    if-lt v0, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    :goto_e
    iput-boolean v4, v10, Lg/tq;->ab:Z

    const/16 v4, 0x10

    if-lt v0, v4, :cond_12

    const/4 v4, 0x1

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    :goto_f
    iput-boolean v4, v10, Lg/tq;->v:Z

    const/16 v4, 0xf

    if-lt v0, v4, :cond_13

    const/4 v4, 0x1

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    iput-boolean v4, v10, Lg/tq;->q:Z

    const/16 v4, 0xe

    if-lt v0, v4, :cond_14

    const/4 v4, 0x1

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    iput-boolean v4, v10, Lg/tq;->d:Z

    const/16 v4, 0x9

    if-lt v0, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_12

    :cond_15
    const/4 v4, 0x0

    :goto_12
    iput-boolean v4, v10, Lg/tq;->f:Z

    const/4 v4, 0x6

    if-lt v0, v4, :cond_16

    goto :goto_13

    :cond_16
    const/4 v3, 0x0

    :goto_13
    iput-boolean v3, v10, Lg/tq;->r:Z

    if-ge v0, v8, :cond_17

    sget-object v9, Lg/hm;->zzJ:Lg/hm;

    sget v0, Lg/gbs;->a:I

    :cond_17
    invoke-static {v10, v14}, Lg/tq;->ac(Lg/tq;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v14, :cond_18

    sget-object v0, Lg/edc;->m:Lg/ejd;

    invoke-virtual {v5, v0, v9, v2, v7}, Lg/aaa;->f(Lg/ejd;Lg/hm;Ljava/lang/String;Z)V

    invoke-virtual {v5, v0}, Lg/aaa;->g(Lg/ejd;)V

    goto/16 :goto_1a

    :cond_18
    :try_start_3
    invoke-virtual {v5, v7}, Lg/aaa;->e(Z)Ljava/lang/Long;

    move-result-object v0

    if-eqz v7, :cond_1a

    invoke-static {}, Lg/eag;->b()Lg/gza;

    move-result-object v3

    invoke-virtual {v3}, Lg/dtx;->f()V

    iget-object v6, v3, Lg/dtx;->d:Lg/fsu;

    check-cast v6, Lg/eag;

    invoke-static {v6, v4}, Lg/eag;->e(Lg/eag;I)V

    invoke-static {}, Lg/dmh;->e()Lg/eip;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lg/eip;->a(Z)V

    invoke-virtual {v4}, Lg/eip;->b()V

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Lg/dtx;->f()V

    iget-object v0, v4, Lg/dtx;->d:Lg/fsu;

    check-cast v0, Lg/dmh;

    invoke-static {v0, v6, v7}, Lg/dmh;->c(Lg/dmh;J)V

    :cond_19
    iget-object v0, v5, Lg/aaa;->b:Lg/tq;

    invoke-virtual {v3}, Lg/dtx;->f()V

    iget-object v6, v3, Lg/dtx;->d:Lg/fsu;

    check-cast v6, Lg/eag;

    invoke-virtual {v4}, Lg/dtx;->g()Lg/fsu;

    move-result-object v4

    check-cast v4, Lg/dmh;

    invoke-static {v6, v4}, Lg/eag;->d(Lg/eag;Lg/dmh;)V

    invoke-virtual {v3}, Lg/dtx;->g()Lg/fsu;

    move-result-object v3

    check-cast v3, Lg/eag;

    invoke-virtual {v0, v3}, Lg/tq;->ba(Lg/eag;)V

    goto :goto_14

    :cond_1a
    invoke-static {}, Lg/efn;->c()Lg/bnn;

    move-result-object v3

    invoke-static {}, Lg/aho;->c()Lg/gwg;

    move-result-object v4

    invoke-virtual {v4}, Lg/dtx;->f()V

    iget-object v6, v4, Lg/dtx;->d:Lg/fsu;

    check-cast v6, Lg/aho;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lg/aho;->f(Lg/aho;I)V

    invoke-virtual {v3}, Lg/dtx;->f()V

    iget-object v6, v3, Lg/dtx;->d:Lg/fsu;

    check-cast v6, Lg/efn;

    invoke-virtual {v4}, Lg/dtx;->g()Lg/fsu;

    move-result-object v4

    check-cast v4, Lg/aho;

    invoke-static {v6, v4}, Lg/efn;->b(Lg/efn;Lg/aho;)V

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Lg/dtx;->f()V

    iget-object v0, v3, Lg/dtx;->d:Lg/fsu;

    check-cast v0, Lg/efn;

    invoke-static {v0, v6, v7}, Lg/efn;->a(Lg/efn;J)V

    :cond_1b
    iget-object v0, v5, Lg/aaa;->b:Lg/tq;

    iget-object v0, v0, Lg/tq;->b:Lg/ffr;

    invoke-virtual {v3}, Lg/dtx;->g()Lg/fsu;

    move-result-object v3

    check-cast v3, Lg/efn;

    invoke-virtual {v0, v3}, Lg/ffr;->aa(Lg/efn;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_14

    :catchall_1
    sget v0, Lg/gbs;->a:I

    :goto_14
    sget-object v0, Lg/edc;->l:Lg/ejd;

    invoke-virtual {v5, v0}, Lg/aaa;->g(Lg/ejd;)V

    goto :goto_1a

    :goto_15
    sget v3, Lg/gbs;->a:I

    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1c

    sget-object v4, Lg/hm;->zzaM:Lg/hm;

    goto :goto_16

    :cond_1c
    instance-of v4, v0, Landroid/os/RemoteException;

    if-eqz v4, :cond_1d

    sget-object v4, Lg/hm;->zzaL:Lg/hm;

    goto :goto_16

    :cond_1d
    instance-of v4, v0, Ljava/lang/SecurityException;

    if-eqz v4, :cond_1e

    sget-object v4, Lg/hm;->zzaN:Lg/hm;

    goto :goto_16

    :cond_1e
    sget-object v4, Lg/hm;->zzP:Lg/hm;

    :goto_16
    sget-object v6, Lg/hm;->zzP:Lg/hm;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {v0}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_1f
    move-object v0, v2

    :goto_17
    iget-object v6, v5, Lg/aaa;->b:Lg/tq;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lg/tq;->ai(I)V

    if-eqz v3, :cond_20

    sget-object v6, Lg/edc;->n:Lg/ejd;

    goto :goto_18

    :cond_20
    sget-object v6, Lg/edc;->a:Lg/ejd;

    :goto_18
    invoke-virtual {v5, v6, v4, v0, v7}, Lg/aaa;->f(Lg/ejd;Lg/hm;Ljava/lang/String;Z)V

    if-eqz v3, :cond_21

    sget-object v0, Lg/edc;->n:Lg/ejd;

    goto :goto_19

    :cond_21
    sget-object v0, Lg/edc;->a:Lg/ejd;

    :goto_19
    invoke-virtual {v5, v0}, Lg/aaa;->g(Lg/ejd;)V

    :goto_1a
    return-object v2

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_1b
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :pswitch_5
    iget-object v0, v1, Lg/gzm;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lg/ezv;

    iget-object v0, v4, Lg/ezv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    :try_start_6
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v4, Lg/ezv;->d:Lg/adh;

    invoke-virtual {v0}, Lg/adh;->p()Lg/atp;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v4, v2}, Lg/ezv;->k(Ljava/lang/Object;)V

    return-object v2

    :catchall_3
    move-exception v0

    :try_start_7
    iget-object v5, v4, Lg/ezv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    invoke-virtual {v4, v2}, Lg/ezv;->k(Ljava/lang/Object;)V

    throw v0

    :pswitch_6
    new-instance v0, Lg/cvv;

    iget-object v2, v1, Lg/gzm;->b:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lg/cvv;->a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
