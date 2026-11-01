.class public final Lg/ggg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public b:Lg/gez;

.field public final c:Z

.field public final d:Z

.field public final e:Lg/cci;

.field public final f:Z

.field public g:I

.field public final h:Lg/ggg;

.field public i:Z

.field public final j:Lg/ffr;

.field public final k:Lg/csu;


# direct methods
.method public constructor <init>(Lg/cci;Lg/ggg;)V
    .locals 7

    iget-boolean v3, p2, Lg/ggg;->d:Z

    iget-boolean v4, p2, Lg/ggg;->c:Z

    iget-boolean v5, p2, Lg/ggg;->f:Z

    iget-object v6, p2, Lg/ggg;->k:Lg/csu;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lg/ggg;-><init>(Lg/cci;Lg/ggg;ZZZLg/csu;)V

    return-void
.end method

.method public constructor <init>(Lg/cci;Lg/ggg;ZZZLg/csu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/ggg;->a:Ljava/util/HashSet;

    iput-object p1, p0, Lg/ggg;->e:Lg/cci;

    iput-object p2, p0, Lg/ggg;->h:Lg/ggg;

    iput-boolean p4, p0, Lg/ggg;->c:Z

    iput-boolean p3, p0, Lg/ggg;->d:Z

    iput-boolean p5, p0, Lg/ggg;->f:Z

    iput-object p6, p0, Lg/ggg;->k:Lg/csu;

    new-instance p2, Lg/ffr;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3, p0}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p2, p0, Lg/ggg;->j:Lg/ffr;

    return-void
.end method

.method public constructor <init>(Lg/cci;Lg/ur;)V
    .locals 7

    iget-boolean v3, p2, Lg/ur;->ai:Z

    iget-object v0, p2, Lg/ur;->aa:Lg/qp;

    sget-object v1, Lg/qp;->FALLBACK:Lg/qp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    iget-object v6, p2, Lg/ur;->ae:Lg/csu;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lg/ggg;-><init>(Lg/cci;Lg/ggg;ZZZLg/csu;)V

    return-void
.end method

.method public static l(Lg/dwg;Lg/ve;Lg/ve;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cci;

    iget-object v4, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v4}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v3}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_3
    iget-object p1, p1, Lg/ve;->c:Lg/ve;

    invoke-static {p0, p1, p2}, Lg/ggg;->l(Lg/dwg;Lg/ve;Lg/ve;)Z

    move-result p0

    return p0
.end method

.method public static m(Lg/ve;Lg/ve;)Z
    .locals 2

    invoke-virtual {p0}, Lg/ve;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lg/ve;->c:Lg/ve;

    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lg/ggg;->m(Lg/ve;Lg/ve;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final aa(Lg/ve;Lg/ve;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p2}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lg/ggg;->c:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lg/ggg;->d:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p2}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {p1, p2}, Lg/ggg;->m(Lg/ve;Lg/ve;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p2}, Lg/ve;->n()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lg/ve;->c:Lg/ve;

    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, p1, :cond_5

    invoke-static {p1, p2}, Lg/ggg;->m(Lg/ve;Lg/ve;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lg/ve;->c:Lg/ve;

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    if-eqz p1, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ve;

    invoke-virtual {p0, p1}, Lg/ggg;->u(Lg/ve;)V

    :cond_7
    new-instance p1, Lg/fov;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lg/fov;-><init>(I)V

    const-string p2, "."

    invoke-static {v0, p2, p1}, Lg/evh;->d(Ljava/lang/Iterable;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v2, p0, Lg/ggg;->e:Lg/cci;

    iget-object v4, v2, Lg/cci;->ab:Lg/dwg;

    invoke-static {v4, p1, p2}, Lg/ggg;->l(Lg/dwg;Lg/ve;Lg/ve;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v2, v2, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {p1}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x2e

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lg/dwg;->l:Lg/cut;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-virtual {p1}, Lg/ve;->s()Lg/ve;

    move-result-object v2

    invoke-virtual {p2}, Lg/ve;->s()Lg/ve;

    move-result-object v3

    if-eqz v2, :cond_b

    invoke-virtual {v2, v3}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_b
    invoke-virtual {p1, v3}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p2}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p2, Lg/ve;->c:Lg/ve;

    if-nez v2, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {p2}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2}, Lg/ve;->n()Z

    move-result v2

    if-nez v2, :cond_e

    :goto_5
    return-object v1

    :cond_e
    invoke-virtual {p2}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p2}, Lg/ve;->q()Ljava/lang/String;

    move-result-object v0

    :cond_f
    invoke-virtual {p0}, Lg/ggg;->r()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ve;

    invoke-virtual {v3, p2}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p2}, Lg/ve;->n()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object p2, p2, Lg/ve;->c:Lg/ve;

    invoke-virtual {p0, p1, p2}, Lg/ggg;->aa(Lg/ve;Lg/ve;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    return-object v0

    :cond_12
    invoke-virtual {p0, p2}, Lg/ggg;->u(Lg/ve;)V

    return-object v1

    :cond_13
    :goto_6
    return-object v0
.end method

.method public final ab(Lg/eos;Lg/hcd;)V
    .locals 12

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    iget-object v2, p2, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/acq;->bk:Lg/acq;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/acq;->u:Lg/acq;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lg/dsj;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->m()V

    :cond_2
    invoke-static {p1, p2}, Lg/bzu;->f(Lg/eos;Lg/ebh;)V

    invoke-virtual {v2}, Lg/dsj;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lg/dsj;->e:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lg/bzu;->c(Lg/eos;Lg/ebh;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lg/ggg;->j:Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->u(Lg/epk;Lg/eos;)V

    iget-object v1, p2, Lg/hcd;->h:Lg/gqc;

    sget-object v3, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {p2, v3}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lg/gqc;->aj(Z)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lg/grs;

    invoke-virtual {p1, v1}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v1, p2, Lg/hcd;->e:Lg/cwx;

    invoke-virtual {p0, p1, v1}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    invoke-interface {p1, p2}, Lg/eos;->g(Lg/cfr;)V

    iget-object v1, v2, Lg/dsj;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    sget-object v1, Lg/acq;->bj:Lg/acq;

    iget-object v2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/gos;

    const/4 v2, 0x0

    const-string v3, " = "

    iget-object v4, p0, Lg/ggg;->e:Lg/cci;

    if-eqz v1, :cond_4

    iget-object p2, v1, Lg/gos;->a:Lg/hed;

    new-instance v0, Lg/ejh;

    invoke-direct {v0, p0, p2}, Lg/ejh;-><init>(Lg/ggg;Lg/hed;)V

    new-instance p2, Lg/grb;

    invoke-direct {p2, v0, v2}, Lg/grb;-><init>(Lg/ejh;Z)V

    invoke-interface {p1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v0, v1, Lg/gos;->b:Lg/eek;

    :try_start_0
    sget-object v1, Lg/zw;->BODY_ONLY_NOWRAP:Lg/zw;

    invoke-virtual {p2, v0, p1, v1}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Failed to generate init code"

    invoke-static {v4, v0, p2}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lg/ao;->x:Lg/ao;

    iget-object v5, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/ghr;

    if-eqz v1, :cond_8

    invoke-interface {p1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v3, v1, Lg/ghr;->b:Lg/dnd;

    sget-object v5, Lg/dnd;->ENCODED_NULL:Lg/dnd;

    iget-boolean v10, p0, Lg/ggg;->c:Z

    if-ne v3, v5, :cond_5

    iget-object v8, p2, Lg/hcd;->e:Lg/cwx;

    sget-object p2, Lg/pp;->a:Lg/dba;

    invoke-virtual {v4}, Lg/cci;->a()Lg/dwg;

    move-result-object p2

    iget-object v9, p2, Lg/dwg;->t:Lg/foj;

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v6 .. v11}, Lg/pp;->b(JLg/cwx;Lg/foj;ZZ)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lg/bff;->m(Lg/ghr;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lg/ekh;

    if-eqz v5, :cond_7

    check-cast v3, Lg/ekh;

    iget-wide v6, v3, Lg/ekh;->a:J

    iget-object v8, p2, Lg/hcd;->e:Lg/cwx;

    iget-object p2, p0, Lg/ggg;->k:Lg/csu;

    sget-object v0, Lg/csu;->DECIMAL:Lg/csu;

    if-eq p2, v0, :cond_6

    sget-object p2, Lg/ewg;->a:Lg/dba;

    sget-object p2, Lg/cwx;->an:Lg/cff;

    invoke-virtual {v8, p2}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v4, Lg/cci;->ai:Lg/cci;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lg/cci;->ak:Lg/ve;

    invoke-virtual {p2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "R"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "0x%08x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    sget-object p2, Lg/pp;->a:Lg/dba;

    invoke-virtual {v4}, Lg/cci;->a()Lg/dwg;

    move-result-object p2

    iget-object v9, p2, Lg/dwg;->t:Lg/foj;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lg/pp;->b(JLg/cwx;Lg/foj;ZZ)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_1

    :cond_7
    iget-object p2, v4, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v0, p2, p1, v1}, Lg/ffr;->r(Lg/dwg;Lg/eos;Lg/ghr;)V

    :cond_8
    :goto_1
    const/16 p2, 0x3b

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    return-void
.end method

.method public final ac(Lg/grs;)V
    .locals 4

    iget-object v0, p0, Lg/ggg;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lg/fov;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lg/fov;-><init>(I)V

    invoke-static {v2}, Lj$/util/Comparator$a;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lg/esv;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, p1}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lg/grs;->m()V

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_0
    return-void
.end method

.method public final ad(Lg/eos;Lg/cwx;Lg/cwx;)V
    .locals 2

    invoke-virtual {p3}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lg/ggg;->e:Lg/cci;

    iget-object v1, v0, Lg/cci;->ab:Lg/dwg;

    invoke-static {v1, p2}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object p2

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v0, p2}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lg/eos;->b(Lg/cdv;)V

    :cond_1
    invoke-virtual {p2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {p0, p1, p3}, Lg/ggg;->s(Lg/eos;Lg/cwx;)V

    return-void
.end method

.method public final n(Lg/eos;Lg/cwx;)V
    .locals 2

    invoke-virtual {p2}, Lg/cwx;->bg()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/cwx;->bj()Lg/cwx;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lg/ggg;->ad(Lg/eos;Lg/cwx;Lg/cwx;)V

    const/16 p2, 0x2e

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p0, p1, v0}, Lg/ggg;->n(Lg/eos;Lg/cwx;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lg/ggg;->ad(Lg/eos;Lg/cwx;Lg/cwx;)V

    return-void
.end method

.method public final o(Lg/eos;Lg/cwx;)V
    .locals 1

    invoke-virtual {p2}, Lg/cwx;->bj()Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    const/16 v0, 0x2e

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p0, p1, p2}, Lg/ggg;->n(Lg/eos;Lg/cwx;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/ggg;->e:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    invoke-static {v0, p2}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/ggg;->w(Lg/eos;Lg/ve;)V

    invoke-virtual {p0, p1, p2}, Lg/ggg;->s(Lg/eos;Lg/cwx;)V

    return-void
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lg/ggg;->e:Lg/cci;

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v0, v0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hcd;

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final q(Lg/eos;Ljava/util/List;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v1, 0x3c

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cwx;

    if-eqz v0, :cond_1

    const-string v2, ", "

    invoke-interface {p1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/btl;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    :goto_1
    invoke-virtual {v1}, Lg/cwx;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, " extends "

    invoke-interface {p1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lg/btl;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, v2}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    if-eqz p3, :cond_5

    iget-object v3, p0, Lg/ggg;->e:Lg/cci;

    iget-object v4, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v4}, Lg/ve;->n()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v4, v3, Lg/dwg;->i:Lg/ur;

    iget-boolean v4, v4, Lg/ur;->ai:Z

    if-eqz v4, :cond_5

    invoke-static {v3, v2}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v2

    invoke-virtual {p0, v2}, Lg/ggg;->u(Lg/ve;)V

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " & "

    invoke-interface {p1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_4
    return v0
.end method

.method public final r()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/ggg;->h:Lg/ggg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ggg;->r()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/ggg;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public final s(Lg/eos;Lg/cwx;)V
    .locals 5

    invoke-virtual {p2}, Lg/cwx;->c()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-interface {p1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    invoke-virtual {v2}, Lg/cwx;->bo()Lg/cwx;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lg/cwx;->bl()Lg/be;

    move-result-object v2

    invoke-virtual {v2}, Lg/be;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    sget-object v4, Lg/be;->UNBOUND:Lg/be;

    if-eq v2, v4, :cond_2

    invoke-virtual {p0, p1, v3}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v2}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    :cond_4
    return-void
.end method

.method public final t(Lg/eos;Z)V
    .locals 12

    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    iget-object v0, p0, Lg/ggg;->e:Lg/cci;

    if-eqz p2, :cond_0

    sget-object p2, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {v0, p2}, Lg/ebh;->bx(Lg/afa;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " // from class: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lg/cci;->ak:Lg/ve;

    iget-object v1, v1, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lg/ggg;->i:Z

    move-object v1, p1

    check-cast v1, Lg/grs;

    iget-object v2, v1, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lg/ggg;->g:I

    invoke-virtual {v1}, Lg/grs;->aa()V

    sget-object v2, Lg/acq;->k:Lg/acq;

    iget-object v3, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/afq;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, v2, Lg/afq;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fjd;

    iget-object v8, v7, Lg/fjd;->a:Lg/hcd;

    invoke-static {p1, v8}, Lg/bzu;->f(Lg/eos;Lg/ebh;)V

    iget-object v8, v7, Lg/fjd;->a:Lg/hcd;

    iget-object v8, v8, Lg/hcd;->g:Lg/dsj;

    iget-object v8, v8, Lg/dsj;->b:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v8, v7, Lg/fjd;->b:Lg/eew;

    iget-object v9, v0, Lg/cci;->ab:Lg/dwg;

    iget-object v10, v8, Lg/eew;->a:Lg/ayu;

    invoke-virtual {v9, v10}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v9

    if-eqz v9, :cond_3

    sget-object v10, Lg/acq;->ab:Lg/acq;

    iget-object v11, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v10}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v10

    check-cast v10, Lg/cse;

    if-eqz v10, :cond_3

    iget-object v10, v10, Lg/cse;->a:Ljava/util/BitSet;

    invoke-virtual {v10}, Ljava/util/BitSet;->cardinality()I

    move-result v10

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    iget-object v11, v8, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_5

    if-nez v6, :cond_4

    iget-object v6, v2, Lg/afq;->b:Lg/hed;

    new-instance v10, Lg/ejh;

    invoke-direct {v10, p0, v6}, Lg/ejh;-><init>(Lg/ggg;Lg/hed;)V

    new-instance v6, Lg/grb;

    invoke-direct {v6, v10, v3}, Lg/grb;-><init>(Lg/ejh;Z)V

    :cond_4
    invoke-virtual {v6, v1, v8, v3, v9}, Lg/grb;->x(Lg/eos;Lg/gif;ILg/hed;)V

    :cond_5
    iget-object v8, v7, Lg/fjd;->c:Lg/cci;

    if-eqz v8, :cond_6

    const/16 v8, 0x20

    invoke-interface {v1, v8}, Lg/eos;->a(C)Lg/eos;

    new-instance v8, Lg/ggg;

    iget-object v7, v7, Lg/fjd;->c:Lg/cci;

    invoke-direct {v8, v7, p0}, Lg/ggg;-><init>(Lg/cci;Lg/ggg;)V

    invoke-virtual {v8, v1, p2}, Lg/ggg;->t(Lg/eos;Z)V

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2c

    invoke-interface {v1, v7}, Lg/eos;->a(C)Lg/eos;

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v2, v0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lg/ggg;->p()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cci;

    sget-object v6, Lg/acq;->r:Lg/acq;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v6}, Lg/sm;->j(Lg/fky;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_b
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lg/grs;->ag()V

    :cond_c
    const/16 v2, 0x3b

    invoke-interface {p1, v2}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p0}, Lg/ggg;->p()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lg/grs;->m()V

    :cond_d
    :goto_3
    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v2, v0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hcd;

    invoke-virtual {p0, p1, v4}, Lg/ggg;->ab(Lg/eos;Lg/hcd;)V

    goto :goto_4

    :cond_e
    iget-object v2, v0, Lg/cci;->i:Ljava/util/List;

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v0, v0, Lg/cci;->aj:Ljava/util/List;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/util/List;

    aput-object v2, v5, v3

    aput-object v0, v5, p2

    invoke-static {v5}, Lj$/util/stream/Stream$a;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lg/gpn;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lg/gpn;-><init>(I)V

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lg/egl;

    invoke-direct {v0, v3, p0}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lg/dbm;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lg/dbm;-><init>(I)V

    invoke-static {v0}, Lj$/util/Comparator$a;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lg/esv;

    invoke-direct {v0, p0, v4, p1}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lg/grs;->ab()V

    const/16 p2, 0x7d

    invoke-virtual {v1, p2}, Lg/grs;->ad(C)Lg/grs;

    sget-object p2, Lg/eot;->a:Lg/eot;

    invoke-interface {p1, p2}, Lg/eos;->b(Lg/cdv;)V

    return-void
.end method

.method public final u(Lg/ve;)V
    .locals 1

    iget-object v0, p0, Lg/ggg;->h:Lg/ggg;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/ggg;->u(Lg/ve;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/ggg;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final v(Lg/eos;Lg/cwx;)V
    .locals 2

    invoke-virtual {p2}, Lg/cwx;->f()Lg/bjt;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lg/cwx;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_0
    sget-object v1, Lg/bjt;->OBJECT:Lg/bjt;

    if-ne v0, v1, :cond_2

    instance-of v0, p2, Lg/btl;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    return-void

    :cond_2
    sget-object v1, Lg/bjt;->ARRAY:Lg/bjt;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lg/cwx;->k()Lg/cwx;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    const-string p2, "[]"

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_3
    invoke-virtual {v0}, Lg/bjt;->c()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void
.end method

.method public final w(Lg/eos;Lg/ve;)V
    .locals 2

    iget-object v0, p0, Lg/ggg;->e:Lg/cci;

    iget-object v1, v0, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v1, p2}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Lg/eos;->b(Lg/cdv;)V

    iget-object p2, v1, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {p0, v0, p2}, Lg/ggg;->aa(Lg/ve;Lg/ve;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_0
    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {p0, v0, p2}, Lg/ggg;->aa(Lg/ve;Lg/ve;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void
.end method

.method public final x(Lg/eos;Lg/hed;)V
    .locals 2

    invoke-static {p1, p2}, Lg/bzu;->f(Lg/eos;Lg/ebh;)V

    invoke-static {p1, p2}, Lg/bzu;->g(Lg/eos;Lg/ebh;)V

    iget-boolean v0, p2, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    new-instance v0, Lg/ejh;

    invoke-direct {v0, p0, p2}, Lg/ejh;-><init>(Lg/ggg;Lg/hed;)V

    invoke-virtual {v0, p1}, Lg/ejh;->m(Lg/eos;)Z

    const/16 p2, 0x3b

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    return-void

    :cond_0
    sget-object v0, Lg/csv;->INCONSISTENT_CODE:Lg/csv;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lg/ggg;->f:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lg/ggg;->c:Z

    if-nez v0, :cond_3

    sget-object v0, Lg/acq;->af:Lg/acq;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lg/ejh;

    invoke-direct {v0, p0, p2}, Lg/ejh;-><init>(Lg/ggg;Lg/hed;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p2}, Lg/ejh;->f(Lg/hed;)Lg/ejh;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, p1}, Lg/ejh;->m(Lg/eos;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0x20

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    :cond_4
    const/16 p2, 0x7b

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    move-object p2, p1

    check-cast p2, Lg/grs;

    invoke-virtual {p2}, Lg/grs;->aa()V

    invoke-virtual {v0, p1}, Lg/ejh;->i(Lg/eos;)V

    invoke-virtual {p2}, Lg/grs;->ab()V

    const/16 v0, 0x7d

    invoke-virtual {p2, v0}, Lg/grs;->ad(C)Lg/grs;

    sget-object p2, Lg/eot;->a:Lg/eot;

    invoke-interface {p1, p2}, Lg/eos;->b(Lg/cdv;)V

    return-void
.end method

.method public final y(Lg/eos;)V
    .locals 8

    iget-object v0, p0, Lg/ggg;->e:Lg/cci;

    iget-object v1, v0, Lg/cci;->d:Lg/gqc;

    iget-object v2, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1}, Lg/gqc;->ba()Z

    move-result v3

    const/16 v4, 0x400

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v1

    invoke-virtual {v1, v5}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/gqc;->ag()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v1

    invoke-virtual {v1, v5}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lg/ve;->n()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v5}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v1

    :cond_2
    iget v3, v1, Lg/gqc;->ab:I

    invoke-static {p1, v0}, Lg/bzu;->f(Lg/eos;Lg/ebh;)V

    invoke-virtual {v2}, Lg/ve;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v4}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lg/bzu;->c(Lg/eos;Lg/ebh;Ljava/lang/String;)V

    :cond_3
    invoke-static {p1, v0}, Lg/bzu;->g(Lg/eos;Lg/ebh;)V

    sget-object v4, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {v0, v4}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    sget-object v5, Lg/ao;->ae:Lg/ao;

    iget-object v6, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v5}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v5

    check-cast v5, Lg/arg;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lg/arg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lg/cci;->bd()Lg/cci;

    move-result-object v6

    iget-object v6, v6, Lg/cci;->ak:Lg/ve;

    iget-object v6, v6, Lg/ve;->e:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "compiled from: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lg/bzu;->b(Lg/eos;Lg/afa;Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {v0, v4}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lg/cci;->ac:Lg/cgt;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lg/cgt;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lg/cci;->getDeclaringClass()Lg/cci;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, v6, Lg/cci;->ac:Lg/cgt;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lg/cgt;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const-string v6, "loaded from: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lg/bzu;->b(Lg/eos;Lg/afa;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object v5, p0, Lg/ggg;->j:Lg/ffr;

    iget-object v6, v5, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v6, Lg/cci;

    invoke-virtual {v5, v6, p1}, Lg/ffr;->u(Lg/epk;Lg/eos;)V

    iget v5, v0, Lg/ccm;->bp:I

    check-cast p1, Lg/grs;

    invoke-virtual {p1, v5}, Lg/grs;->ac(I)Lg/grs;

    invoke-virtual {v0, v4}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lg/gqc;->aj(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v1}, Lg/gqc;->ba()Z

    move-result v4

    if-eqz v4, :cond_a

    and-int/lit16 v1, v3, 0x2000

    if-eqz v1, :cond_9

    const/16 v1, 0x40

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    :cond_9
    const-string v1, "interface "

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lg/gqc;->ag()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "enum "

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_3

    :cond_b
    const-string v1, "class "

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_3
    invoke-interface {p1, v0}, Lg/eos;->g(Lg/cfr;)V

    invoke-virtual {v2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v1, v0, Lg/cci;->y:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lg/ggg;->q(Lg/eos;Ljava/util/List;Z)Z

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    iget-object v2, v0, Lg/cci;->af:Lg/cwx;

    const-string v4, "extends "

    if-eqz v2, :cond_c

    sget-object v5, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v2, v5}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    sget-object v5, Lg/csv;->REMOVE_SUPER_CLASS:Lg/csv;

    iget-object v6, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-interface {p1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {p0, p1, v2}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    :cond_c
    iget-object v2, v0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    and-int/lit16 v2, v3, 0x2000

    if-eqz v2, :cond_d

    return-void

    :cond_d
    iget-object v2, v0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v2}, Lg/gqc;->ba()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_4

    :cond_e
    const-string v2, "implements "

    invoke-interface {p1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_4
    iget-object v2, v0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    invoke-virtual {p0, p1, v3}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, ", "

    invoke-interface {p1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_5

    :cond_10
    iget-object v0, v0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    :cond_11
    return-void
.end method

.method public final z(Lg/grs;)V
    .locals 2

    iget-object v0, p0, Lg/ggg;->e:Lg/cci;

    iget-object v1, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "// default package"

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_0
    const-string v1, "package "

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    const/16 v0, 0x3b

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    return-void
.end method
