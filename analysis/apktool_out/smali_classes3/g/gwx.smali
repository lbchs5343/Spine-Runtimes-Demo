.class public final Lg/gwx;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lg/axs;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gwx;->b:I

    iput-object p1, p0, Lg/gwx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lg/gwx;->d:Z

    return-void
.end method

.method public constructor <init>(Lg/bsz;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/gwx;->b:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lg/gwx;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public e(Landroid/os/Bundle;Lg/ejd;ILg/apl;JZ)V
    .locals 2

    :try_start_0
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lg/gwx;->a:Ljava/lang/Object;

    check-cast p2, Lg/axs;

    iget-object p2, p2, Lg/axs;->d:Ljava/lang/Object;

    check-cast p2, Lg/ffr;

    const-string p3, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    sget p3, Lg/beg;->a:I

    const-class p3, Lg/beg;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget p4, Lg/beg;->a:I

    sget-object p4, Lg/fjo;->a:Lg/fjo;

    invoke-static {}, Lg/aky;->i()Lg/beg;

    move-result-object p4

    sget v0, Lg/beg;->a:I

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, p4}, Lg/hd;->a([BLg/beg;)Lg/hd;

    move-result-object p1

    invoke-virtual {p2, p1, p5, p6, p7}, Lg/ffr;->ag(Lg/hd;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_0
    iget-object p1, p0, Lg/gwx;->a:Ljava/lang/Object;

    check-cast p1, Lg/axs;

    iget-object p1, p1, Lg/axs;->d:Ljava/lang/Object;

    check-cast p1, Lg/ffr;

    sget-object v0, Lg/hm;->zzw:Lg/hm;

    const/4 v1, 0x0

    invoke-static {v0, p3, p2, v1, p4}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object p2

    invoke-virtual {p1, p2, p5, p6, p7}, Lg/ffr;->ag(Lg/hd;JZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public declared-synchronized f(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/gwx;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lg/gwx;->d:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, p0, p2, v0}, Lg/ahq;->ad(Landroid/content/Context;Lg/gwx;Landroid/content/IntentFilter;I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    iput-boolean v2, p0, Lg/gwx;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lg/gwx;->a:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->bi()V

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    iget-boolean v1, p0, Lg/gwx;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Unregistering connectivity change receiver"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/gwx;->c:Z

    iput-boolean v1, p0, Lg/gwx;->d:Z

    iget-object v1, v0, Lg/bsz;->m:Lg/cyg;

    iget-object v1, v1, Lg/cyg;->v:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v0, v1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized h(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/gwx;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/gwx;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget p1, Lg/gbs;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lg/gwx;->b:I

    iget-object v2, v0, Lg/gwx;->a:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v8, v2

    check-cast v8, Lg/axs;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x58756162

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v2, v3, :cond_2

    const v3, -0x141f9074

    if-eq v2, v3, :cond_1

    const v3, 0x14937179

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_4

    sget-object v1, Lg/apl;->zza:Lg/apl;

    goto :goto_2

    :cond_4
    sget-object v1, Lg/apl;->zzd:Lg/apl;

    goto :goto_2

    :cond_5
    sget-object v1, Lg/apl;->zzc:Lg/apl;

    goto :goto_2

    :cond_6
    sget-object v1, Lg/apl;->zzb:Lg/apl;

    :goto_2
    sget-object v2, Lg/apl;->zzc:Lg/apl;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lg/apl;->zzd:Lg/apl;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v3, 0x2

    goto :goto_3

    :cond_8
    sget-object v3, Lg/apl;->zzb:Lg/apl;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v4, 0x20

    const/16 v3, 0x20

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v9, 0x0

    if-nez v4, :cond_a

    sget v2, Lg/gbs;->a:I

    iget-object v2, v8, Lg/axs;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    sget-object v4, Lg/hm;->zzk:Lg/hm;

    sget-object v5, Lg/edc;->a:Lg/ejd;

    invoke-static {v4, v3, v5, v9, v1}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object v1

    :try_start_0
    iget-object v3, v2, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v3, Lg/djs;

    invoke-virtual {v2, v1, v3}, Lg/ffr;->z(Lg/hd;Lg/djs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    sget v1, Lg/gbs;->a:I

    :goto_4
    iget-object v1, v8, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Lg/eoy;

    if-eqz v1, :cond_11

    check-cast v1, Lg/efc;

    iget-object v2, v1, Lg/efc;->e:Ljava/lang/String;

    iget-object v3, v1, Lg/efc;->b:Lg/fpd;

    invoke-virtual {v1, v5, v9, v2, v3}, Lg/efc;->f(Lg/ejd;Ljava/util/List;Ljava/lang/String;Lg/btp;)V

    goto/16 :goto_11

    :cond_a
    const-string v7, "BillingBroadcastManager"

    if-ne v3, v5, :cond_e

    sget v5, Lg/gbs;->a:I

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v10, v7}, Lg/gbs;->e(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v10

    iput v10, v5, Lg/gvg;->e:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_b

    :goto_5
    const/4 v10, 0x0

    goto :goto_6

    :cond_b
    const-string v11, "SUB_RESPONSE_CODE"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_c

    const-string v10, "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK"

    invoke-static {v7, v10}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    instance-of v11, v10, Ljava/lang/Integer;

    if-eqz v11, :cond_d

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_6

    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Unexpected type for bundle sub response code: "

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :goto_6
    iput v10, v5, Lg/gvg;->b:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v10, v7}, Lg/gbs;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v5}, Lg/gvg;->h()Lg/ejd;

    move-result-object v5

    goto :goto_7

    :cond_e
    move-object/from16 v5, p2

    invoke-static {v5, v7}, Lg/gbs;->d(Landroid/content/Intent;Ljava/lang/String;)Lg/ejd;

    move-result-object v5

    :goto_7
    const-string v7, "billingClientTransactionId"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v7, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v7, "wasServiceAutoReconnected"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sget-object v14, Lg/apl;->zzb:Lg/apl;

    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    move-object v0, v4

    move-object v4, v1

    move-object v1, v0

    move-object v2, v5

    move-wide v5, v12

    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    sget-object v2, Lg/apl;->zzd:Lg/apl;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, v5, Lg/ejd;->a:I

    if-eqz v2, :cond_12

    move-object v2, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v5

    move-wide v5, v12

    invoke-virtual/range {v0 .. v7}, Lg/gwx;->e(Landroid/os/Bundle;Lg/ejd;ILg/apl;JZ)V

    iget-object v0, v8, Lg/axs;->a:Ljava/lang/Object;

    check-cast v0, Lg/eoy;

    sget-object v1, Lg/fkz;->g:Lg/duz;

    sget-object v1, Lg/fun;->a:Lg/fun;

    check-cast v0, Lg/efc;

    iget-object v3, v0, Lg/efc;->e:Ljava/lang/String;

    iget-object v4, v0, Lg/efc;->b:Lg/fpd;

    invoke-virtual {v0, v2, v1, v3, v4}, Lg/efc;->f(Lg/ejd;Ljava/util/List;Ljava/lang/String;Lg/btp;)V

    :cond_11
    :goto_8
    move-object/from16 v0, p0

    goto/16 :goto_11

    :cond_12
    move-object v4, v1

    move-wide v0, v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v8, Lg/axs;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    sget-object v5, Lg/hm;->zzay:Lg/hm;

    sget-object v6, Lg/edc;->a:Lg/ejd;

    invoke-static {v5, v3, v6, v9, v4}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v7}, Lg/ffr;->ag(Lg/hd;JZ)V

    iget-object v0, v8, Lg/axs;->a:Ljava/lang/Object;

    check-cast v0, Lg/eoy;

    sget-object v1, Lg/fkz;->g:Lg/duz;

    sget-object v1, Lg/fun;->a:Lg/fun;

    check-cast v0, Lg/efc;

    iget-object v2, v0, Lg/efc;->e:Ljava/lang/String;

    iget-object v3, v0, Lg/efc;->b:Lg/fpd;

    invoke-virtual {v0, v6, v1, v2, v3}, Lg/efc;->f(Lg/ejd;Ljava/util/List;Ljava/lang/String;Lg/btp;)V

    goto :goto_8

    :goto_9
    const-string v12, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string v15, "BillingHelper"

    if-eqz v12, :cond_13

    if-nez v13, :cond_14

    :cond_13
    move-wide/from16 v16, v10

    goto :goto_c

    :cond_14
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    new-instance v0, Ljava/lang/StringBuilder;

    move-wide/from16 v16, v10

    const-string v10, "Found purchase list of "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " items"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_16

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_16

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lg/gbs;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    :goto_b
    move-object v9, v14

    goto :goto_d

    :goto_c
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lg/gbs;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v0, "Couldn\'t find single purchase data as well."

    invoke-static {v15, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_17
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :goto_d
    iget v0, v2, Lg/ejd;->a:I

    if-nez v0, :cond_19

    iget-object v0, v8, Lg/axs;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-static {v3, v4}, Lg/cgl;->d(ILg/apl;)Lg/eag;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lg/fsu;->x()Lg/dtx;

    move-result-object v3

    check-cast v3, Lg/gza;

    invoke-virtual {v1}, Lg/eag;->f()Lg/gsc;

    move-result-object v1

    invoke-virtual {v1}, Lg/fsu;->x()Lg/dtx;

    move-result-object v1

    check-cast v1, Lg/dmu;

    invoke-virtual {v1}, Lg/dtx;->f()V

    iget-object v4, v1, Lg/dtx;->d:Lg/fsu;

    check-cast v4, Lg/gsc;

    invoke-static {v4, v7}, Lg/gsc;->b(Lg/gsc;Z)V

    invoke-virtual {v3}, Lg/dtx;->f()V

    iget-object v4, v3, Lg/dtx;->d:Lg/fsu;

    check-cast v4, Lg/eag;

    invoke-virtual {v1}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/gsc;

    invoke-static {v4, v1}, Lg/eag;->c(Lg/eag;Lg/gsc;)V

    invoke-virtual {v3}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/eag;

    cmp-long v3, v5, v16

    if-nez v3, :cond_18

    iget-object v3, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v3, Lg/djs;

    goto :goto_e

    :cond_18
    iget-object v3, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v3, Lg/djs;

    invoke-virtual {v3}, Lg/fsu;->x()Lg/dtx;

    move-result-object v3

    check-cast v3, Lg/gzp;

    invoke-virtual {v3}, Lg/dtx;->f()V

    iget-object v4, v3, Lg/dtx;->d:Lg/fsu;

    check-cast v4, Lg/djs;

    invoke-static {v4, v5, v6}, Lg/djs;->n(Lg/djs;J)V

    invoke-virtual {v3}, Lg/dtx;->g()Lg/fsu;

    move-result-object v3

    check-cast v3, Lg/djs;

    :goto_e
    invoke-virtual {v0, v1, v3}, Lg/ffr;->ai(Lg/eag;Lg/djs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_f

    :catchall_1
    sget v0, Lg/gbs;->a:I

    :goto_f
    move-object/from16 v0, p0

    goto :goto_10

    :cond_19
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lg/gwx;->e(Landroid/os/Bundle;Lg/ejd;ILg/apl;JZ)V

    :goto_10
    iget-object v1, v8, Lg/axs;->a:Ljava/lang/Object;

    check-cast v1, Lg/eoy;

    check-cast v1, Lg/efc;

    iget-object v3, v1, Lg/efc;->e:Ljava/lang/String;

    iget-object v4, v1, Lg/efc;->b:Lg/fpd;

    invoke-virtual {v1, v2, v9, v3, v4}, Lg/efc;->f(Lg/ejd;Ljava/util/List;Ljava/lang/String;Lg/btp;)V

    :goto_11
    return-void

    :pswitch_0
    move-object/from16 v5, p2

    check-cast v2, Lg/bsz;

    invoke-virtual {v2}, Lg/bsz;->bi()V

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v3

    iget-object v3, v3, Lg/bgm;->c:Lg/dvb;

    const-string v4, "NetworkBroadcastReceiver received action"

    invoke-virtual {v3, v1, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v1, v2, Lg/bsz;->z:Lg/fit;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/fit;->aw()Z

    move-result v1

    iget-boolean v3, v0, Lg/gwx;->d:Z

    if-eq v3, v1, :cond_1b

    iput-boolean v1, v0, Lg/gwx;->d:Z

    invoke-virtual {v2}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v2

    new-instance v3, Lg/aku;

    invoke-direct {v3, v0, v1}, Lg/aku;-><init>(Lg/gwx;Z)V

    invoke-virtual {v2, v3}, Lg/fth;->p(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_1a
    invoke-virtual {v2}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->g:Lg/dvb;

    const-string v3, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v2, v1, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
