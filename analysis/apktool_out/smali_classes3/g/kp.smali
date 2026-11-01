.class public final Lg/kp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lg/fqm;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/fqm;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Lg/kp;->c:I

    iput-object p1, p0, Lg/kp;->b:Lg/fqm;

    iput-object p2, p0, Lg/kp;->d:Ljava/lang/String;

    iput-wide p3, p0, Lg/kp;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lg/kp;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/kp;->b:Lg/fqm;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v1, v0, Lg/fqm;->a:Lg/tl;

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, p0, Lg/kp;->d:Ljava/lang/String;

    invoke-static {v3}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v4, v0, Lg/fqm;->b:Lg/tl;

    invoke-virtual {v4, v3}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget-object v6, v2, Lg/cyg;->h:Lg/bcm;

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->aj(Lg/os;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lg/bcm;->u(Z)Lg/ein;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_2

    invoke-virtual {v4, v3}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-wide v7, p0, Lg/kp;->a:J

    if-nez v5, :cond_0

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "First ad unit exposure time was never set"

    invoke-virtual {v1, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1, v3}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sub-long v9, v7, v9

    invoke-virtual {v0, v3, v9, v10, v6}, Lg/fqm;->h(Ljava/lang/String;JLg/ein;)V

    :goto_0
    invoke-virtual {v4}, Lg/bcp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, v0, Lg/fqm;->c:J

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-nez v1, :cond_1

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v2, Lg/bgm;->b:Lg/dvb;

    const-string v1, "First ad exposure time was never set"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sub-long/2addr v7, v3

    invoke-virtual {v0, v7, v8, v6}, Lg/fqm;->g(JLg/ein;)V

    iput-wide v9, v0, Lg/fqm;->c:J

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Call to endAdUnitExposure for unknown ad unit id"

    invoke-virtual {v0, v3, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/kp;->b:Lg/fqm;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v1, p0, Lg/kp;->d:Ljava/lang/String;

    invoke-static {v1}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v2, v0, Lg/fqm;->b:Lg/tl;

    invoke-virtual {v2}, Lg/bcp;->isEmpty()Z

    move-result v3

    iget-wide v4, p0, Lg/kp;->a:J

    if-eqz v3, :cond_5

    iput-wide v4, v0, Lg/fqm;->c:J

    :cond_5
    invoke-virtual {v2, v1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget v3, v2, Lg/bcp;->g:I

    const/16 v7, 0x64

    if-lt v3, v7, :cond_7

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Too many ads visible"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lg/fqm;->a:Lg/tl;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
