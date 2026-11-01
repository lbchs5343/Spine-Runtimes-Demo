.class public final synthetic Lg/djg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/csp;


# direct methods
.method public synthetic constructor <init>(Lg/csp;I)V
    .locals 0

    iput p2, p0, Lg/djg;->a:I

    iput-object p1, p0, Lg/djg;->b:Lg/csp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lg/djg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/djg;->b:Lg/csp;

    iget-object v0, v0, Lg/csp;->k:Lg/bzv;

    iget-object v1, v0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->j:Lg/fth;

    iget-object v3, v1, Lg/cyg;->c:Lg/csp;

    iget-object v4, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v2}, Lg/fth;->_e()V

    invoke-virtual {v0}, Lg/bzv;->e()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Lg/bzv;->h()Z

    move-result v0

    const-string v2, "_cc"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v4, Lg/gmr;->p:Lg/dxb;

    invoke-virtual {v0, v5}, Lg/dxb;->l(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    const-string v5, "(not set)"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "medium"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_cis"

    const-string v5, "intent"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v3}, Lg/cyg;->aj(Lg/os;)V

    const-string v1, "auto"

    const-string v2, "_cmpx"

    invoke-virtual {v3, v1, v2, v0}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v4, Lg/gmr;->p:Lg/dxb;

    invoke-virtual {v0}, Lg/dxb;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->a:Lg/dvb;

    const-string v1, "Cache still valid but referrer not found"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v4, Lg/gmr;->j:Lg/fou;

    invoke-virtual {v1}, Lg/fou;->f()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    const-wide/16 v10, -0x1

    add-long/2addr v6, v10

    mul-long v6, v6, v8

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Landroid/util/Pair;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_4

    const-string v0, "app"

    goto :goto_1

    :cond_4
    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-static {v3}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "_cmp"

    invoke-virtual {v3, v0, v2, v1}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v4, Lg/gmr;->p:Lg/dxb;

    invoke-virtual {v0, v5}, Lg/dxb;->l(Ljava/lang/String;)V

    :goto_3
    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v4, Lg/gmr;->j:Lg/fou;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lg/fou;->g(J)V

    :goto_4
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/djg;->b:Lg/csp;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->b:Lg/gmr;

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    iget-object v3, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->t:Lg/avz;

    invoke-virtual {v1}, Lg/avz;->g()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v3, Lg/gmr;->q:Lg/fou;

    invoke-virtual {v1}, Lg/fou;->f()J

    move-result-wide v4

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v3, Lg/gmr;->q:Lg/fou;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Lg/fou;->g(J)V

    const-wide/16 v6, 0x5

    cmp-long v1, v4, v6

    if-ltz v1, :cond_5

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v2, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v3, Lg/gmr;->t:Lg/avz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/avz;->f(Z)V

    goto/16 :goto_f

    :cond_5
    iget-object v1, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v1}, Lg/fth;->_e()V

    iget-object v1, v0, Lg/cyg;->u:Lg/bww;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v5

    invoke-virtual {v5}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v6, ""

    invoke-virtual {v3}, Lg/bgf;->_e()V

    iget-object v7, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v7, Lg/cyg;

    iget-object v8, v7, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, v3, Lg/gmr;->b:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-wide v11, v3, Lg/gmr;->l:J

    cmp-long v13, v8, v11

    if-ltz v13, :cond_6

    goto :goto_5

    :cond_6
    new-instance v6, Landroid/util/Pair;

    iget-boolean v7, v3, Lg/gmr;->u:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_7
    :goto_5
    iget-object v10, v7, Lg/cyg;->e:Lg/dsd;

    sget-object v11, Lg/gad;->ax:Lg/tw;

    invoke-virtual {v10, v5, v11}, Lg/dsd;->o(Ljava/lang/String;Lg/tw;)J

    move-result-wide v10

    add-long/2addr v10, v8

    iput-wide v10, v3, Lg/gmr;->l:J

    :try_start_0
    iget-object v8, v7, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {v8}, Lg/xo;->i(Landroid/content/Context;)Lg/dez;

    move-result-object v8

    iput-object v6, v3, Lg/gmr;->b:Ljava/lang/String;

    iget-object v9, v8, Lg/dez;->a:Ljava/lang/String;

    if-eqz v9, :cond_8

    iput-object v9, v3, Lg/gmr;->b:Ljava/lang/String;

    goto :goto_6

    :catch_0
    move-exception v8

    goto :goto_7

    :cond_8
    :goto_6
    iget-boolean v8, v8, Lg/dez;->b:Z

    iput-boolean v8, v3, Lg/gmr;->u:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    iget-object v7, v7, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v7, v7, Lg/bgm;->o:Lg/dvb;

    const-string v9, "Unable to get advertising id"

    invoke-virtual {v7, v8, v9}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v3, Lg/gmr;->b:Ljava/lang/String;

    :goto_8
    new-instance v6, Landroid/util/Pair;

    iget-object v7, v3, Lg/gmr;->b:Ljava/lang/String;

    iget-boolean v8, v3, Lg/gmr;->u:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    iget-object v7, v0, Lg/cyg;->e:Lg/dsd;

    const-string v8, "google_analytics_adid_collection_enabled"

    invoke-virtual {v7, v8}, Lg/dsd;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_9
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_e

    :cond_a
    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v1}, Lg/bkw;->an()V

    iget-object v7, v4, Lg/cyg;->v:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    :try_start_1
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    nop

    :cond_b
    move-object v7, v8

    :goto_a
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v2, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v7

    iget-object v7, v7, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v7, Lg/cyg;

    iget-object v7, v7, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v7}, Lg/dsd;->n()V

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Lg/gmr;->q:Lg/fou;

    invoke-virtual {v3}, Lg/fou;->f()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    add-long/2addr v9, v11

    iget-object v3, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    const-string v7, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version="

    const-string v11, "v73000."

    :try_start_2
    invoke-static {v6}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v5}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/dkq;->ay()I

    move-result v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&rdid="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&bundleid="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&retry="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v3, Lg/cyg;->e:Lg/dsd;

    const-string v7, "debug.deferred.deeplink"

    invoke-virtual {v6, v7}, Lg/dsd;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "&ddl_test=1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :catch_2
    move-exception v2

    goto :goto_c

    :catch_3
    move-exception v2

    goto :goto_c

    :cond_c
    :goto_b
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v6

    goto :goto_d

    :goto_c
    iget-object v3, v3, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v3, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    if-eqz v8, :cond_10

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v2, Lg/yh;

    invoke-direct {v2, v0}, Lg/yh;-><init>(Lg/cyg;)V

    invoke-virtual {v1}, Lg/bgf;->_e()V

    invoke-virtual {v1}, Lg/bkw;->an()V

    iget-object v0, v4, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v3, Lg/eax;

    invoke-direct {v3, v1, v5, v8, v2}, Lg/eax;-><init>(Lg/bww;Ljava/lang/String;Ljava/net/URL;Lg/yh;)V

    invoke-virtual {v0, v3}, Lg/fth;->v(Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_d
    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v2, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    :goto_e
    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v2, Lg/bgm;->o:Lg/dvb;

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v2, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_10
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
