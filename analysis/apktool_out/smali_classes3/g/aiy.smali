.class public final synthetic Lg/aiy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/csp;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lg/csp;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lg/aiy;->b:I

    iput-object p1, p0, Lg/aiy;->a:Lg/csp;

    iput-object p2, p0, Lg/aiy;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lg/aiy;->b:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "creation_timestamp"

    const-string v2, "app_id"

    iget-object v3, v0, Lg/aiy;->a:Lg/csp;

    invoke-virtual {v3}, Lg/acn;->_e()V

    invoke-virtual {v3}, Lg/os;->zza()V

    const-string v4, "name"

    iget-object v5, v0, Lg/aiy;->c:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->as()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v3, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Conditional property not cleared since app measurement is disabled"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lg/cmd;

    const/4 v10, 0x0

    const-string v11, ""

    const-wide/16 v8, 0x0

    invoke-direct/range {v6 .. v11}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v7, v3, Lg/cyg;->m:Lg/dkq;

    invoke-static {v7}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "expired_event_name"

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "expired_event_params"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lg/dkq;->cb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lg/ctf;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lg/bou;

    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "active"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v1, "trigger_event_name"

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "trigger_timeout"

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v1, "time_to_live"

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object v7, v6

    const-string v6, ""

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v5, v2

    invoke-direct/range {v4 .. v18}, Lg/bou;-><init>(Ljava/lang/String;Ljava/lang/String;Lg/cmd;JZLjava/lang/String;Lg/ctf;JLg/ctf;JLg/ctf;)V

    invoke-virtual {v3}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v1

    invoke-virtual {v1, v4}, Lg/dbb;->t(Lg/bou;)V

    :catch_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "app_id"

    iget-object v2, v0, Lg/aiy;->a:Lg/csp;

    invoke-virtual {v2}, Lg/acn;->_e()V

    invoke-virtual {v2}, Lg/os;->zza()V

    const-string v3, "name"

    iget-object v4, v0, Lg/aiy;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "origin"

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v10}, Lg/ckd;->bf(Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->as()Z

    move-result v5

    iget-object v11, v2, Lg/cyg;->m:Lg/dkq;

    if-nez v5, :cond_1

    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance v5, Lg/cmd;

    const-string v7, "triggered_timestamp"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct/range {v5 .. v10}, Lg/cmd;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-static {v11}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "triggered_event_name"

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "triggered_event_params"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    move-object v7, v11

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lg/dkq;->cb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lg/ctf;

    move-result-object v18

    invoke-static {v7}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "timed_out_event_name"

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "timed_out_event_params"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lg/dkq;->cb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lg/ctf;

    move-result-object v15

    invoke-static {v7}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "expired_event_name"

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "expired_event_params"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lg/dkq;->cb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lg/ctf;

    move-result-object v21
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v7, Lg/bou;

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "creation_timestamp"

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v1, "trigger_event_name"

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "trigger_timeout"

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v1, "time_to_live"

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    const/4 v13, 0x0

    move-object v9, v10

    move-object v10, v5

    invoke-direct/range {v7 .. v21}, Lg/bou;-><init>(Ljava/lang/String;Ljava/lang/String;Lg/cmd;JZLjava/lang/String;Lg/ctf;JLg/ctf;JLg/ctf;)V

    invoke-virtual {v2}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v1

    invoke-virtual {v1, v7}, Lg/dbb;->t(Lg/bou;)V

    :catch_1
    :goto_1
    return-void

    :pswitch_1
    iget-object v1, v0, Lg/aiy;->a:Lg/csp;

    iget-object v2, v1, Lg/csp;->s:Lg/bgb;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v8, v0, Lg/aiy;->c:Landroid/os/Bundle;

    if-nez v8, :cond_2

    iget-object v1, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->w:Lg/dpa;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lg/dpa;->r(Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_2
    iget-object v3, v1, Lg/cyg;->b:Lg/gmr;

    iget-object v9, v1, Lg/cyg;->m:Lg/dkq;

    iget-object v10, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v3, v3, Lg/gmr;->w:Lg/dpa;

    invoke-virtual {v3}, Lg/dpa;->p()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    instance-of v3, v14, Ljava/lang/String;

    if-nez v3, :cond_5

    instance-of v3, v14, Ljava/lang/Long;

    if-nez v3, :cond_5

    instance-of v3, v14, Ljava/lang/Double;

    if-nez v3, :cond_5

    invoke-static {v9}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-static {v14}, Lg/dkq;->r(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    invoke-static {v10}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v10, Lg/bgm;->h:Lg/dvb;

    const-string v4, "Invalid default event parameter type. Name, value"

    invoke-virtual {v3, v13, v4, v14}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v13}, Lg/dkq;->al(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v10}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v10, Lg/bgm;->h:Lg/dvb;

    const-string v4, "Invalid default event parameter name. Name"

    invoke-virtual {v3, v13, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-nez v14, :cond_7

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v9}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v3, "param"

    const/16 v4, 0x64

    invoke-virtual {v9, v3, v13, v4, v14}, Lg/dkq;->br(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v9, v11, v13, v14}, Lg/dkq;->az(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-static {v9}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v3, v1, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v3}, Lg/dsd;->r()I

    move-result v3

    invoke-virtual {v11}, Landroid/os/BaseBundle;->size()I

    move-result v4

    const/4 v8, 0x0

    if-gt v4, v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/util/TreeSet;

    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    if-le v5, v3, :cond_a

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-static {v9}, Lg/cyg;->ai(Lg/bgf;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lg/dkq;->v(Lg/btm;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v10}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v10, Lg/bgm;->h:Lg/dvb;

    const-string v3, "Too many default event parameters set. Discarding beyond event parameter limit"

    invoke-virtual {v2, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_4
    iget-object v2, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, v2, Lg/gmr;->w:Lg/dpa;

    invoke-virtual {v2, v11}, Lg/dpa;->r(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v1

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v1}, Lg/os;->zza()V

    invoke-virtual {v1, v8}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v2

    new-instance v3, Lg/eax;

    const/16 v4, 0x14

    invoke-direct {v3, v1, v2, v11, v4}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
