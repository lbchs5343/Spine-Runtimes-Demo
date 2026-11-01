.class public final Lg/cyo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public aa:Ljava/lang/String;

.field public ab:J

.field public ac:J

.field public ad:J

.field public ae:Ljava/lang/Boolean;

.field public b:J

.field public c:J

.field public d:Z

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Lg/cyg;

.field public l:Ljava/lang/String;

.field public m:J

.field public n:Z

.field public o:J

.field public p:J

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Z

.field public t:J

.field public u:J

.field public final v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:J

.field public z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/cyg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static {p2}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p1, p0, Lg/cyo;->k:Lg/cyg;

    iput-object p2, p0, Lg/cyo;->v:Ljava/lang/String;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {p1}, Lg/fth;->_e()V

    return-void
.end method


# virtual methods
.method public final af(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->z:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lg/cyo;->z:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public final ag(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->e:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->e:J

    return-void
.end method

.method public final ah(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->p:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->p:J

    return-void
.end method

.method public final ai()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final aj(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->r:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->r:J

    return-void
.end method

.method public final ak(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v1, p0, Lg/cyo;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->j:Ljava/lang/String;

    return-void
.end method

.method public final al()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public final am(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->f:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->f:J

    return-void
.end method

.method public final an(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v1, p0, Lg/cyo;->i:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->i:Ljava/lang/String;

    return-void
.end method

.method public final ao()J
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-wide v0, p0, Lg/cyo;->c:J

    return-wide v0
.end method

.method public final ap(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->y:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->y:J

    return-void
.end method

.method public final aq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v1, p0, Lg/cyo;->w:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->w:Ljava/lang/String;

    return-void
.end method

.method public final ar()V
    .locals 6

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v1, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v1}, Lg/fth;->_e()V

    iget-wide v1, p0, Lg/cyo;->ad:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    iget-object v1, p0, Lg/cyo;->v:Ljava/lang/String;

    invoke-static {v1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide v1, p0, Lg/cyo;->ad:J

    return-void
.end method

.method public final as(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->u:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->u:J

    return-void
.end method

.method public final at()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final au()J
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-wide v0, p0, Lg/cyo;->r:J

    return-wide v0
.end method

.method public final av(J)V
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lg/ckd;->u(Z)V

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v4, p0, Lg/cyo;->ad:J

    cmp-long v1, v4, p1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->ad:J

    return-void
.end method

.method public final aw(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->b:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->b:J

    return-void
.end method

.method public final ax(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->c:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->c:J

    return-void
.end method

.method public final ay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final az(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->t:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->t:J

    return-void
.end method

.method public final ba(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->ab:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->ab:J

    return-void
.end method

.method public final bb(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->o:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->o:J

    return-void
.end method

.method public final bc(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->a:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->a:J

    return-void
.end method

.method public final bd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v2, p0, Lg/cyo;->x:Ljava/lang/String;

    invoke-static {v2, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->x:Ljava/lang/String;

    return-void
.end method

.method public final be(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->ac:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->ac:J

    return-void
.end method

.method public final bf(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v1, p0, Lg/cyo;->q:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->q:Ljava/lang/String;

    return-void
.end method

.method public final bg()Z
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->s:Z

    return v0
.end method

.method public final bh(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v1, p0, Lg/cyo;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->h:Ljava/lang/String;

    return-void
.end method

.method public final bi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final bj(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v1, p0, Lg/cyo;->aa:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->aa:Ljava/lang/String;

    return-void
.end method

.method public final bk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final bl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-object v0, p0, Lg/cyo;->h:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/cyo;->bh(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bm(Z)V
    .locals 2

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-boolean v1, p0, Lg/cyo;->d:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-boolean p1, p0, Lg/cyo;->d:Z

    return-void
.end method

.method public final bn(J)V
    .locals 4

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-wide v1, p0, Lg/cyo;->m:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-wide p1, p0, Lg/cyo;->m:J

    return-void
.end method

.method public final bo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/cyo;->k:Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/fth;->_e()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lg/cyo;->n:Z

    iget-object v2, p0, Lg/cyo;->g:Ljava/lang/String;

    invoke-static {v2, p1}, Lg/kj;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg/cyo;->n:Z

    iput-object p1, p0, Lg/cyo;->g:Ljava/lang/String;

    return-void
.end method
