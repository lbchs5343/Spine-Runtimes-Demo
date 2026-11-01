.class public final Lg/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/eoa;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gf;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Lg/gf;->e:Z

    iput-object p3, p0, Lg/gf;->c:Ljava/lang/Object;

    iput-object p4, p0, Lg/gf;->a:Ljava/lang/String;

    iput-object p5, p0, Lg/gf;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    iput p6, p0, Lg/gf;->d:I

    iput-object p1, p0, Lg/gf;->f:Ljava/lang/Object;

    iput-object p2, p0, Lg/gf;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/gf;->a:Ljava/lang/String;

    iput-object p4, p0, Lg/gf;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lg/gf;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lg/gf;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/gf;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v3

    iget-object v0, v1, Lg/gf;->c:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lg/brv;

    invoke-virtual {v3}, Lg/acn;->_e()V

    invoke-virtual {v3}, Lg/os;->zza()V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v6

    new-instance v2, Lg/egw;

    iget-object v4, v1, Lg/gf;->a:Ljava/lang/String;

    iget-object v5, v1, Lg/gf;->b:Ljava/lang/String;

    iget-boolean v7, v1, Lg/gf;->e:Z

    invoke-direct/range {v2 .. v8}, Lg/egw;-><init>(Lg/dbb;Ljava/lang/String;Ljava/lang/String;Lg/afh;ZLg/brv;)V

    invoke-virtual {v3, v2}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    const-string v0, "gclid="

    iget-object v2, v1, Lg/gf;->f:Ljava/lang/Object;

    check-cast v2, Lg/eoa;

    iget-object v3, v1, Lg/gf;->c:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    iget-object v7, v1, Lg/gf;->b:Ljava/lang/String;

    iget-object v2, v2, Lg/eoa;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lg/csp;

    iget-object v2, v4, Lg/csp;->k:Lg/bzv;

    iget-object v5, v4, Lg/bgf;->z:Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Lg/cyg;

    invoke-virtual {v4}, Lg/acn;->_e()V

    :try_start_0
    iget-object v5, v15, Lg/cyg;->m:Lg/dkq;

    invoke-static {v5}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "_cis"

    const-string v9, "Activity created with data \'referrer\' without required params"

    const-string v10, "utm_medium"

    const-string v11, "utm_source"

    const-string v12, "utm_campaign"

    const-string v14, "gclid"

    if-eqz v6, :cond_0

    :goto_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "utm_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "dclid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "srsltid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v5, v5, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    iget-object v5, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v5, v5, Lg/bgm;->o:Lg/dvb;

    invoke-virtual {v5, v9}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const-string v6, "https://google.com/search?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/dkq;->aq(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "referrer"

    invoke-virtual {v5, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    const-string v6, "_cmp"

    iget-boolean v13, v1, Lg/gf;->e:Z

    move/from16 v16, v13

    iget-object v13, v1, Lg/gf;->a:Ljava/lang/String;

    if-eqz v16, :cond_4

    :try_start_2
    iget-object v1, v15, Lg/cyg;->m:Lg/dkq;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1, v3}, Lg/dkq;->aq(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "intent"

    invoke-virtual {v1, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "_cer"

    move-object/from16 v16, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v9

    :goto_2
    invoke-virtual {v4, v13, v6, v1}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v13, v1}, Lg/bzv;->f(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    move-object/from16 v16, v9

    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v0, v15, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Activity created with referrer"

    invoke-virtual {v0, v7, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v15, Lg/cyg;->e:Lg/dsd;

    sget-object v1, Lg/gad;->bw:Lg/tw;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v5, :cond_6

    invoke-virtual {v4, v13, v6, v5}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v13, v5}, Lg/bzv;->f(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_6
    iget-object v0, v15, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Referrer does not contain valid parameters"

    invoke-virtual {v0, v7, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    const-string v9, "auto"

    const-string v10, "_ldl"

    iget-object v0, v15, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v12, 0x1

    move-object v11, v3

    move-object v8, v4

    invoke-virtual/range {v8 .. v14}, Lg/csp;->az(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    goto :goto_6

    :cond_7
    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "utm_term"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "utm_content"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v5, "auto"

    const-string v6, "_ldl"

    iget-object v0, v15, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v10}, Lg/csp;->az(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    goto :goto_6

    :cond_9
    iget-object v0, v15, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :goto_5
    iget-object v1, v15, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_6
    return-void

    :pswitch_1
    iget-object v0, v1, Lg/gf;->f:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v3

    iget-object v0, v1, Lg/gf;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Lg/acn;->_e()V

    invoke-virtual {v3}, Lg/os;->zza()V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v7

    new-instance v2, Lg/egw;

    iget-object v5, v1, Lg/gf;->a:Ljava/lang/String;

    iget-object v6, v1, Lg/gf;->b:Ljava/lang/String;

    iget-boolean v8, v1, Lg/gf;->e:Z

    invoke-direct/range {v2 .. v8}, Lg/egw;-><init>(Lg/dbb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lg/afh;Z)V

    invoke-virtual {v3, v2}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
