.class public final Lg/fsw;
.super Lg/grb;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/fsw;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/fsw;->a:Lg/dba;

    return-void
.end method


# virtual methods
.method public final b(Lg/eos;Lg/amj;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg/fsw;->g(Lg/eos;Lg/amj;)V

    invoke-interface {p2, p0, p1}, Lg/amj;->b(Lg/fsw;Lg/eos;)V

    return-void
.end method

.method public final c(Lg/eos;Lg/amj;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->aa()V

    invoke-virtual {p0, p1, p2}, Lg/fsw;->b(Lg/eos;Lg/amj;)V

    invoke-virtual {v0}, Lg/grs;->ab()V

    return-void
.end method

.method public final d(Lg/eos;Lg/dsj;Lg/hcd;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p3, Lg/hcd;->f:Lg/cci;

    invoke-virtual {v0}, Lg/cci;->bi()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/grb;->n:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    iget-object v1, p2, Lg/dsj;->d:Lg/ve;

    iget-object v1, v1, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v0, v1}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x4000

    iget v0, v0, Lg/aht;->d:I

    invoke-static {v0, v1}, Lg/afo;->af(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p1, p3}, Lg/eos;->b(Lg/cdv;)V

    :cond_2
    iget-object p2, p2, Lg/dsj;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lg/grb;->r(Lg/eos;Lg/dsj;)V

    if-eqz p3, :cond_4

    iget-object p2, p0, Lg/grb;->m:Lg/hed;

    sget-object v0, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {p2, v0}, Lg/ebh;->bx(Lg/afa;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lg/ao;->x:Lg/ao;

    iget-object p3, p3, Lg/lh;->l:Lg/sm;

    invoke-virtual {p3, p2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p2

    check-cast p2, Lg/ghr;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lg/ghr;->f:Ljava/lang/Object;

    if-eqz p2, :cond_4

    const-string p3, " /* "

    invoke-interface {p1, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    const-string p2, " */"

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_4
    return-void
.end method

.method public final e(Lg/eos;Lg/aea;)V
    .locals 6

    iget-object v0, p0, Lg/grb;->l:Lg/ejh;

    iget-object v1, v0, Lg/ejh;->b:Lg/gez;

    iget-object v2, p2, Lg/aea;->d:Lg/eys;

    if-nez v2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lg/grs;

    const-string v3, "} catch ("

    invoke-virtual {p1, v3}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {p2}, Lg/aea;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lg/cwx;->v:Lg/aog;

    iget-object v0, v0, Lg/ejh;->d:Lg/ggg;

    invoke-virtual {v0, p1, v3}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lg/aea;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ve;

    invoke-virtual {p0, p1, v3}, Lg/grb;->y(Lg/eos;Lg/ve;)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " | "

    invoke-interface {p1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ve;

    invoke-virtual {p0, p1, v3}, Lg/grb;->y(Lg/eos;Lg/ve;)V

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    iget-object v0, p2, Lg/aea;->f:Lg/gsh;

    iget-object v3, p0, Lg/grb;->m:Lg/hed;

    if-nez v0, :cond_4

    const-string v0, "unknown"

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_3

    :cond_4
    instance-of v4, v0, Lg/gks;

    if-eqz v4, :cond_6

    check-cast v0, Lg/gks;

    iget-object v0, v0, Lg/gks;->a:Lg/vm;

    instance-of v4, p1, Lg/flc;

    if-eqz v4, :cond_5

    invoke-static {v3, v0}, Lg/cmw;->h(Lg/hed;Lg/vm;)Lg/cmw;

    move-result-object v4

    invoke-interface {p1, v4}, Lg/eos;->g(Lg/cfr;)V

    :cond_5
    invoke-virtual {v0}, Lg/vm;->u()Lg/ejb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/gez;->n(Lg/ejb;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_3

    :cond_6
    instance-of v4, v0, Lg/add;

    if-eqz v4, :cond_9

    check-cast v0, Lg/add;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lg/add;->a:Ljava/lang/String;

    iget-boolean v5, v1, Lg/gez;->g:Z

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v4}, Lg/gez;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lg/add;->a:Ljava/lang/String;

    :goto_2
    invoke-interface {p1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_3
    const-string v0, ") {"

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget v0, p2, Lg/aea;->h:I

    if-ltz v0, :cond_8

    instance-of v1, p1, Lg/flc;

    if-eqz v1, :cond_8

    new-instance v1, Lg/ahw;

    invoke-direct {v1, v0}, Lg/ahw;-><init>(I)V

    invoke-interface {p1, v1}, Lg/eos;->f(Lg/ahw;)V

    :cond_8
    iget-object p2, p2, Lg/aea;->i:Lg/fza;

    invoke-static {p1, v3, p2}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    invoke-virtual {p0, p1, v2}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    return-void

    :cond_9
    new-instance p1, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected arg type in catch block: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", class: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lg/goe;Lg/eos;Z)V
    .locals 8

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lg/eiy;->ac()I

    move-result p3

    move-object v0, p2

    check-cast v0, Lg/grs;

    invoke-virtual {v0, p3}, Lg/grs;->ac(I)Lg/grs;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/eiy;->ac()I

    move-result p3

    invoke-interface {p2, p3}, Lg/eos;->e(I)V

    :goto_0
    sget-object p3, Lg/csv;->COMMENT_OUT:Lg/csv;

    iget-object v0, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, p3}, Lg/sm;->g(Lg/csv;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string v0, "// "

    invoke-interface {p2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_1
    const-string v0, "if ("

    invoke-interface {p2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    new-instance v0, Lg/fto;

    iget-object v1, p0, Lg/grb;->l:Lg/ejh;

    iget-boolean v2, p0, Lg/grb;->k:Z

    invoke-direct {v0, v1, v2}, Lg/grb;-><init>(Lg/ejh;Z)V

    iget-object v1, p1, Lg/eiy;->aa:Lg/eii;

    new-instance v2, Lg/dfa;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lg/dfa;-><init>(I)V

    invoke-virtual {v0, p2, v2, v1}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    const-string v0, ") {"

    invoke-interface {p2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-object v0, p2

    check-cast v0, Lg/grs;

    instance-of v1, v0, Lg/flc;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lg/eiy;->ab:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-static {v1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v1

    invoke-static {p2, v1}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    iget-object v3, p0, Lg/grb;->m:Lg/hed;

    invoke-static {p2, v3, v1}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    :cond_2
    iget-object v1, p1, Lg/goe;->h:Lg/amj;

    invoke-virtual {p0, p2, v1}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    const/16 v1, 0x7d

    const-string v3, "// }"

    if-eqz p3, :cond_3

    invoke-virtual {v0, v3}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lg/grs;->ad(C)Lg/grs;

    :goto_1
    iget-object p1, p1, Lg/goe;->g:Lg/amj;

    invoke-static {p1}, Lg/gs;->z(Lg/amj;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, " else "

    invoke-interface {p2, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    sget-object v4, Lg/csv;->ELSE_IF_CHAIN:Lg/csv;

    move-object v5, p1

    check-cast v5, Lg/lh;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_7

    instance-of v4, p1, Lg/eys;

    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Lg/eys;

    iget-object v4, v4, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/amj;

    :goto_2
    instance-of v5, v4, Lg/eys;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lg/eys;

    iget-object v5, v5, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/amj;

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_3
    instance-of v5, v4, Lg/goe;

    if-eqz v5, :cond_7

    invoke-virtual {p0, p2, v4}, Lg/fsw;->g(Lg/eos;Lg/amj;)V

    check-cast v4, Lg/goe;

    invoke-virtual {p0, v4, p2, v2}, Lg/fsw;->f(Lg/goe;Lg/eos;Z)V

    return-void

    :cond_7
    const/16 v2, 0x7b

    invoke-interface {p2, v2}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p0, p2, p1}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    if-eqz p3, :cond_8

    invoke-virtual {v0, v3}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    return-void

    :cond_8
    invoke-virtual {v0, v1}, Lg/grs;->ad(C)Lg/grs;

    :cond_9
    return-void
.end method

.method public final g(Lg/eos;Lg/amj;)V
    .locals 2

    sget-object v0, Lg/acq;->l:Lg/acq;

    check-cast p2, Lg/lh;

    iget-object p2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {p2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p2

    check-cast p2, Lg/cug;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lg/cug;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ejb;

    move-object v1, p1

    check-cast v1, Lg/grs;

    invoke-virtual {v1}, Lg/grs;->ag()V

    iget-boolean v1, v0, Lg/ejb;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "final "

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_0
    iget-object v1, v0, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {p0, p1, v1}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p0, p1, v0}, Lg/grb;->t(Lg/eos;Lg/ejb;)V

    const/16 v1, 0x3b

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v0}, Lg/ejb;->h()Lg/vm;

    move-result-object v0

    iget-object v0, v0, Lg/vm;->c:Lg/gks;

    iget-object v1, p0, Lg/grb;->m:Lg/hed;

    invoke-static {p1, v1, v0}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    goto :goto_0

    :cond_1
    return-void
.end method
