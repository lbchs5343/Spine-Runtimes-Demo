.class public final Lg/fqm;
.super Lg/acn;
.source "SourceFile"


# instance fields
.field public final a:Lg/tl;

.field public final b:Lg/tl;

.field public c:J


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/bgf;-><init>(Lg/cyg;)V

    new-instance p1, Lg/tl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/fqm;->b:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, v0}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/fqm;->a:Lg/tl;

    return-void
.end method


# virtual methods
.method public final g(JLg/ein;)V
    .locals 4

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    if-nez p3, :cond_0

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->c:Lg/dvb;

    const-string p2, "Not logging ad exposure. No active activity"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    iget-object p3, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p3, p3, Lg/bgm;->c:Lg/dvb;

    const-string v0, "Not logging ad exposure. Less than 1000 ms. exposure"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_xt"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-static {p3, v1, p1}, Lg/dkq;->q(Lg/ein;Landroid/os/Bundle;Z)V

    iget-object p1, v0, Lg/cyg;->c:Lg/csp;

    invoke-static {p1}, Lg/cyg;->aj(Lg/os;)V

    const-string p2, "am"

    const-string p3, "_xa"

    invoke-virtual {p1, p2, p3, v1}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final h(Ljava/lang/String;JLg/ein;)V
    .locals 4

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    if-nez p4, :cond_0

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->c:Lg/dvb;

    const-string p2, "Not logging ad unit exposure. No active activity"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    cmp-long v3, p2, v1

    if-gez v3, :cond_1

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->c:Lg/dvb;

    const-string p4, "Not logging ad unit exposure. Less than 1000 ms. exposure"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_ai"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_xt"

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-static {p4, v1, p1}, Lg/dkq;->q(Lg/ein;Landroid/os/Bundle;Z)V

    iget-object p1, v0, Lg/cyg;->c:Lg/csp;

    invoke-static {p1}, Lg/cyg;->aj(Lg/os;)V

    const-string p2, "am"

    const-string p3, "_xu"

    invoke-virtual {p1, p2, p3, v1}, Lg/csp;->au(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j(J)V
    .locals 4

    iget-object v0, p0, Lg/fqm;->a:Lg/tl;

    invoke-virtual {v0}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Lg/bxl;

    invoke-virtual {v1}, Lg/bxl;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/bcp;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Lg/fqm;->c:J

    :cond_1
    return-void
.end method

.method public final k(Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/kp;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lg/kp;-><init>(Lg/fqm;Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Ad unit id must be a non-empty string"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final l(J)V
    .locals 6

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bcm;->u(Z)Lg/ein;

    move-result-object v0

    iget-object v1, p0, Lg/fqm;->a:Lg/tl;

    invoke-virtual {v1}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Lg/bxl;

    invoke-virtual {v2}, Lg/bxl;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-virtual {p0, v3, v4, v5, v0}, Lg/fqm;->h(Ljava/lang/String;JLg/ein;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/bcp;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lg/fqm;->c:J

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2, v0}, Lg/fqm;->g(JLg/ein;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg/fqm;->j(J)V

    return-void
.end method

.method public final m(Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/kp;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lg/kp;-><init>(Lg/fqm;Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Ad unit id must be a non-empty string"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void
.end method
