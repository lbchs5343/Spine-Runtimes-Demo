.class public Lg/grb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/EnumSet;

.field public static final i:Ljava/util/EnumSet;

.field public static final j:Ljava/util/EnumSet;


# instance fields
.field public final k:Z

.field public final l:Lg/ejh;

.field public final m:Lg/hed;

.field public final n:Lg/dwg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/grb;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    const-class v0, Lg/zw;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lg/grb;->h:Ljava/util/EnumSet;

    sget-object v0, Lg/zw;->BODY_ONLY:Lg/zw;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lg/grb;->i:Ljava/util/EnumSet;

    sget-object v0, Lg/zw;->BODY_ONLY_NOWRAP:Lg/zw;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lg/grb;->j:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lg/ejh;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/grb;->l:Lg/ejh;

    iget-object p1, p1, Lg/ejh;->c:Lg/hed;

    iput-object p1, p0, Lg/grb;->m:Lg/hed;

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    iget-object p1, p1, Lg/cci;->ab:Lg/dwg;

    iput-object p1, p0, Lg/grb;->n:Lg/dwg;

    iput-boolean p2, p0, Lg/grb;->k:Z

    return-void
.end method

.method public static o(Lg/eos;Lg/dsj;Lg/hcd;Lg/ggg;)V
    .locals 5

    iget-object v0, p1, Lg/dsj;->d:Lg/ve;

    iget-object v1, p3, Lg/ggg;->e:Lg/cci;

    iget-object v1, v1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1, v0}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p3, Lg/ggg;->i:Z

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lg/ewg;->a:Lg/dba;

    iget-object v1, v0, Lg/ve;->c:Lg/ve;

    const/16 v2, 0x2e

    if-eqz v1, :cond_1

    iget-object v3, v1, Lg/ve;->e:Ljava/lang/String;

    const-string v4, "R"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, p0, v1}, Lg/ggg;->w(Lg/eos;Lg/ve;)V

    invoke-interface {p0, v2}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v0}, Lg/ve;->i()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p0, v0}, Lg/ggg;->w(Lg/eos;Lg/ve;)V

    :goto_0
    invoke-interface {p0, v2}, Lg/eos;->a(C)Lg/eos;

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p0, p2}, Lg/eos;->b(Lg/cdv;)V

    :cond_3
    if-nez p2, :cond_4

    iget-object p1, p1, Lg/dsj;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_4
    iget-object p1, p2, Lg/hcd;->g:Lg/dsj;

    iget-object p1, p1, Lg/dsj;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void
.end method


# virtual methods
.method public final aa(Lg/eos;Lg/gsh;Z)V
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lg/grb;->i:Ljava/util/EnumSet;

    goto :goto_0

    :cond_0
    sget-object p3, Lg/grb;->j:Ljava/util/EnumSet;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lg/grb;->w(Lg/eos;Lg/gsh;Ljava/util/Set;)V

    return-void
.end method

.method public final ab(Lg/eek;Lg/eos;Lg/zw;)V
    .locals 5

    iget-object v0, p0, Lg/grb;->m:Lg/hed;

    iget-object v1, p1, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->REGION_ARG:Lg/hay;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    sget-object v1, Lg/zw;->BODY_ONLY:Lg/zw;

    if-eq p3, v1, :cond_8

    sget-object v2, Lg/zw;->BODY_ONLY_NOWRAP:Lg/zw;

    if-ne p3, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lg/zw;->INLINE:Lg/zw;

    if-eq p3, v1, :cond_2

    iget v2, p1, Lg/ccm;->bp:I

    move-object v3, p2

    check-cast v3, Lg/grs;

    invoke-virtual {v3, v2}, Lg/grs;->ac(I)Lg/grs;

    invoke-static {v3, p1}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    sget-object v2, Lg/csv;->COMMENT_OUT:Lg/csv;

    iget-object v4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "// "

    invoke-interface {v3, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_5

    :cond_2
    :goto_0
    iget-object v2, p1, Lg/eek;->ai:Lg/gks;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lg/gks;->a:Lg/vm;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-eq v2, v3, :cond_6

    :cond_3
    iget-object v2, p1, Lg/eek;->ai:Lg/gks;

    sget-object v3, Lg/csv;->DECLARE_VAR:Lg/csv;

    iget-object v4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, v2, Lg/gks;->a:Lg/vm;

    invoke-virtual {v2}, Lg/vm;->u()Lg/ejb;

    move-result-object v2

    iget-boolean v3, v2, Lg/ejb;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "final "

    invoke-interface {p2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_4
    iget-object v3, v2, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {p0, p2, v3}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    const/16 v3, 0x20

    invoke-interface {p2, v3}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p0, p2, v2}, Lg/grb;->t(Lg/eos;Lg/ejb;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v2, v3}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    :goto_1
    const-string v2, " = "

    invoke-interface {p2, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_6
    sget-object v2, Lg/grb;->h:Ljava/util/EnumSet;

    invoke-virtual {p0, p2, p1, v2}, Lg/grb;->q(Lg/eos;Lg/eek;Ljava/util/Set;)V

    if-eq p3, v1, :cond_7

    const/16 p3, 0x3b

    invoke-interface {p2, p3}, Lg/eos;->a(C)Lg/eos;

    invoke-static {p2, v0, p1}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    if-ne p3, v1, :cond_9

    sget-object p3, Lg/grb;->i:Ljava/util/EnumSet;

    goto :goto_4

    :cond_9
    sget-object p3, Lg/grb;->j:Ljava/util/EnumSet;

    :goto_4
    invoke-virtual {p0, p2, p1, p3}, Lg/grb;->q(Lg/eos;Lg/eek;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    new-instance p3, Lg/bae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error generate insn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1, p2}, Lg/uc;-><init>(Lg/hed;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3
.end method

.method public final ac(Lg/eos;Lg/cwx;)V
    .locals 1

    iget-object v0, p0, Lg/grb;->l:Lg/ejh;

    iget-object v0, v0, Lg/ejh;->d:Lg/ggg;

    invoke-virtual {v0, p1, p2}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    return-void
.end method

.method public final ad(Lg/eos;Lg/gsh;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lg/grs;

    iget-object v1, v0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    iget-object p2, v0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eq v1, p2, :cond_0

    const/16 p2, 0x2e

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    :cond_0
    return-void
.end method

.method public final ae(Lg/eos;Lg/cci;Lg/eew;)V
    .locals 7

    sget-object v0, Lg/acq;->r:Lg/acq;

    invoke-virtual {p2}, Lg/cci;->bd()Lg/cci;

    move-result-object v1

    iget-object v1, v1, Lg/cci;->ad:Lg/gwz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/gwz;->PROCESS_COMPLETE:Lg/gwz;

    if-eq v1, v2, :cond_1

    sget-object v2, Lg/gwz;->GENERATED_AND_UNLOADED:Lg/gwz;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lg/cci;->bd()Lg/cci;

    move-result-object p1

    new-instance p2, Lg/gck;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Expected class to be processed at this point, class: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lg/cci;->ad:Lg/gwz;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iget-object v1, p0, Lg/grb;->m:Lg/hed;

    iget-object v1, v1, Lg/hed;->am:Lg/cci;

    if-eq v1, p2, :cond_7

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/glh;

    iget-object v0, v0, Lg/glh;->f:Lg/cwx;

    invoke-virtual {p2}, Lg/cci;->av()V

    iget-object v1, p2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hed;

    sget-object v3, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lg/hed;->ao:Lg/eys;

    invoke-static {v3}, Lg/gs;->z(Lg/amj;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1, p2}, Lg/eos;->g(Lg/cfr;)V

    const-string v1, "new "

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v1, p0, Lg/grb;->l:Lg/ejh;

    iget-object v1, v1, Lg/ejh;->d:Lg/ggg;

    invoke-virtual {v1, p1, v0}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    iget-object v0, p0, Lg/grb;->m:Lg/hed;

    iget-object v0, v0, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    iget-object v1, p3, Lg/eew;->a:Lg/ayu;

    invoke-virtual {v0, v1}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lg/hed;->az()Ljava/util/List;

    move-result-object v2

    iget-object v3, p3, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {p3, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v5, Lg/gks;

    if-eqz v6, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gks;

    check-cast v5, Lg/gks;

    iget-object v6, v6, Lg/gks;->a:Lg/vm;

    iget-object v5, v5, Lg/gks;->a:Lg/vm;

    invoke-virtual {v5}, Lg/vm;->u()Lg/ejb;

    move-result-object v5

    invoke-virtual {v6, v5}, Lg/vm;->n(Lg/ejb;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p3, v1, v0}, Lg/grb;->x(Lg/eos;Lg/gif;ILg/hed;)V

    const/16 p3, 0x20

    invoke-interface {p1, p3}, Lg/eos;->a(C)Lg/eos;

    new-instance p3, Lg/ggg;

    iget-object v0, p0, Lg/grb;->l:Lg/ejh;

    iget-object v0, v0, Lg/ejh;->d:Lg/ggg;

    iget-object v1, v0, Lg/ggg;->h:Lg/ggg;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    invoke-direct {p3, p2, v0}, Lg/ggg;-><init>(Lg/cci;Lg/ggg;)V

    iget-object v0, p0, Lg/grb;->l:Lg/ejh;

    iget-object v0, v0, Lg/ejh;->b:Lg/gez;

    iput-object v0, p3, Lg/ggg;->b:Lg/gez;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lg/ggg;->t(Lg/eos;Z)V

    iget-object p1, p0, Lg/grb;->m:Lg/hed;

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    invoke-virtual {p1, p2}, Lg/cci;->as(Lg/cci;)V

    return-void

    :cond_7
    invoke-virtual {p2, v0}, Lg/lh;->u(Lg/fky;)V

    sget-object p1, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p2, p1}, Lg/lh;->v(Lg/csv;)V

    iget-object p1, p0, Lg/grb;->m:Lg/hed;

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    invoke-virtual {p1}, Lg/cci;->bd()Lg/cci;

    move-result-object p1

    sget-object p3, Lg/csv;->RESTART_CODEGEN:Lg/csv;

    invoke-virtual {p1, p3}, Lg/lh;->w(Lg/csv;)V

    new-instance p1, Lg/bae;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Anonymous inner class unlimited recursion detected. Convert class to inner: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lg/cci;->ak:Lg/ve;

    iget-object p2, p2, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Lg/eos;Lg/dsj;Lg/gsh;)V
    .locals 3

    iget-object v0, p0, Lg/grb;->m:Lg/hed;

    iget-object v0, v0, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v0, p2}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lg/acq;->ax:Lg/acq;

    iget-object v2, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/gxj;

    if-eqz v1, :cond_2

    iget-object p2, v1, Lg/gxj;->b:Ljava/lang/Object;

    sget-object p3, Lg/gly;->a:[I

    iget-object v0, v1, Lg/gxj;->a:Lg/fly;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    return-void

    :cond_0
    check-cast p2, Lg/gsh;

    invoke-virtual {p0, p1, p2, v0}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :cond_1
    check-cast p2, Lg/ve;

    invoke-virtual {p0, p1, p2}, Lg/grb;->y(Lg/eos;Lg/ve;)V

    const-string p2, ".this"

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_2
    invoke-virtual {p0, p1, p3}, Lg/grb;->ad(Lg/eos;Lg/gsh;)V

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Lg/eos;->b(Lg/cdv;)V

    :cond_3
    if-nez v0, :cond_4

    iget-object p2, p2, Lg/dsj;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_4
    iget-object p2, v0, Lg/hcd;->g:Lg/dsj;

    iget-object p2, p2, Lg/dsj;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void
.end method

.method public final q(Lg/eos;Lg/eek;Ljava/util/Set;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lg/grb;->l:Lg/ejh;

    iget-object v5, v4, Lg/ejh;->d:Lg/ggg;

    sget-object v6, Lg/gly;->b:[I

    iget-object v7, v2, Lg/eek;->ah:Lg/hay;

    iget-object v8, v2, Lg/eek;->aj:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v6, v6, v9

    const-string v10, "] = "

    const-string v12, " = "

    const-string v14, "new "

    iget-object v15, v0, Lg/grb;->m:Lg/hed;

    iget-boolean v9, v0, Lg/grb;->k:Z

    const/4 v11, 0x0

    const/4 v13, 0x1

    packed-switch v6, :pswitch_data_0

    new-instance v1, Lg/bae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown instruction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v15, v2, v3}, Lg/uc;-><init>(Lg/hed;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_0
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    const-string v3, "ret "

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :pswitch_1
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    const-string v3, "jsr -> "

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    check-cast v2, Lg/xi;

    iget v2, v2, Lg/xi;->a:I

    invoke-static {v2}, Lg/ejh;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_2
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v11, v4, :cond_2d

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    invoke-interface {v1, v12}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v2, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v4, "; "

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    add-int/lit8 v11, v11, 0x2

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    invoke-virtual {v2}, Lg/eek;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_4
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fill-array "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_5
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    const-string v2, "move-result"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_6
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v2

    const/16 v3, 0x28

    invoke-interface {v2, v3}, Lg/eos;->a(C)Lg/eos;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gsh;

    invoke-virtual {v0, v1, v3, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    goto :goto_1

    :cond_0
    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_7
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    invoke-interface {v1, v14}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    iget-object v2, v2, Lg/eek;->ai:Lg/gks;

    iget-object v2, v2, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v2}, Lg/cwx;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_8
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    move-object v3, v2

    check-cast v3, Lg/bzm;

    const-string v4, "switch("

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v2, ") {"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-object v2, v1

    check-cast v2, Lg/grs;

    invoke-virtual {v2}, Lg/grs;->aa()V

    invoke-virtual {v3}, Lg/bzm;->ad()Lg/bx;

    move-result-object v4

    iget-object v4, v4, Lg/bx;->c:[I

    array-length v5, v4

    iget-object v6, v3, Lg/bzm;->ab:[Lg/fza;

    const-string v7, "default: goto "

    const-string v8, ": goto "

    const-string v9, "case "

    if-eqz v6, :cond_2

    :goto_2
    if-ge v11, v5, :cond_1

    invoke-virtual {v2, v9}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    aget v10, v4, v11

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v10

    invoke-interface {v10, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    aget-object v10, v6, v11

    invoke-static {v10}, Lg/ejh;->h(Lg/fza;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v10

    const/16 v12, 0x3b

    invoke-interface {v10, v12}, Lg/eos;->a(C)Lg/eos;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    const/16 v12, 0x3b

    invoke-virtual {v2, v7}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v3, v3, Lg/bzm;->z:Lg/fza;

    invoke-static {v3}, Lg/ejh;->h(Lg/fza;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    invoke-interface {v1, v12}, Lg/eos;->a(C)Lg/eos;

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Lg/bzm;->ad()Lg/bx;

    move-result-object v6

    iget-object v6, v6, Lg/bx;->b:[I

    :goto_3
    if-ge v11, v5, :cond_3

    invoke-virtual {v2, v9}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    aget v10, v4, v11

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v10

    invoke-interface {v10, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    aget v10, v6, v11

    invoke-static {v10}, Lg/ejh;->g(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v10

    const/16 v12, 0x3b

    invoke-interface {v10, v12}, Lg/eos;->a(C)Lg/eos;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/16 v12, 0x3b

    invoke-virtual {v2, v7}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget v3, v3, Lg/bzm;->x:I

    invoke-static {v3}, Lg/ejh;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    invoke-interface {v1, v12}, Lg/eos;->a(C)Lg/eos;

    :goto_4
    invoke-virtual {v2}, Lg/grs;->ab()V

    const/16 v1, 0x7d

    invoke-virtual {v2, v1}, Lg/grs;->ad(C)Lg/grs;

    return-void

    :pswitch_9
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    const-string v2, "move-exception"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_a
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    const-string v3, "goto "

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    check-cast v2, Lg/dfy;

    invoke-virtual {v2}, Lg/dfy;->ad()I

    move-result v2

    invoke-static {v2}, Lg/ejh;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_b
    invoke-virtual {v0, v2}, Lg/grb;->v(Lg/eek;)V

    move-object v3, v2

    check-cast v3, Lg/bgw;

    const-string v4, "if ("

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v4, 0x20

    invoke-interface {v1, v4}, Lg/eos;->a(C)Lg/eos;

    iget-object v5, v3, Lg/bgw;->y:Lg/ges;

    invoke-virtual {v5}, Lg/ges;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v5

    invoke-interface {v5, v4}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v2, ") goto "

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    sget-object v2, Lg/ejh;->a:Lg/dba;

    iget-object v2, v3, Lg/bgw;->_br:Lg/fza;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lg/ejh;->h(Lg/fza;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Lg/bgw;->ad()I

    move-result v2

    invoke-static {v2}, Lg/ejh;->g(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_c
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lg/grb;->w(Lg/eos;Lg/gsh;Ljava/util/Set;)V

    return-void

    :pswitch_d
    check-cast v2, Lg/dwk;

    sget-object v5, Lg/zw;->BODY_ONLY:Lg/zw;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v5, 0x28

    invoke-interface {v1, v5}, Lg/eos;->a(C)Lg/eos;

    :cond_5
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    new-instance v7, Lg/fto;

    invoke-direct {v7, v4, v9}, Lg/grb;-><init>(Lg/ejh;Z)V

    invoke-virtual {v5}, Lg/gsh;->ap()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v6}, Lg/gsh;->ar()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, v2, Lg/dwk;->a:Lg/eii;

    new-instance v4, Lg/dfa;

    invoke-direct {v4, v11}, Lg/dfa;-><init>(I)V

    invoke-virtual {v7, v1, v4, v2}, Lg/fto;->c(Lg/eos;Lg/dfa;Lg/eii;)V

    goto :goto_6

    :cond_6
    iget-object v2, v2, Lg/dwk;->a:Lg/eii;

    new-instance v4, Lg/dfa;

    invoke-direct {v4, v11}, Lg/dfa;-><init>(I)V

    invoke-virtual {v7, v1, v4, v2}, Lg/fto;->b(Lg/eos;Lg/dfa;Lg/eii;)V

    const-string v2, " ? "

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v0, v1, v5, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v2, " : "

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v0, v1, v6, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    :goto_6
    if-eqz v3, :cond_2d

    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_e
    if-eqz v9, :cond_2d

    const-string v3, "monitor-exit("

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v13, :cond_7

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    :cond_7
    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_f
    const/16 v3, 0x29

    if-eqz v9, :cond_2d

    const-string v4, "monitor-enter("

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_10
    sget-object v2, Lg/zw;->BODY_ONLY:Lg/zw;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v3, 0x28

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    :cond_8
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gsh;

    invoke-virtual {v0, v1, v4, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, " + "

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_7

    :cond_a
    if-eqz v2, :cond_2d

    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_11
    move-object v3, v2

    check-cast v3, Lg/adz;

    iget-object v3, v3, Lg/adz;->a:Ljava/lang/Object;

    check-cast v3, Lg/dsj;

    invoke-virtual {v0, v1, v3}, Lg/grb;->r(Lg/eos;Lg/dsj;)V

    invoke-interface {v1, v12}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :pswitch_12
    check-cast v2, Lg/adz;

    iget-object v2, v2, Lg/adz;->a:Ljava/lang/Object;

    check-cast v2, Lg/dsj;

    invoke-virtual {v0, v1, v2}, Lg/grb;->r(Lg/eos;Lg/dsj;)V

    return-void

    :pswitch_13
    move-object v3, v2

    check-cast v3, Lg/adz;

    iget-object v3, v3, Lg/adz;->a:Ljava/lang/Object;

    check-cast v3, Lg/dsj;

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lg/grb;->p(Lg/eos;Lg/dsj;Lg/gsh;)V

    invoke-interface {v1, v12}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :pswitch_14
    move-object v3, v2

    check-cast v3, Lg/adz;

    iget-object v3, v3, Lg/adz;->a:Ljava/lang/Object;

    check-cast v3, Lg/dsj;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lg/grb;->p(Lg/eos;Lg/dsj;Lg/gsh;)V

    return-void

    :pswitch_15
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v3, 0x5b

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    invoke-interface {v1, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :pswitch_16
    const/16 v3, 0x5b

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_17
    move-object v3, v2

    check-cast v3, Lg/og;

    if-eqz v9, :cond_b

    iget-object v3, v3, Lg/og;->_ao:Lg/mt;

    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v2, " = {"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v3, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    const-string v2, "} // fill-array"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_b
    sget-object v2, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {v15, v2}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "// fill-array-data instruction"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_c
    move-object v2, v1

    check-cast v2, Lg/grs;

    invoke-virtual {v2}, Lg/grs;->ag()V

    invoke-virtual {v3, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v4

    invoke-virtual {v4}, Lg/cwx;->h()Z

    move-result v5

    if-eqz v5, :cond_d

    instance-of v5, v4, Lg/aoe;

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Lg/cwx;->k()Lg/cwx;

    move-result-object v4

    goto :goto_8

    :cond_d
    iget-object v4, v3, Lg/og;->_ao:Lg/mt;

    iget-object v4, v4, Lg/mt;->i:Lg/gnh;

    invoke-virtual {v4}, Lg/gnh;->j()Lg/cwx;

    move-result-object v4

    :goto_8
    invoke-virtual {v3, v4}, Lg/og;->_ap(Lg/cwx;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_9
    if-ge v11, v4, :cond_2d

    const/16 v12, 0x3b

    if-eqz v11, :cond_e

    invoke-interface {v1, v12}, Lg/eos;->a(C)Lg/eos;

    move-object v5, v1

    check-cast v5, Lg/grs;

    invoke-virtual {v5}, Lg/grs;->ag()V

    :cond_e
    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v5, 0x5b

    invoke-interface {v1, v5}, Lg/eos;->a(C)Lg/eos;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v5

    invoke-interface {v5, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v5

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ekh;

    invoke-virtual {v0, v6}, Lg/grb;->z(Lg/ekh;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :pswitch_18
    check-cast v2, Lg/fs;

    sget-object v3, Lg/csv;->DECLARE_VAR:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v1, v14}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v3, v2, Lg/fs;->a:Lg/cwx;

    sget-object v4, Lg/cwx;->an:Lg/cff;

    new-instance v4, Lg/aoe;

    invoke-direct {v4, v3}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-virtual {v0, v1, v4}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    :cond_f
    const/16 v3, 0x7b

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    iget-object v3, v2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x0

    :cond_10
    if-ge v4, v3, :cond_12

    invoke-virtual {v2, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_11

    const-string v6, ", "

    invoke-interface {v1, v6}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_11
    add-int/2addr v5, v13

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_10

    move-object v5, v1

    check-cast v5, Lg/grs;

    invoke-virtual {v5}, Lg/grs;->ag()V

    goto :goto_a

    :cond_12
    const/16 v4, 0x7d

    invoke-interface {v1, v4}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_19
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v2, ".length"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_1a
    move-object v3, v2

    check-cast v3, Lg/dem;

    iget-object v3, v3, Lg/dem;->a:Lg/cwx;

    invoke-interface {v1, v14}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v3}, Lg/cwx;->e()Lg/cwx;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v4, :cond_13

    const/16 v6, 0x5b

    invoke-interface {v1, v6}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v7

    invoke-virtual {v0, v1, v7, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v7, 0x5d

    invoke-interface {v1, v7}, Lg/eos;->a(C)Lg/eos;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {v3}, Lg/cwx;->i()I

    move-result v2

    :goto_c
    if-ge v5, v2, :cond_2d

    const-string v3, "[]"

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :pswitch_1b
    check-cast v2, Lg/hdc;

    invoke-virtual {v0, v2, v1}, Lg/grb;->u(Lg/hdc;Lg/eos;)V

    return-void

    :pswitch_1c
    check-cast v2, Lg/eew;

    iget-object v3, v2, Lg/eew;->y:Lg/dkz;

    iget-object v4, v15, Lg/hed;->am:Lg/cci;

    iget-object v6, v15, Lg/hed;->am:Lg/cci;

    iget-object v4, v4, Lg/cci;->ab:Lg/dwg;

    iget-object v7, v2, Lg/eew;->a:Lg/ayu;

    iget-object v8, v7, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v4, v8}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v4

    if-eqz v4, :cond_14

    sget-object v8, Lg/acq;->r:Lg/acq;

    iget-object v10, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v8}, Lg/sm;->j(Lg/fky;)Z

    move-result v8

    if-eqz v8, :cond_14

    if-nez v9, :cond_14

    invoke-virtual {v0, v1, v4, v2}, Lg/grb;->ae(Lg/eos;Lg/cci;Lg/eew;)V

    return-void

    :cond_14
    sget-object v4, Lg/dkz;->SELF:Lg/dkz;

    if-eq v3, v4, :cond_23

    iget-object v4, v6, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v4, v7}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v4

    iget-object v7, v7, Lg/ayu;->d:Lg/ve;

    if-eqz v4, :cond_15

    sget-object v8, Lg/acq;->bi:Lg/acq;

    iget-object v9, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v8}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v8

    check-cast v8, Lg/ghf;

    if-eqz v8, :cond_15

    iget-object v8, v8, Lg/ghf;->a:Lg/hed;

    goto :goto_d

    :cond_15
    move-object v8, v4

    :goto_d
    invoke-virtual {v2}, Lg/eew;->ab()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v1, v8}, Lg/eos;->b(Lg/cdv;)V

    const-string v3, "super"

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto/16 :goto_14

    :cond_16
    sget-object v9, Lg/dkz;->THIS:Lg/dkz;

    if-ne v3, v9, :cond_17

    invoke-interface {v1, v8}, Lg/eos;->b(Lg/cdv;)V

    const-string v3, "this"

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto/16 :goto_14

    :cond_17
    if-eqz v4, :cond_1a

    sget-object v3, Lg/csv;->SKIP_FIRST_ARG:Lg/csv;

    iget-object v9, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_e

    :cond_18
    iget-object v3, v4, Lg/hed;->am:Lg/cci;

    invoke-virtual {v3}, Lg/cci;->bk()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    invoke-virtual {v9}, Lg/gsh;->al()Z

    move-result v10

    if-eqz v10, :cond_1b

    :cond_1a
    :goto_e
    const/4 v13, 0x0

    goto :goto_f

    :cond_1b
    invoke-virtual {v9}, Lg/flv;->j()Lg/cwx;

    move-result-object v10

    invoke-virtual {v3}, Lg/cci;->getDeclaringClass()Lg/cci;

    move-result-object v3

    invoke-virtual {v3}, Lg/cci;->au()Lg/cwx;

    move-result-object v3

    invoke-virtual {v10, v3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-virtual {v0, v1, v9}, Lg/grb;->ad(Lg/eos;Lg/gsh;)V

    :goto_f
    invoke-interface {v1, v14}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    if-eqz v8, :cond_1e

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v9, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-interface {v1, v8}, Lg/eos;->b(Lg/cdv;)V

    goto :goto_11

    :cond_1e
    :goto_10
    iget-object v3, v6, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v3, v7}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v3

    invoke-interface {v1, v3}, Lg/eos;->b(Lg/cdv;)V

    :goto_11
    if-eqz v13, :cond_20

    invoke-virtual {v7}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v3, v5, Lg/ggg;->e:Lg/cci;

    iget-object v3, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v3}, Lg/ve;->s()Lg/ve;

    move-result-object v6

    invoke-virtual {v7}, Lg/ve;->s()Lg/ve;

    move-result-object v8

    if-eqz v6, :cond_1f

    invoke-virtual {v6, v8}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_12

    :cond_1f
    invoke-virtual {v3, v8}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_12
    if-nez v3, :cond_21

    invoke-virtual {v5, v7}, Lg/ggg;->u(Lg/ve;)V

    goto :goto_13

    :cond_20
    iget-object v3, v5, Lg/ggg;->e:Lg/cci;

    iget-object v3, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v5, v3, v7}, Lg/ggg;->aa(Lg/ve;Lg/ve;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_21
    :goto_13
    sget-object v3, Lg/acq;->az:Lg/acq;

    iget-object v5, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/apw;

    if-eqz v3, :cond_22

    const/16 v3, 0x3c

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    const/16 v3, 0x3e

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    :cond_22
    :goto_14
    invoke-virtual {v0, v1, v2, v11, v4}, Lg/grb;->x(Lg/eos;Lg/gif;ILg/hed;)V

    return-void

    :cond_23
    new-instance v1, Lg/gck;

    const-string v2, "Constructor \'self\' invoke must be removed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1d
    sget-object v4, Lg/zw;->BODY_ONLY:Lg/zw;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/16 v5, 0x28

    invoke-interface {v1, v5}, Lg/eos;->a(C)Lg/eos;

    :cond_24
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v4, " instanceof "

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    check-cast v2, Lg/adz;

    iget-object v2, v2, Lg/adz;->a:Ljava/lang/Object;

    check-cast v2, Lg/cwx;

    invoke-virtual {v0, v1, v2}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    if-eqz v3, :cond_2d

    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_1e
    const/16 v3, 0x28

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v3, " > "

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v3, " ? 1 : ("

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v3, " == "

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v2, " ? 0 : -1))"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_1f
    const-string v3, "throw "

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :pswitch_20
    const-string v2, "continue"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_21
    const-string v3, "break"

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    sget-object v3, Lg/acq;->x:Lg/acq;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/dhu;

    if-eqz v2, :cond_2d

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    move-result-object v1

    iget-object v3, v4, Lg/ejh;->b:Lg/gez;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loop"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lg/dhu;->a:Lg/gcv;

    iget v2, v2, Lg/gcv;->a:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lg/gez;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_22
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "return "

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :cond_25
    const-string v2, "return"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_23
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v4}, Lg/flv;->j()Lg/cwx;

    move-result-object v4

    sget-object v5, Lg/cwx;->at:Lg/cff;

    if-ne v4, v5, :cond_26

    const/16 v4, 0x21

    goto :goto_15

    :cond_26
    const/16 v4, 0x7e

    :goto_15
    invoke-virtual {v0, v1, v2, v3, v4}, Lg/grb;->s(Lg/eos;Lg/eek;Ljava/util/Set;C)V

    return-void

    :pswitch_24
    const/16 v4, 0x2d

    invoke-virtual {v0, v1, v2, v3, v4}, Lg/grb;->s(Lg/eos;Lg/eek;Ljava/util/Set;C)V

    return-void

    :pswitch_25
    check-cast v2, Lg/ame;

    sget-object v4, Lg/csv;->ARITH_ONEARG:Lg/csv;

    iget-object v5, v2, Lg/lh;->l:Lg/sm;

    iget-object v6, v2, Lg/ame;->d:Lg/bvj;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v2, Lg/ekh;

    if-eqz v4, :cond_28

    sget-object v4, Lg/bvj;->ADD:Lg/bvj;

    if-eq v6, v4, :cond_27

    sget-object v4, Lg/bvj;->SUB:Lg/bvj;

    if-ne v6, v4, :cond_28

    :cond_27
    move-object v4, v2

    check-cast v4, Lg/ekh;

    iget-wide v7, v4, Lg/ekh;->a:J

    const-wide/16 v9, 0x1

    cmp-long v5, v7, v9

    if-nez v5, :cond_28

    invoke-virtual {v4}, Lg/ekh;->e()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v0, v1, v3, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    invoke-virtual {v6}, Lg/bvj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_28
    invoke-virtual {v0, v1, v3, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    move-result-object v3

    invoke-virtual {v6}, Lg/bvj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v3

    const-string v4, "= "

    invoke-interface {v3, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v0, v1, v2, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :cond_29
    sget-object v4, Lg/zw;->BODY_ONLY:Lg/zw;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Lg/csv;->DONT_WRAP:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_16

    :cond_2a
    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_2b

    const/16 v5, 0x28

    invoke-interface {v1, v5}, Lg/eos;->a(C)Lg/eos;

    :cond_2b
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const/16 v4, 0x20

    invoke-interface {v1, v4}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v6}, Lg/bvj;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-interface {v1, v4}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    if-eqz v3, :cond_2d

    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    return-void

    :pswitch_26
    sget-object v4, Lg/zw;->BODY_ONLY:Lg/zw;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x28

    if-eqz v3, :cond_2c

    invoke-interface {v1, v5}, Lg/eos;->a(C)Lg/eos;

    :cond_2c
    invoke-interface {v1, v5}, Lg/eos;->a(C)Lg/eos;

    move-object v4, v2

    check-cast v4, Lg/adz;

    iget-object v4, v4, Lg/adz;->a:Ljava/lang/Object;

    check-cast v4, Lg/cwx;

    invoke-virtual {v0, v1, v4}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    const-string v4, ") "

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    if-eqz v3, :cond_2d

    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lg/eos;->a(C)Lg/eos;

    :cond_2d
    return-void

    :pswitch_27
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    return-void

    :pswitch_28
    invoke-virtual {v2, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    check-cast v2, Lg/ekh;

    invoke-virtual {v0, v2}, Lg/grb;->z(Lg/ekh;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_29
    check-cast v2, Lg/dkd;

    iget-object v2, v2, Lg/dkd;->a:Lg/cwx;

    invoke-virtual {v0, v1, v2}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    const-string v2, ".class"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :pswitch_2a
    check-cast v2, Lg/epw;

    iget-object v2, v2, Lg/epw;->a:Ljava/lang/String;

    iget-object v3, v15, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v3, v3, Lg/dwg;->t:Lg/foj;

    invoke-virtual {v3, v2}, Lg/foj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lg/eos;Lg/dsj;)V
    .locals 4

    iget-object v0, p0, Lg/grb;->n:Lg/dwg;

    invoke-virtual {v0, p2}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/hcd;->f:Lg/cci;

    sget-object v2, Lg/csv;->INLINE_INSTANCE_FIELD:Lg/csv;

    iget-object v3, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lg/acq;->r:Lg/acq;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->j(Lg/fky;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lg/acq;->bj:Lg/acq;

    iget-object v3, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/gos;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lg/gos;->b:Lg/eek;

    instance-of v3, v2, Lg/eew;

    if-eqz v3, :cond_0

    sget-object p2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v0, p2}, Lg/lh;->w(Lg/csv;)V

    check-cast v2, Lg/eew;

    invoke-virtual {p0, p1, v1, v2}, Lg/grb;->ae(Lg/eos;Lg/cci;Lg/eew;)V

    return-void

    :cond_0
    iget-object v1, p0, Lg/grb;->l:Lg/ejh;

    iget-object v1, v1, Lg/ejh;->d:Lg/ggg;

    invoke-static {p1, p2, v0, v1}, Lg/grb;->o(Lg/eos;Lg/dsj;Lg/hcd;Lg/ggg;)V

    return-void
.end method

.method public final s(Lg/eos;Lg/eek;Ljava/util/Set;C)V
    .locals 1

    sget-object v0, Lg/zw;->BODY_ONLY:Lg/zw;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 v0, 0x28

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    :cond_0
    invoke-interface {p1, p4}, Lg/eos;->a(C)Lg/eos;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p4}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    if-eqz p3, :cond_1

    const/16 p2, 0x29

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    :cond_1
    return-void
.end method

.method public final t(Lg/eos;Lg/ejb;)V
    .locals 2

    iget-object v0, p0, Lg/grb;->l:Lg/ejh;

    iget-object v0, v0, Lg/ejh;->b:Lg/gez;

    invoke-virtual {v0, p2}, Lg/gez;->n(Lg/ejb;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lg/grs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lg/flc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/grb;->m:Lg/hed;

    invoke-virtual {p2}, Lg/ejb;->h()Lg/vm;

    move-result-object p2

    invoke-static {v1, p2}, Lg/cmw;->h(Lg/hed;Lg/vm;)Lg/cmw;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->g(Lg/cfr;)V

    :cond_0
    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void
.end method

.method public final u(Lg/hdc;Lg/eos;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lg/hdc;->ab:Lg/eqp;

    iget-object v4, v0, Lg/hdc;->ad:Lg/ayu;

    sget-object v5, Lg/eqp;->CUSTOM:Lg/eqp;

    iget-boolean v6, v1, Lg/grb;->k:Z

    const/16 v7, 0x28

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v3, v5, :cond_16

    check-cast v0, Lg/arl;

    iget-boolean v3, v0, Lg/arl;->_bn:Z

    iget-object v4, v0, Lg/eek;->aj:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lg/arl;->d:Lg/gif;

    instance-of v4, v3, Lg/eew;

    if-eqz v4, :cond_0

    check-cast v3, Lg/eew;

    iget-object v0, v3, Lg/eew;->a:Lg/ayu;

    iget-object v0, v0, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v1, v2, v0}, Lg/grb;->y(Lg/eos;Lg/ve;)V

    const-string v0, "::new"

    invoke-interface {v2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_0
    instance-of v4, v3, Lg/hdc;

    if-eqz v4, :cond_2

    check-cast v3, Lg/hdc;

    iget-object v3, v3, Lg/hdc;->ad:Lg/ayu;

    iget-object v4, v0, Lg/arl;->_bm:Lg/ecx;

    sget-object v5, Lg/ecx;->INVOKE_STATIC:Lg/ecx;

    if-ne v4, v5, :cond_1

    iget-object v0, v3, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v1, v2, v0}, Lg/grb;->y(Lg/eos;Lg/ve;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v8}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v9}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    :goto_0
    const-string v0, "::"

    invoke-interface {v2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v0

    iget-object v2, v3, Lg/ayu;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_2
    return-void

    :cond_3
    const/16 v3, 0x7d

    const-string v5, " -> {"

    const/16 v10, 0x29

    const-string v11, ", "

    const-string v12, "()"

    if-nez v6, :cond_d

    iget-boolean v13, v0, Lg/arl;->y:Z

    if-nez v13, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v6, v0, Lg/arl;->d:Lg/gif;

    sget-object v13, Lg/acq;->j:Lg/acq;

    iget-object v6, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v13}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v6

    check-cast v6, Lg/hed;

    new-instance v13, Lg/ejh;

    iget-object v14, v1, Lg/grb;->l:Lg/ejh;

    iget-object v15, v14, Lg/ejh;->d:Lg/ggg;

    invoke-direct {v13, v15, v6}, Lg/ejh;-><init>(Lg/ggg;Lg/hed;)V

    iget-object v14, v14, Lg/ejh;->b:Lg/gez;

    iget-object v15, v13, Lg/ejh;->b:Lg/gez;

    iget-object v15, v15, Lg/gez;->e:Ljava/lang/Object;

    check-cast v15, Ljava/util/HashSet;

    iget-object v14, v14, Lg/gez;->e:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashSet;

    invoke-interface {v15, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v14, v0, Lg/arl;->a:Lg/ayu;

    iget-object v14, v14, Lg/ayu;->c:Ljava/util/List;

    invoke-virtual {v6}, Lg/hed;->az()Ljava/util/List;

    move-result-object v6

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v2, v12}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int v14, v12, v14

    sub-int v15, v12, v14

    if-le v15, v9, :cond_6

    invoke-interface {v2, v7}, Lg/eos;->a(C)Lg/eos;

    :cond_6
    move v7, v14

    :goto_1
    if-ge v7, v12, :cond_8

    if-eq v7, v14, :cond_7

    invoke-interface {v2, v11}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_7
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lg/gks;

    iget-object v8, v8, Lg/gks;->a:Lg/vm;

    invoke-virtual {v8}, Lg/vm;->u()Lg/ejb;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lg/grb;->t(Lg/eos;Lg/ejb;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    if-le v15, v9, :cond_9

    invoke-interface {v2, v10}, Lg/eos;->a(C)Lg/eos;

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v7, v0, Lg/arl;->_bm:Lg/ecx;

    sget-object v8, Lg/ecx;->INVOKE_STATIC:Lg/ecx;

    if-ne v7, v8, :cond_a

    const/4 v9, 0x0

    :cond_a
    const/4 v8, 0x0

    :goto_3
    if-ge v9, v4, :cond_c

    invoke-virtual {v0, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v7, Lg/gks;

    if-eqz v10, :cond_b

    check-cast v7, Lg/gks;

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gks;

    iget-object v8, v8, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/gks;->a:Lg/vm;

    invoke-virtual {v7}, Lg/vm;->u()Lg/ejb;

    move-result-object v7

    invoke-virtual {v8, v7}, Lg/vm;->n(Lg/ejb;)V

    add-int/lit8 v9, v9, 0x1

    move v8, v10

    goto :goto_3

    :cond_b
    new-instance v0, Lg/gck;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected argument type in lambda call: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-interface {v2, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-object v0, v2

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->aa()V

    invoke-virtual {v13, v2}, Lg/ejh;->i(Lg/eos;)V

    invoke-virtual {v0}, Lg/grs;->ab()V

    invoke-virtual {v0, v3}, Lg/grs;->ad(C)Lg/grs;

    return-void

    :cond_d
    :goto_4
    const-string v8, "/* ERROR: "

    :try_start_0
    iget-object v13, v0, Lg/arl;->d:Lg/gif;

    iget-object v14, v0, Lg/arl;->a:Lg/ayu;

    iget-object v15, v14, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_e

    invoke-interface {v2, v12}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_e
    invoke-interface {v2, v7}, Lg/eos;->a(C)Lg/eos;

    iget-object v7, v13, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int v12, v7, v15

    iget-object v15, v0, Lg/arl;->_bm:Lg/ecx;

    sget-object v3, Lg/ecx;->INVOKE_STATIC:Lg/ecx;

    if-eq v15, v3, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/gsh;->al()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v13, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    sget-object v3, Lg/csv;->THIS:Lg/csv;

    invoke-virtual {v0, v3}, Lg/lh;->w(Lg/csv;)V

    :cond_f
    if-ltz v12, :cond_11

    move v0, v12

    :goto_5
    if-ge v0, v7, :cond_12

    if-eq v0, v12, :cond_10

    invoke-interface {v2, v11}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_10
    invoke-virtual {v13, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v9}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " */"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_12
    invoke-interface {v2, v10}, Lg/eos;->a(C)Lg/eos;

    :goto_6
    invoke-interface {v2, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    if-eqz v6, :cond_13

    const-string v0, " // "

    invoke-interface {v2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v0

    invoke-virtual {v14}, Lg/ayu;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_13
    move-object v0, v2

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->aa()V

    move-object v0, v2

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->ag()V

    iget-object v0, v14, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v0, Lg/cff;

    if-eqz v3, :cond_14

    check-cast v0, Lg/cff;

    iget-object v0, v0, Lg/cff;->a:Lg/bjt;

    sget-object v3, Lg/bjt;->VOID:Lg/bjt;

    if-ne v0, v3, :cond_14

    const/4 v8, 0x1

    goto :goto_7

    :cond_14
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_15

    const-string v0, "return "

    invoke-interface {v2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_15
    sget-object v0, Lg/zw;->INLINE:Lg/zw;

    invoke-virtual {v1, v13, v2, v0}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V

    const-string v0, ";"

    invoke-interface {v2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-object v0, v2

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->ab()V

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Lg/grs;->ad(C)Lg/grs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_8
    new-instance v2, Lg/gck;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to generate \'invoke-custom\' instruction: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    iget-object v5, v1, Lg/grb;->m:Lg/hed;

    iget-object v8, v5, Lg/hed;->am:Lg/cci;

    iget-object v5, v5, Lg/hed;->am:Lg/cci;

    iget-object v8, v8, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v8, v4}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v8

    iget-object v10, v4, Lg/ayu;->f:Ljava/lang/String;

    iget-object v11, v4, Lg/ayu;->d:Lg/ve;

    sget-object v12, Lg/eqp;->CUSTOM_RAW:Lg/eqp;

    const-string v13, ") "

    if-ne v3, v12, :cond_1a

    check-cast v0, Lg/btg;

    if-eqz v6, :cond_18

    const-string v3, "call_site("

    invoke-interface {v2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-object v3, v2

    check-cast v3, Lg/grs;

    invoke-virtual {v3}, Lg/grs;->aa()V

    iget-object v4, v0, Lg/btg;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ghr;

    invoke-virtual {v5}, Lg/ghr;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    goto :goto_9

    :cond_17
    invoke-virtual {v3}, Lg/grs;->ab()V

    const-string v4, ").invoke"

    invoke-virtual {v3, v4}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v8}, Lg/grb;->x(Lg/eos;Lg/gif;ILg/hed;)V

    return-void

    :cond_18
    iget-object v3, v0, Lg/hdc;->ad:Lg/ayu;

    iget-object v3, v3, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lg/cff;

    if-eqz v4, :cond_19

    move-object v4, v3

    check-cast v4, Lg/cff;

    iget-object v4, v4, Lg/cff;->a:Lg/bjt;

    sget-object v5, Lg/bjt;->VOID:Lg/bjt;

    if-ne v4, v5, :cond_19

    goto :goto_a

    :cond_19
    invoke-interface {v2, v7}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v1, v2, v3}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    invoke-interface {v2, v13}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_a
    iget-object v3, v0, Lg/btg;->a:Lg/hdc;

    invoke-virtual {v1, v3, v2}, Lg/grb;->u(Lg/hdc;Lg/eos;)V

    const-string v3, ".dynamicInvoker().invoke"

    invoke-interface {v2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v8}, Lg/grb;->x(Lg/eos;Lg/gif;ILg/hed;)V

    const-string v0, " /* invoke-custom */"

    invoke-interface {v2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_1a
    iget-object v6, v0, Lg/hdc;->ab:Lg/eqp;

    sget-object v12, Lg/eqp;->POLYMORPHIC:Lg/eqp;

    if-ne v6, v12, :cond_1b

    goto :goto_b

    :cond_1b
    sget-object v12, Lg/eqp;->VIRTUAL:Lg/eqp;

    if-ne v6, v12, :cond_1d

    iget-object v6, v11, Lg/ve;->b:Ljava/lang/String;

    const-string v12, "java.lang.invoke.MethodHandle"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "invoke"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    const-string v6, "invokeExact"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_1c
    :goto_b
    invoke-interface {v2, v7}, Lg/eos;->a(C)Lg/eos;

    iget-object v6, v4, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {v1, v2, v6}, Lg/grb;->ac(Lg/eos;Lg/cwx;)V

    invoke-interface {v2, v13}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_1d
    sget-object v6, Lg/gly;->c:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    const/16 v6, 0x2e

    packed-switch v3, :pswitch_data_0

    goto :goto_c

    :pswitch_0
    iget-object v3, v5, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v3, v11}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1, v2, v11}, Lg/grb;->y(Lg/eos;Lg/ve;)V

    invoke-interface {v2, v6}, Lg/eos;->a(C)Lg/eos;

    :cond_1e
    :goto_c
    const/4 v9, 0x0

    goto/16 :goto_10

    :pswitch_1
    iget-object v3, v11, Lg/ve;->d:Lg/cwx;

    move-object v7, v5

    :goto_d
    iget-object v12, v7, Lg/cci;->ak:Lg/ve;

    iget-object v13, v1, Lg/grb;->n:Lg/dwg;

    iget-object v14, v12, Lg/ve;->d:Lg/cwx;

    invoke-static {v13, v14, v3}, Lg/cwx;->be(Lg/dwg;Lg/cwx;Lg/cwx;)Z

    move-result v13

    if-eqz v13, :cond_1f

    goto :goto_e

    :cond_1f
    iget-object v12, v7, Lg/cci;->ai:Lg/cci;

    if-ne v12, v7, :cond_22

    const/4 v12, 0x0

    :goto_e
    if-nez v12, :cond_20

    const-string v3, "super/*"

    invoke-interface {v2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v3

    iget-object v5, v11, Lg/ve;->b:Ljava/lang/String;

    invoke-interface {v3, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v3

    const-string v5, "*/"

    invoke-interface {v3, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_f

    :cond_20
    iget-object v3, v5, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v12, v3}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "super"

    invoke-interface {v2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_f

    :cond_21
    invoke-virtual {v1, v2, v12}, Lg/grb;->y(Lg/eos;Lg/ve;)V

    const-string v3, ".super"

    invoke-interface {v2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_f
    invoke-interface {v2, v6}, Lg/eos;->a(C)Lg/eos;

    goto :goto_10

    :cond_22
    move-object v7, v12

    goto :goto_d

    :pswitch_2
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Lg/gsh;->ao()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {v3}, Lg/gsh;->al()Z

    move-result v6

    if-eqz v6, :cond_23

    goto :goto_10

    :cond_23
    iget-object v5, v5, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v3}, Lg/flv;->j()Lg/cwx;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v5

    if-eqz v5, :cond_24

    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_10

    :cond_24
    invoke-virtual {v1, v2, v3}, Lg/grb;->ad(Lg/eos;Lg/gsh;)V

    :goto_10
    if-eqz v8, :cond_25

    invoke-interface {v2, v8}, Lg/eos;->b(Lg/cdv;)V

    :cond_25
    sget-object v3, Lg/csv;->FORCE_RAW_NAME:Lg/csv;

    iget-object v5, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_11

    :cond_26
    if-eqz v8, :cond_27

    iget-object v3, v8, Lg/hed;->al:Lg/ayu;

    iget-object v3, v3, Lg/ayu;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_11

    :cond_27
    iget-object v3, v4, Lg/ayu;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_11
    invoke-virtual {v1, v2, v0, v9, v8}, Lg/grb;->x(Lg/eos;Lg/gif;ILg/hed;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Lg/eek;)V
    .locals 2

    iget-boolean v0, p0, Lg/grb;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " instruction can be used only in fallback mode"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lg/bae;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/grb;->m:Lg/hed;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, v1, Lg/hed;->am:Lg/cci;

    invoke-virtual {p1}, Lg/cci;->bd()Lg/cci;

    move-result-object p1

    sget-object v1, Lg/csv;->RESTART_CODEGEN:Lg/csv;

    invoke-virtual {p1, v1}, Lg/lh;->w(Lg/csv;)V

    throw v0
.end method

.method public final w(Lg/eos;Lg/gsh;Ljava/util/Set;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lg/gks;

    if-eqz v0, :cond_5

    check-cast p2, Lg/gks;

    move-object p3, p1

    check-cast p3, Lg/grs;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p3, Lg/flc;

    if-eqz p3, :cond_2

    iget-object p3, p2, Lg/gks;->a:Lg/vm;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/grb;->m:Lg/hed;

    invoke-static {v1, p3}, Lg/cmw;->h(Lg/hed;Lg/vm;)Lg/cmw;

    move-result-object p3

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p3, Lg/cmw;->g:Lg/fbu;

    :goto_1
    invoke-interface {p1, v0}, Lg/eos;->b(Lg/cdv;)V

    :cond_2
    iget-object p3, p0, Lg/grb;->l:Lg/ejh;

    iget-object p3, p3, Lg/ejh;->b:Lg/gez;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean p3, p3, Lg/gez;->g:Z

    if-eqz p3, :cond_4

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "r"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lg/gks;->e:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_5
    instance-of v0, p2, Lg/ekh;

    const/16 v1, 0x29

    const/16 v2, 0x28

    if-eqz v0, :cond_7

    check-cast p2, Lg/ekh;

    invoke-virtual {p0, p2}, Lg/grb;->z(Lg/ekh;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lg/zw;->BODY_ONLY_NOWRAP:Lg/zw;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1, v2}, Lg/eos;->a(C)Lg/eos;

    move-result-object p1

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    return-void

    :cond_6
    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_7
    instance-of v0, p2, Lg/cly;

    if-eqz v0, :cond_9

    check-cast p2, Lg/cly;

    iget-object p2, p2, Lg/cly;->a:Lg/eek;

    sget-object v0, Lg/csv;->FORCE_ASSIGN_INLINE:Lg/csv;

    iget-object v3, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1, v2}, Lg/eos;->a(C)Lg/eos;

    sget-object p3, Lg/zw;->INLINE:Lg/zw;

    invoke-virtual {p0, p2, p1, p3}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    return-void

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lg/grb;->q(Lg/eos;Lg/eek;Ljava/util/Set;)V

    return-void

    :cond_9
    instance-of p3, p2, Lg/add;

    if-eqz p3, :cond_a

    check-cast p2, Lg/ehh;

    invoke-interface {p2}, Lg/ehh;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_a
    new-instance p1, Lg/bae;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown arg type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x(Lg/eos;Lg/gif;ILg/hed;)V
    .locals 9

    if-eqz p4, :cond_0

    sget-object v0, Lg/csv;->SKIP_FIRST_ARG:Lg/csv;

    iget-object v1, p4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iget-object v1, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    invoke-interface {p1, v2}, Lg/eos;->a(C)Lg/eos;

    if-nez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lg/acq;->ab:Lg/acq;

    iget-object p4, p4, Lg/lh;->l:Lg/sm;

    invoke-virtual {p4, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p4

    check-cast p4, Lg/cse;

    :goto_1
    if-ge v0, v1, :cond_a

    const/4 v2, 0x1

    :goto_2
    if-ge v0, v1, :cond_a

    invoke-virtual {p2, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    sget-object v4, Lg/csv;->SKIP_ARG:Lg/csv;

    iget-object v5, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz p4, :cond_2

    sub-int v4, v0, p3

    iget-object v5, p4, Lg/cse;->a:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :cond_2
    const-string v4, ", "

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {p1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_3
    add-int/lit8 v6, v1, -0x1

    if-ne v0, v6, :cond_8

    sget-object v6, Lg/csv;->VARARG_CALL:Lg/csv;

    iget-object v7, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Lg/flv;->j()Lg/cwx;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v6, Lg/aoe;

    if-eqz v6, :cond_8

    instance-of v6, v3, Lg/cly;

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v6, v3

    check-cast v6, Lg/cly;

    iget-object v6, v6, Lg/cly;->a:Lg/eek;

    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->FILLED_NEW_ARRAY:Lg/hay;

    if-eq v7, v8, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, v6, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_9

    invoke-virtual {v6, v7}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v5}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    add-int/lit8 v8, v3, -0x1

    if-ge v7, v8, :cond_7

    invoke-interface {p1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {p0, p1, v3, v5}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    const/16 p2, 0x29

    invoke-interface {p1, p2}, Lg/eos;->a(C)Lg/eos;

    return-void
.end method

.method public final y(Lg/eos;Lg/ve;)V
    .locals 1

    iget-object v0, p0, Lg/grb;->l:Lg/ejh;

    iget-object v0, v0, Lg/ejh;->d:Lg/ggg;

    invoke-virtual {v0, p1, p2}, Lg/ggg;->w(Lg/eos;Lg/ve;)V

    return-void
.end method

.method public final z(Lg/ekh;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lg/pp;->a:Lg/dba;

    iget-wide v1, p1, Lg/ekh;->a:J

    iget-object v3, p1, Lg/flv;->h:Lg/cwx;

    iget-object v0, p0, Lg/grb;->m:Lg/hed;

    iget-object v0, v0, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    iget-object v4, v0, Lg/dwg;->t:Lg/foj;

    sget-object v0, Lg/csv;->EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    iget-boolean v5, p0, Lg/grb;->k:Z

    invoke-static/range {v1 .. v6}, Lg/pp;->b(JLg/cwx;Lg/foj;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
