.class public final Lg/gxf;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public b:Z

.field public c:Lg/ve;

.field public d:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/gxf;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/gxf;->a:Lg/dba;

    return-void
.end method

.method public static e(Lg/gks;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "$this$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lg/gks;->a:Lg/vm;

    invoke-virtual {p0}, Lg/vm;->u()Lg/ejb;

    move-result-object p0

    iput-object p1, p0, Lg/ejb;->c:Ljava/lang/String;

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Lg/hed;Lg/eek;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1, p2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lg/cly;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->CONST_STR:Lg/hay;

    if-ne v1, v2, :cond_1

    check-cast v0, Lg/epw;

    iget-object p0, v0, Lg/epw;->a:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object v2, Lg/hay;->SGET:Lg/hay;

    if-ne v1, v2, :cond_2

    check-cast v0, Lg/adz;

    iget-object v0, v0, Lg/adz;->a:Ljava/lang/Object;

    check-cast v0, Lg/dsj;

    iget-object p0, p0, Lg/hed;->am:Lg/cci;

    iget-object p0, p0, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {p0, v0}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lg/ao;->x:Lg/ao;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p0

    check-cast p0, Lg/ghr;

    iget-object p0, p0, Lg/ghr;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lg/epw;

    invoke-direct {v0, p0}, Lg/epw;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final h(Lg/dwg;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "kotlin.jvm.internal.Intrinsics"

    invoke-static {v0}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v0

    invoke-static {p1, v0}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lg/gxf;->a:Lg/dba;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lg/cci;->ak:Lg/ve;

    iput-object v1, p0, Lg/gxf;->c:Lg/ve;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v3, v0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hed;

    iget-object v5, v4, Lg/hed;->ax:Lg/gqc;

    iget-object v4, v4, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v5}, Lg/gqc;->be()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v4, Lg/ayu;->e:Ljava/lang/String;

    const-string v6, "(Ljava/lang/Object;Ljava/lang/String;)V"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lg/gxf;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Kotlin Intrinsics class: {}, methods: {}"

    invoke-interface {v2, v0, v3, v1}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iput-object v1, p0, Lg/gxf;->c:Lg/ve;

    const-string v0, "Kotlin Intrinsics class not found"

    invoke-interface {v2, v0}, Lg/dba;->o(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    iget-object p1, p1, Lg/ur;->n:Lg/fnc;

    sget-object v0, Lg/fnc;->APPLY_AND_HIDE:Lg/fnc;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lg/gxf;->b:Z

    return-void
.end method

.method public final i(Lg/hed;Lg/eek;)V
    .locals 5

    iget-object v0, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p2

    check-cast v2, Lg/hdc;

    iget-object v2, v2, Lg/hdc;->ad:Lg/ayu;

    iget-object v3, p0, Lg/gxf;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lg/gks;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Lg/gks;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lg/gxf;->g(Lg/hed;Lg/eek;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v3, p1}, Lg/gxf;->e(Lg/gks;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    invoke-static {p1, p2, v1}, Lg/gxf;->g(Lg/hed;Lg/eek;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v3, p1}, Lg/gxf;->e(Lg/gks;Ljava/lang/String;)Z

    move-result v2

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    iget-boolean p1, p0, Lg/gxf;->b:Z

    if-eqz p1, :cond_5

    sget-object p1, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p2, p1}, Lg/lh;->w(Lg/csv;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final k(Lg/cci;)Z
    .locals 6

    iget-object v0, p0, Lg/gxf;->c:Lg/ve;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object p1, p1, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hed;

    iget-boolean v1, v0, Lg/hed;->ar:Z

    if-nez v1, :cond_1

    sget-object v1, Lg/acq;->af:Lg/acq;

    iget-object v2, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->j(Lg/fky;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    iget-object v2, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    iget-object v4, v3, Lg/eek;->ah:Lg/hay;

    sget-object v5, Lg/hay;->INVOKE:Lg/hay;

    if-ne v4, v5, :cond_4

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lg/gxf;->i(Lg/hed;Lg/eek;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Failed to extract var names"

    invoke-virtual {v0, v4, v3}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
