.class public final Lg/ejh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Lg/gez;

.field public final c:Lg/hed;

.field public final d:Lg/ggg;

.field public final e:Lg/ffr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ejh;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ejh;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/ggg;Lg/hed;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ejh;->c:Lg/hed;

    iput-object p1, p0, Lg/ejh;->d:Lg/ggg;

    iget-object v0, p1, Lg/ggg;->j:Lg/ffr;

    iput-object v0, p0, Lg/ejh;->e:Lg/ffr;

    new-instance v0, Lg/gez;

    invoke-direct {v0, p1, p2}, Lg/gez;-><init>(Lg/ggg;Lg/hed;)V

    iput-object v0, p0, Lg/ejh;->b:Lg/gez;

    return-void
.end method

.method public static f(Lg/hed;)Lg/ejh;
    .locals 7

    new-instance v0, Lg/ggg;

    iget-object v1, p0, Lg/hed;->am:Lg/cci;

    const/4 v5, 0x1

    sget-object v6, Lg/csu;->AUTO:Lg/csu;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lg/ggg;-><init>(Lg/cci;Lg/ggg;ZZZLg/csu;)V

    new-instance v1, Lg/ejh;

    invoke-direct {v1, v0, p0}, Lg/ejh;-><init>(Lg/ggg;Lg/hed;)V

    return-object v1
.end method

.method public static g(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p0, :cond_0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "LB_%x"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "L%x"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lg/fza;)Ljava/lang/String;
    .locals 2

    iget p0, p0, Lg/fza;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "L%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final i(Lg/eos;)V
    .locals 4

    iget-object v0, p0, Lg/ejh;->c:Lg/hed;

    iget-object v1, v0, Lg/hed;->am:Lg/cci;

    iget-object v2, v1, Lg/cci;->ab:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->i:Lg/ur;

    invoke-virtual {v1}, Lg/cci;->bd()Lg/cci;

    move-result-object v1

    sget-object v3, Lg/acq;->w:Lg/acq;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, v2, Lg/ur;->aa:Lg/qp;

    sget-object v2, Lg/cjb;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lg/eis;->FALLBACK_MODE:Lg/eis;

    invoke-virtual {p0, p1, v0}, Lg/ejh;->n(Lg/eos;Lg/eis;)V

    return-void

    :cond_1
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    if-nez v1, :cond_2

    check-cast p1, Lg/grs;

    const-string v0, "// Blocks not ready for simple mode, using fallback"

    invoke-virtual {p1, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    sget-object v0, Lg/eis;->FALLBACK_MODE:Lg/eis;

    invoke-virtual {p0, p1, v0}, Lg/ejh;->n(Lg/eos;Lg/eis;)V

    return-void

    :cond_2
    iget-object v1, v0, Lg/hed;->am:Lg/cci;

    iget-object v1, v1, Lg/cci;->ab:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->i:Lg/ur;

    iget-object v2, v1, Lg/ur;->j:Lg/gpn;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/flc;

    invoke-direct {v2, v1}, Lg/flc;-><init>(Lg/ur;)V

    :try_start_0
    move-object v1, p1

    check-cast v1, Lg/grs;

    iget v1, v1, Lg/grs;->z:I

    iput v1, v2, Lg/grs;->z:I

    invoke-virtual {v2}, Lg/grs;->af()V

    invoke-virtual {p0, v2}, Lg/ejh;->o(Lg/flc;)V

    invoke-interface {p1, v2}, Lg/eos;->c(Lg/flc;)Lg/eos;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Simple mode code generation failed"

    invoke-static {v0, v2, v1}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lg/bzu;->a:Ljava/util/regex/Pattern;

    move-object v0, p1

    check-cast v0, Lg/grs;

    const-string v3, "/* ERROR: "

    invoke-virtual {v0, v3}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-interface {v0, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v0}, Lg/grs;->aa()V

    invoke-static {v0, v1}, Lg/evh;->j(Lg/eos;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lg/grs;->ab()V

    const-string v1, "*/"

    invoke-interface {v0, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {p0, p1}, Lg/ejh;->l(Lg/eos;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lg/ejh;->j(Lg/eos;)V

    return-void

    :cond_4
    iget-object v1, p0, Lg/ejh;->d:Lg/ggg;

    iget-boolean v1, v1, Lg/ggg;->c:Z

    if-nez v1, :cond_6

    iget-object v0, v0, Lg/hed;->ao:Lg/eys;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lg/ejh;->j(Lg/eos;)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lg/ejh;->l(Lg/eos;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final j(Lg/eos;)V
    .locals 5

    const-string v0, "Method code generation error"

    iget-object v1, p0, Lg/ejh;->c:Lg/hed;

    :try_start_0
    new-instance v2, Lg/fsw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/grb;-><init>(Lg/ejh;Z)V

    iget-object v3, v1, Lg/hed;->ao:Lg/eys;

    invoke-virtual {v2, p1, v3}, Lg/fsw;->b(Lg/eos;Lg/amj;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/BootstrapMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    iget-object v3, v1, Lg/hed;->am:Lg/cci;

    invoke-virtual {v3}, Lg/cci;->bd()Lg/cci;

    move-result-object v3

    sget-object v4, Lg/csv;->RESTART_CODEGEN:Lg/csv;

    iget-object v3, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0, v2}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lg/bzu;->g(Lg/eos;Lg/ebh;)V

    invoke-virtual {p0, p1}, Lg/ejh;->l(Lg/eos;)V

    goto :goto_0

    :cond_0
    throw v2

    :catch_1
    new-instance v2, Lg/blf;

    const-string v3, "StackOverflow"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lg/bzu;->g(Lg/eos;Lg/ebh;)V

    invoke-virtual {p0, p1}, Lg/ejh;->l(Lg/eos;)V

    :goto_0
    return-void
.end method

.method public final k(Lg/eos;Lg/eek;Z)V
    .locals 3

    sget-object v0, Lg/acq;->al:Lg/acq;

    iget-object p2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {p2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p2

    check-cast p2, Lg/coe;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "     // Catch:"

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object p2, p2, Lg/coe;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aea;

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Lg/eos;->a(C)Lg/eos;

    iget-object v1, p0, Lg/ejh;->d:Lg/ggg;

    invoke-virtual {v0}, Lg/aea;->l()Lg/cwx;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lg/ggg;->o(Lg/eos;Lg/cwx;)V

    const-string v1, " -> "

    invoke-interface {p1, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    if-eqz p3, :cond_1

    iget v0, v0, Lg/aea;->h:I

    invoke-static {v0}, Lg/ejh;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/aea;->i:Lg/fza;

    invoke-static {v0}, Lg/ejh;->h(Lg/fza;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final l(Lg/eos;)V
    .locals 4

    sget-object v0, Lg/afa;->ERROR:Lg/afa;

    iget-object v1, p0, Lg/ejh;->c:Lg/hed;

    invoke-virtual {v1, v0}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v0

    iget-object v2, v1, Lg/hed;->al:Lg/ayu;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/grs;

    const-string v3, "/*"

    invoke-virtual {v0, v3}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    sget-object v3, Lg/eis;->COMMENTED_DUMP:Lg/eis;

    invoke-virtual {p0, v0, v3}, Lg/ejh;->n(Lg/eos;Lg/eis;)V

    const-string v3, "*/"

    invoke-virtual {v0, v3}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    :cond_0
    check-cast p1, Lg/grs;

    const-string v0, "throw new UnsupportedOperationException(\"Method not generated: "

    invoke-virtual {p1, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v0, v1, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    move-result-object p1

    iget-object v0, v2, Lg/ayu;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    const/16 v0, 0x28

    invoke-interface {p1, v0}, Lg/eos;->a(C)Lg/eos;

    move-result-object p1

    iget-object v0, v2, Lg/ayu;->c:Ljava/util/List;

    const-string v1, ", "

    invoke-static {v1, v0}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    const-string v0, "):"

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    iget-object v0, v2, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p1

    const-string v0, "\");"

    invoke-interface {p1, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void
.end method

.method public final m(Lg/eos;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/ejh;->c:Lg/hed;

    iget-object v3, v2, Lg/hed;->al:Lg/ayu;

    iget-object v4, v2, Lg/hed;->al:Lg/ayu;

    iget-object v5, v2, Lg/hed;->am:Lg/cci;

    invoke-virtual {v3}, Lg/ayu;->m()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lg/grs;

    invoke-virtual {v3}, Lg/grs;->ag()V

    invoke-interface {v1, v2}, Lg/eos;->g(Lg/cfr;)V

    const-string v2, "static"

    invoke-interface {v1, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return v6

    :cond_0
    sget-object v3, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    iget-object v7, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lg/grs;

    invoke-virtual {v3}, Lg/grs;->ag()V

    invoke-interface {v1, v2}, Lg/eos;->g(Lg/cfr;)V

    return v7

    :cond_1
    sget-object v3, Lg/acq;->h:Lg/acq;

    iget-object v8, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/fpr;

    const-string v8, ", "

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v9, v3, Lg/fpr;->a:Ljava/util/HashSet;

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v1

    check-cast v9, Lg/grs;

    const-string v10, "@Override"

    invoke-virtual {v9, v10}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    sget-object v10, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {v2, v10}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, " // "

    invoke-interface {v9, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v3, v3, Lg/fpr;->b:Ljava/util/List;

    new-instance v10, Lg/gpn;

    const/16 v11, 0xc

    invoke-direct {v10, v11}, Lg/gpn;-><init>(I)V

    invoke-static {v3, v8, v10}, Lg/evh;->d(Ljava/lang/Iterable;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_3
    :goto_0
    iget-object v3, v0, Lg/ejh;->e:Lg/ffr;

    invoke-virtual {v3, v2, v1}, Lg/ffr;->u(Lg/epk;Lg/eos;)V

    iget-object v9, v5, Lg/cci;->d:Lg/gqc;

    iget-object v10, v2, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v9}, Lg/gqc;->ba()Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x400

    invoke-virtual {v10, v11}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v10

    invoke-virtual {v10, v6}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v10

    :cond_4
    iget v11, v9, Lg/gqc;->ab:I

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_5

    invoke-virtual {v10, v6}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v10

    :cond_5
    invoke-virtual {v4}, Lg/ayu;->o()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v5}, Lg/cci;->bi()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lg/gqc;->ah(I)Lg/gqc;

    move-result-object v10

    :cond_6
    iget-object v11, v4, Lg/ayu;->f:Ljava/lang/String;

    iget-object v12, v4, Lg/ayu;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lg/gqc;->bf()Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v4, Lg/ayu;->f:Ljava/lang/String;

    invoke-static {v1, v2, v11}, Lg/bzu;->c(Lg/eos;Lg/ebh;Ljava/lang/String;)V

    :cond_7
    sget-object v11, Lg/csv;->INCONSISTENT_CODE:Lg/csv;

    iget-object v12, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Lg/afa;->ERROR:Lg/afa;

    invoke-virtual {v2, v11}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v11, v1

    check-cast v11, Lg/grs;

    const-string v12, "/*"

    invoke-virtual {v11, v12}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {v11}, Lg/grs;->aa()V

    const-string v12, "Code generated incorrectly, please refer to instructions dump."

    invoke-virtual {v11, v12}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v12, v5, Lg/cci;->ab:Lg/dwg;

    iget-object v12, v12, Lg/dwg;->i:Lg/ur;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v11, Lg/flc;

    if-eqz v12, :cond_8

    const-string v12, "To view partially-correct code enable \'Show inconsistent code\' option in preferences"

    invoke-virtual {v11, v12}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    goto :goto_1

    :cond_8
    const-string v12, "To view partially-correct add \'--show-bad-code\' argument"

    invoke-virtual {v11, v12}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    :goto_1
    invoke-virtual {v11}, Lg/grs;->ab()V

    const-string v12, "*/"

    invoke-virtual {v11, v12}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    :cond_9
    iget v11, v2, Lg/ccm;->bp:I

    check-cast v1, Lg/grs;

    invoke-virtual {v1, v11}, Lg/grs;->ac(I)Lg/grs;

    sget-object v11, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {v2, v11}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lg/gqc;->aj(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-virtual {v9}, Lg/gqc;->ba()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-boolean v9, v2, Lg/hed;->ar:Z

    if-nez v9, :cond_a

    iget-object v9, v2, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v9}, Lg/gqc;->be()Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "default "

    invoke-interface {v1, v9}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_a
    iget-object v9, v2, Lg/hed;->ae:Ljava/util/List;

    iget-object v11, v0, Lg/ejh;->d:Lg/ggg;

    invoke-virtual {v11, v1, v9, v7}, Lg/ggg;->q(Lg/eos;Ljava/util/List;Z)Z

    move-result v9

    const/16 v12, 0x20

    if-eqz v9, :cond_b

    invoke-interface {v1, v12}, Lg/eos;->a(C)Lg/eos;

    :cond_b
    invoke-virtual {v10}, Lg/gqc;->bf()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v1, v2}, Lg/eos;->g(Lg/cfr;)V

    iget-object v9, v11, Lg/ggg;->e:Lg/cci;

    iget-object v9, v9, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v9}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_3

    :cond_c
    iget-object v9, v2, Lg/hed;->aw:Lg/cwx;

    invoke-virtual {v11, v1, v9}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    invoke-interface {v1, v12}, Lg/eos;->a(C)Lg/eos;

    sget-object v9, Lg/acq;->bi:Lg/acq;

    iget-object v10, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v9}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v9

    check-cast v9, Lg/ghf;

    if-eqz v9, :cond_d

    iget-object v9, v9, Lg/ghf;->a:Lg/hed;

    goto :goto_2

    :cond_d
    move-object v9, v2

    :goto_2
    invoke-interface {v1, v9}, Lg/eos;->g(Lg/cfr;)V

    iget-object v9, v9, Lg/hed;->al:Lg/ayu;

    iget-object v9, v9, Lg/ayu;->a:Ljava/lang/String;

    invoke-interface {v1, v9}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_3
    const/16 v9, 0x28

    invoke-interface {v1, v9}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2}, Lg/hed;->az()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lg/ayu;->o()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lg/acq;->k:Lg/acq;

    iget-object v10, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v4}, Lg/sm;->j(Lg/fky;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_e

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_f

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v9, v10, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    goto :goto_4

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Incorrect number of args for enum constructor: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (expected >= 2)"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    sget-object v4, Lg/csv;->SKIP_FIRST_ARG:Lg/csv;

    iget-object v10, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v9, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    :cond_11
    :goto_4
    sget-object v4, Lg/ao;->i:Lg/ao;

    iget-object v10, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v4

    check-cast v4, Lg/gca;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gks;

    iget-object v14, v13, Lg/gks;->a:Lg/vm;

    if-nez v14, :cond_13

    iget-boolean v15, v11, Lg/ggg;->c:Z

    new-instance v12, Lg/ejb;

    invoke-direct {v12}, Lg/ejb;-><init>()V

    iget-object v7, v13, Lg/flv;->h:Lg/cwx;

    iput-object v7, v12, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {v13}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lg/ejb;->c:Ljava/lang/String;

    invoke-virtual {v13}, Lg/gsh;->al()Z

    move-result v7

    iput-boolean v7, v12, Lg/ejb;->b:Z

    iput-boolean v6, v12, Lg/ejb;->d:Z

    invoke-virtual {v13}, Lg/gsh;->al()Z

    move-result v7

    iput-boolean v7, v12, Lg/ejb;->b:Z

    if-eqz v15, :cond_12

    new-instance v7, Lg/vm;

    iget v15, v13, Lg/gks;->e:I

    const/4 v6, 0x0

    const/16 v16, 0x1

    invoke-direct {v7, v15, v6, v13}, Lg/vm;-><init>(IILg/gks;)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v12, Lg/ejb;->f:Ljava/util/List;

    goto :goto_6

    :cond_12
    const/4 v6, 0x0

    const/16 v16, 0x1

    goto :goto_6

    :cond_13
    const/4 v6, 0x0

    const/16 v16, 0x1

    invoke-virtual {v14}, Lg/vm;->u()Lg/ejb;

    move-result-object v12

    :goto_6
    if-eqz v4, :cond_16

    iget-object v7, v4, Lg/gca;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v10, v15, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/ks;

    if-eqz v7, :cond_16

    iget-object v7, v7, Lg/ks;->a:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fpa;

    invoke-virtual {v3, v1, v15}, Lg/ffr;->af(Lg/eos;Lg/fpa;)V

    const/16 v15, 0x20

    invoke-interface {v1, v15}, Lg/eos;->a(C)Lg/eos;

    goto :goto_7

    :cond_16
    :goto_8
    iget-boolean v7, v12, Lg/ejb;->a:Z

    if-eqz v7, :cond_17

    const-string v7, "final "

    invoke-interface {v1, v7}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_17
    iget-object v7, v12, Lg/ejb;->e:Lg/cwx;

    if-eqz v7, :cond_18

    sget-object v15, Lg/cwx;->ad:Lg/gnh;

    if-ne v7, v15, :cond_19

    :cond_18
    iget-object v7, v13, Lg/flv;->h:Lg/cwx;

    :cond_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1b

    iget-object v13, v2, Lg/hed;->ax:Lg/gqc;

    iget v13, v13, Lg/gqc;->ab:I

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_1b

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v13, v7, Lg/aoe;

    if-eqz v13, :cond_1a

    invoke-virtual {v7}, Lg/cwx;->k()Lg/cwx;

    move-result-object v7

    invoke-virtual {v11, v1, v7}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    const-string v7, "..."

    invoke-interface {v1, v7}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_9
    const/16 v15, 0x20

    goto :goto_a

    :cond_1a
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "Last argument in varargs method is not array: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lg/ebh;->bu(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v7}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    goto :goto_9

    :cond_1b
    invoke-virtual {v11, v1, v7}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    goto :goto_9

    :goto_a
    invoke-interface {v1, v15}, Lg/eos;->a(C)Lg/eos;

    iget-object v7, v0, Lg/ejh;->b:Lg/gez;

    invoke-virtual {v7, v12}, Lg/gez;->n(Lg/ejb;)Ljava/lang/String;

    move-result-object v7

    instance-of v13, v1, Lg/flc;

    if-eqz v13, :cond_1c

    if-eqz v14, :cond_1c

    invoke-virtual {v12}, Lg/ejb;->h()Lg/vm;

    move-result-object v12

    invoke-static {v2, v12}, Lg/cmw;->h(Lg/hed;Lg/vm;)Lg/cmw;

    move-result-object v12

    invoke-interface {v1, v12}, Lg/eos;->g(Lg/cfr;)V

    :cond_1c
    invoke-interface {v1, v7}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v1, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_1d
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v12, 0x20

    goto/16 :goto_5

    :cond_1e
    const/16 v16, 0x1

    const/16 v4, 0x29

    invoke-interface {v1, v4}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {v2}, Lg/hed;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_20

    const-string v6, " throws "

    invoke-interface {v1, v6}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    iget-object v7, v3, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v7, Lg/ggg;

    invoke-virtual {v7, v1, v6}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v1, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_b

    :cond_20
    iget-object v4, v5, Lg/cci;->d:Lg/gqc;

    iget v4, v4, Lg/gqc;->ab:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_22

    sget-object v4, Lg/ao;->m:Lg/ao;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/gpg;

    if-nez v2, :cond_21

    const/4 v2, 0x0

    goto :goto_c

    :cond_21
    iget-object v2, v2, Lg/gpg;->a:Lg/ghr;

    :goto_c
    if-eqz v2, :cond_22

    const-string v4, " default "

    invoke-interface {v1, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v4, v5, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v3, v4, v1, v2}, Lg/ffr;->r(Lg/dwg;Lg/eos;Lg/ghr;)V

    :cond_22
    return v16
.end method

.method public final n(Lg/eos;Lg/eis;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v0, Lg/eis;->COMMENTED_DUMP:Lg/eis;

    iget-object v4, v1, Lg/ejh;->c:Lg/hed;

    if-ne v3, v0, :cond_1

    invoke-virtual {v4}, Lg/hed;->a()Lg/dwg;

    move-result-object v0

    iget-object v0, v0, Lg/dwg;->i:Lg/ur;

    iget-object v0, v0, Lg/ur;->aq:Lg/afa;

    sget-object v5, Lg/afa;->DEBUG:Lg/afa;

    if-eq v0, v5, :cond_1

    iget v0, v4, Lg/hed;->y:I

    int-to-long v5, v0

    const-wide/16 v7, 0xc8

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    move-object v0, v2

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->aa()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method dump skipped, instruction units count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    instance-of v2, v0, Lg/flc;

    if-eqz v2, :cond_0

    const-string v2, "To view this dump change \'Code comments level\' option to \'DEBUG\'"

    invoke-virtual {v0, v2}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    goto :goto_0

    :cond_0
    const-string v2, "To view this dump add \'--comments-level debug\' option"

    invoke-virtual {v0, v2}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    :goto_0
    invoke-virtual {v0}, Lg/grs;->ab()V

    return-void

    :cond_1
    sget-object v0, Lg/eis;->FALLBACK_MODE:Lg/eis;

    if-eq v3, v0, :cond_3

    sget-object v0, Lg/acq;->af:Lg/acq;

    iget-object v5, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v0}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {v4}, Lg/hed;->be()V

    invoke-virtual {v4}, Lg/hed;->bf()V

    invoke-static {}, Lg/bcv;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/pj;

    invoke-static {v6, v4}, Lg/cmb;->h(Lg/pj;Lg/hed;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    new-instance v0, Lg/fxo;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lg/fxo;-><init>(Lg/ejh;I)V

    invoke-static {v5, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lg/fxo;

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6}, Lg/fxo;-><init>(Lg/ejh;I)V

    invoke-static {v5, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_4

    :goto_2
    :try_start_1
    sget-object v3, Lg/ejh;->a:Lg/dba;

    const-string v4, "Error reload instructions in fallback mode:"

    invoke-interface {v3, v4, v0}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Can\'t load method instructions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lg/grs;

    invoke-virtual {v2, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lg/fxo;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/fxo;-><init>(Lg/ejh;I)V

    invoke-static {v5, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :goto_3
    new-instance v2, Lg/fxo;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lg/fxo;-><init>(Lg/ejh;I)V

    invoke-static {v5, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    throw v0

    :cond_3
    :goto_4
    iget-object v5, v4, Lg/hed;->an:[Lg/eek;

    if-nez v5, :cond_4

    const-string v0, "// Can\'t load method instructions."

    check-cast v2, Lg/grs;

    invoke-virtual {v2, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    return-void

    :cond_4
    move-object v6, v2

    check-cast v6, Lg/grs;

    invoke-virtual {v6}, Lg/grs;->aa()V

    iget-object v0, v4, Lg/hed;->z:Lg/gks;

    if-eqz v0, :cond_7

    iget-object v7, v1, Lg/ejh;->b:Lg/gez;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-boolean v7, v7, Lg/gez;->g:Z

    if-eqz v7, :cond_6

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "r"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lg/gks;->e:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-virtual {v6, v8}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    const-string v0, " = this;"

    invoke-interface {v6, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_7
    move-object v7, v2

    check-cast v7, Lg/grs;

    iget v8, v7, Lg/grs;->z:I

    invoke-static {v4}, Lg/ejh;->f(Lg/hed;)Lg/ejh;

    move-result-object v4

    new-instance v9, Lg/grb;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Lg/grb;-><init>(Lg/ejh;Z)V

    array-length v11, v5

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v11, :cond_13

    aget-object v14, v5, v13

    if-nez v14, :cond_8

    const/4 v15, 0x1

    goto/16 :goto_d

    :cond_8
    sget-object v15, Lg/acq;->af:Lg/acq;

    iget-object v12, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v15}, Lg/sm;->j(Lg/fky;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v0, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v15}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/hab;

    const-string v15, "// "

    invoke-virtual {v7, v15}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v12, v12, Lg/hab;->a:Ljava/lang/String;

    invoke-interface {v7, v12}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_6

    :cond_9
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_c

    :cond_a
    sget-object v12, Lg/eis;->BLOCK_DUMP:Lg/eis;

    if-eq v3, v12, :cond_d

    sget-object v12, Lg/acq;->bh:Lg/acq;

    iget-object v15, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v15, v12}, Lg/sm;->j(Lg/fky;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_8

    :cond_b
    sget-object v12, Lg/acq;->p:Lg/acq;

    iget-object v15, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v15, v12}, Lg/sm;->j(Lg/fky;)Z

    move-result v15

    if-eqz v15, :cond_d

    if-eqz v0, :cond_c

    iget-object v15, v0, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->IF:Lg/hay;

    if-ne v15, v10, :cond_c

    iget-object v10, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v12}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_c

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/aef;

    iget v15, v10, Lg/aef;->a:I

    iget v12, v0, Lg/eek;->ag:I

    if-ne v15, v12, :cond_c

    iget v10, v10, Lg/aef;->b:I

    iget v12, v14, Lg/eek;->ag:I

    if-ne v10, v12, :cond_c

    check-cast v0, Lg/bgw;

    invoke-virtual {v0}, Lg/bgw;->ad()I

    move-result v0

    iget v10, v14, Lg/eek;->ag:I

    if-ne v10, v0, :cond_d

    :cond_c
    :goto_8
    invoke-virtual {v7}, Lg/grs;->ab()V

    iget v0, v14, Lg/eek;->ag:I

    invoke-static {v0}, Lg/ejh;->g(I)Ljava/lang/String;

    move-result-object v0

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {v7}, Lg/grs;->aa()V

    :cond_d
    iget-object v0, v14, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->NOP:Lg/hay;

    if-ne v0, v10, :cond_e

    goto :goto_7

    :cond_e
    :try_start_2
    sget-object v10, Lg/eis;->COMMENTED_DUMP:Lg/eis;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v12, "*/"

    if-ne v3, v10, :cond_f

    :try_start_3
    sget-object v10, Lg/hay;->CONST_STR:Lg/hay;

    if-ne v0, v10, :cond_f

    move-object v0, v14

    check-cast v0, Lg/epw;

    iget-object v0, v0, Lg/epw;->a:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    move-object v10, v2

    check-cast v10, Lg/grs;

    invoke-virtual {v10}, Lg/grs;->ab()V

    invoke-virtual {v10, v12}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    const-string v12, "//  "

    invoke-virtual {v10, v12}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    goto :goto_a

    :catch_1
    move-exception v0

    const/4 v15, 0x1

    goto :goto_b

    :cond_10
    iget v10, v14, Lg/ccm;->bp:I

    move-object v12, v2

    check-cast v12, Lg/grs;

    invoke-virtual {v12, v10}, Lg/grs;->ac(I)Lg/grs;

    :goto_a
    invoke-static {v2, v14}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    iget-object v10, v14, Lg/eek;->ai:Lg/gks;

    if-eqz v10, :cond_11

    iget-object v10, v10, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v10}, Lg/cwx;->h()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v10}, Lg/cwx;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v10

    const/16 v12, 0x20

    invoke-interface {v10, v12}, Lg/eos;->a(C)Lg/eos;

    :cond_11
    sget-object v10, Lg/zw;->INLINE:Lg/zw;

    invoke-virtual {v9, v14, v2, v10}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V

    if-eqz v0, :cond_12

    const-string v0, "/*"

    move-object v10, v2

    check-cast v10, Lg/grs;

    invoke-virtual {v10, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {v10}, Lg/grs;->aa()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_12
    const/4 v15, 0x1

    :try_start_4
    invoke-virtual {v4, v2, v14, v15}, Lg/ejh;->k(Lg/eos;Lg/eek;Z)V

    iget-object v0, v4, Lg/ejh;->c:Lg/hed;

    invoke-static {v2, v0, v14}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    :goto_b
    const-string v10, "Error generate fallback instruction: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    sget-object v12, Lg/ejh;->a:Lg/dba;

    invoke-interface {v12, v10, v0}, Lg/dba;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v8, v7, Lg/grs;->z:I

    invoke-virtual {v7}, Lg/grs;->af()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "// error: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    :goto_c
    move-object v0, v14

    :goto_d
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v6}, Lg/grs;->ab()V

    return-void
.end method

.method public final o(Lg/flc;)V
    .locals 14

    new-instance v0, Lg/fpd;

    iget-object v1, p0, Lg/ejh;->c:Lg/hed;

    invoke-direct {v0, v1}, Lg/fpd;-><init>(Lg/hed;)V

    iget-object v2, v0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/BitSet;

    iget-object v3, v0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/BitSet;

    iget-object v4, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v8, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, v5, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v7, :cond_0

    iget-object v8, v5, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    iget-object v9, v5, Lg/fza;->e:Ljava/util/List;

    invoke-static {v5, v8}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_1

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    invoke-static {v6, v5, v8}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    invoke-static {v7, v5, v8}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_1

    :cond_2
    :goto_2
    sget-object v6, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v5, v6}, Lg/lh;->w(Lg/csv;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lg/dec;->c(Lg/hed;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lg/efe;

    const/4 v8, 0x4

    invoke-direct {v5, v8, v4}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    iget-object v8, v1, Lg/hed;->aj:Lg/fza;

    new-instance v9, Lg/gpn;

    const/16 v10, 0x13

    invoke-direct {v9, v10}, Lg/gpn;-><init>(I)V

    invoke-static {v1, v8, v9, v5}, Lg/ffb;->ce(Lg/hed;Lg/fza;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    new-instance v5, Lg/egl;

    const/16 v8, 0xa

    invoke-direct {v5, v8, v0}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v5}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object v0, v1, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    iget-object v0, v1, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/aea;

    iget-object v5, v5, Lg/aea;->i:Lg/fza;

    if-eqz v5, :cond_5

    sget-object v8, Lg/giq;->a:Ljava/util/EnumSet;

    iget-object v8, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    iget-object v9, v9, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v5, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_7
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v9, v5

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v0, :cond_12

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v0, :cond_9

    move-object v11, v5

    goto :goto_7

    :cond_9
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    :goto_7
    iget-object v12, v10, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v7, :cond_a

    iget v9, v10, Lg/fza;->x:I

    invoke-virtual {v3, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_8

    :cond_a
    if-ne v13, v7, :cond_c

    if-eqz v9, :cond_c

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    sget-object v12, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    iget-object v13, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-nez v12, :cond_b

    iget v12, v10, Lg/fza;->x:I

    invoke-virtual {v3, v12}, Ljava/util/BitSet;->set(I)V

    :cond_b
    iget-object v12, v9, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v7, :cond_c

    invoke-virtual {v1, v9}, Lg/hed;->bb(Lg/fza;)Z

    move-result v12

    if-nez v12, :cond_c

    iget v9, v9, Lg/fza;->x:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    :cond_c
    :goto_8
    invoke-static {v10}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v9

    instance-of v12, v9, Lg/dog;

    if-eqz v12, :cond_f

    instance-of v12, v9, Lg/bgw;

    if-eqz v12, :cond_e

    check-cast v9, Lg/bgw;

    iget-object v12, v9, Lg/bgw;->_br:Lg/fza;

    invoke-static {v11, v12}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v9}, Lg/bgw;->z()V

    iget-object v12, v9, Lg/bgw;->_br:Lg/fza;

    iget v12, v12, Lg/fza;->x:I

    invoke-virtual {v3, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    :cond_d
    iget v12, v12, Lg/fza;->x:I

    invoke-virtual {v3, v12}, Ljava/util/BitSet;->set(I)V

    :goto_9
    invoke-virtual {v9}, Lg/bgw;->ab()V

    goto :goto_b

    :cond_e
    iget-object v9, v10, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    iget v12, v12, Lg/fza;->x:I

    invoke-virtual {v3, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_a

    :cond_f
    :goto_b
    sget-object v9, Lg/acq;->bh:Lg/acq;

    iget-object v12, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v9}, Lg/sm;->j(Lg/fky;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget v9, v10, Lg/fza;->x:I

    invoke-virtual {v3, v9}, Ljava/util/BitSet;->set(I)V

    :cond_10
    if-nez v11, :cond_11

    invoke-virtual {v1, v10}, Lg/hed;->bb(Lg/fza;)Z

    move-result v9

    if-nez v9, :cond_11

    iget v9, v10, Lg/fza;->x:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    :cond_11
    move-object v9, v10

    goto/16 :goto_6

    :cond_12
    invoke-virtual {v1}, Lg/hed;->bg()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    sget-object v9, Lg/csv;->RETURN:Lg/csv;

    iget-object v8, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_13
    :goto_c
    new-instance v0, Lg/grb;

    invoke-direct {v0, p0, v7}, Lg/grb;-><init>(Lg/ejh;Z)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    sget-object v9, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v10, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_d

    :cond_15
    iget v9, v8, Lg/fza;->x:I

    invoke-virtual {v3, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {p1}, Lg/grs;->ab()V

    invoke-static {v8}, Lg/ejh;->h(Lg/fza;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    const/16 v9, 0x3a

    invoke-interface {p1, v9}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p1}, Lg/grs;->aa()V

    :cond_16
    iget-object v9, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_17
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    sget-object v11, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v12, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, v10, Lg/eek;->ai:Lg/gks;

    if-eqz v11, :cond_18

    iget-object v11, v11, Lg/gks;->a:Lg/vm;

    invoke-virtual {v11}, Lg/vm;->u()Lg/ejb;

    move-result-object v11

    iget-boolean v12, v11, Lg/ejb;->d:Z

    if-nez v12, :cond_18

    sget-object v12, Lg/csv;->DECLARE_VAR:Lg/csv;

    invoke-virtual {v10, v12}, Lg/lh;->w(Lg/csv;)V

    iput-boolean v7, v11, Lg/ejb;->d:Z

    :cond_18
    invoke-static {p1, v10}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    invoke-virtual {v0, v10, p1, v5}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V

    invoke-virtual {p0, p1, v10, v6}, Lg/ejh;->k(Lg/eos;Lg/eek;Z)V

    invoke-static {p1, v1, v10}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    goto :goto_e

    :cond_19
    iget v9, v8, Lg/fza;->x:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "goto "

    invoke-virtual {p1, v9}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v8, v8, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    invoke-static {v8}, Lg/ejh;->h(Lg/fza;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto/16 :goto_d

    :cond_1a
    return-void
.end method
