.class public final Lg/fmv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Lg/cde;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/cyg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLg/cde;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p4}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p9}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object p3, p0, Lg/fmv;->c:Ljava/lang/String;

    iput-object p4, p0, Lg/fmv;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lg/fmv;->f:Ljava/lang/String;

    iput-wide p5, p0, Lg/fmv;->a:J

    iput-wide p7, p0, Lg/fmv;->b:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->g:Lg/dvb;

    invoke-static {p3}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p2

    invoke-static {p4}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId, name"

    invoke-virtual {p1, p2, p4, p3}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iput-object p9, p0, Lg/fmv;->d:Lg/cde;

    return-void
.end method

.method public constructor <init>(Lg/cyg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p4}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p3, p0, Lg/fmv;->c:Ljava/lang/String;

    iput-object p4, p0, Lg/fmv;->e:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-ne p3, p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lg/fmv;->f:Ljava/lang/String;

    iput-wide p5, p0, Lg/fmv;->a:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lg/fmv;->b:J

    if-eqz p7, :cond_4

    invoke-virtual {p7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_1

    iget-object p4, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p4, p4, Lg/bgm;->b:Lg/dvb;

    const-string p5, "Param name can\'t be null"

    invoke-virtual {p4, p5}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p5, p1, Lg/cyg;->m:Lg/dkq;

    invoke-static {p5}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {p2, p4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p5, p6, p4}, Lg/dkq;->be(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_2

    iget-object p5, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p5}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p5, p5, Lg/bgm;->g:Lg/dvb;

    iget-object p6, p1, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {p6, p4}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p6, "Param value can\'t be null"

    invoke-virtual {p5, p4, p6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object p6, p1, Lg/cyg;->m:Lg/dkq;

    invoke-static {p6}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {p6, p2, p4, p5}, Lg/dkq;->az(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lg/cde;

    invoke-direct {p1, p2}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lg/cde;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    :goto_1
    iput-object p1, p0, Lg/fmv;->d:Lg/cde;

    return-void
.end method


# virtual methods
.method public final g(Lg/cyg;J)Lg/fmv;
    .locals 10

    new-instance v0, Lg/fmv;

    iget-wide v5, p0, Lg/fmv;->a:J

    iget-object v9, p0, Lg/fmv;->d:Lg/cde;

    iget-object v2, p0, Lg/fmv;->f:Ljava/lang/String;

    iget-object v3, p0, Lg/fmv;->c:Ljava/lang/String;

    iget-object v4, p0, Lg/fmv;->e:Ljava/lang/String;

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v9}, Lg/fmv;-><init>(Lg/cyg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLg/cde;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lg/fmv;->d:Lg/cde;

    invoke-virtual {v0}, Lg/cde;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\', name=\'"

    const-string v2, "\', params="

    const-string v3, "Event{appId=\'"

    iget-object v4, p0, Lg/fmv;->c:Ljava/lang/String;

    iget-object v5, p0, Lg/fmv;->e:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-static {v1, v0, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
