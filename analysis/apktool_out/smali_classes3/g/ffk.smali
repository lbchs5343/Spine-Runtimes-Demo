.class public final Lg/ffk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/cjv;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lg/cjv;JI)V
    .locals 0

    iput p4, p0, Lg/ffk;->b:I

    iput-object p1, p0, Lg/ffk;->a:Lg/cjv;

    iput-wide p2, p0, Lg/ffk;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lg/ffk;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ffk;->a:Lg/cjv;

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/cjv;->l()V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Activity paused, time"

    iget-wide v8, p0, Lg/ffk;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lg/cjv;->g:Lg/cis;

    new-instance v4, Lg/eod;

    iget-object v2, v5, Lg/cis;->b:Ljava/lang/Object;

    check-cast v2, Lg/cjv;

    iget-object v3, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v4 .. v9}, Lg/eod;-><init>(Lg/cis;JJ)V

    iput-object v4, v5, Lg/cis;->a:Ljava/lang/Object;

    iget-object v2, v2, Lg/cjv;->h:Lg/dae;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v1, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v1}, Lg/dsd;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/cjv;->k:Lg/fcw;

    iget-object v0, v0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v0, Lg/rd;

    invoke-virtual {v0}, Lg/emo;->i()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ffk;->a:Lg/cjv;

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/cjv;->l()V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Activity resumed, time"

    iget-wide v4, p0, Lg/ffk;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/dsd;->j()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->x:Lg/avz;

    invoke-virtual {v1}, Lg/avz;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v0, Lg/cjv;->k:Lg/fcw;

    iget-object v2, v1, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v2, Lg/cjv;

    invoke-virtual {v2}, Lg/acn;->_e()V

    iget-object v2, v1, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v2, Lg/rd;

    invoke-virtual {v2}, Lg/emo;->i()V

    iput-wide v4, v1, Lg/fcw;->d:J

    iput-wide v4, v1, Lg/fcw;->e:J

    :cond_2
    iget-object v1, v0, Lg/cjv;->g:Lg/cis;

    iget-object v2, v1, Lg/cis;->b:Ljava/lang/Object;

    check-cast v2, Lg/cjv;

    invoke-virtual {v2}, Lg/acn;->_e()V

    iget-object v1, v1, Lg/cis;->a:Ljava/lang/Object;

    check-cast v1, Lg/eod;

    if-eqz v1, :cond_3

    iget-object v3, v2, Lg/cjv;->h:Lg/dae;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v1, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->x:Lg/avz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/avz;->f(Z)V

    iget-object v0, v0, Lg/cjv;->j:Lg/bzv;

    iget-object v1, v0, Lg/bzv;->b:Ljava/lang/Object;

    check-cast v1, Lg/cjv;

    iget-object v3, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-virtual {v3}, Lg/cyg;->as()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, v3, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lg/bzv;->g(JZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
