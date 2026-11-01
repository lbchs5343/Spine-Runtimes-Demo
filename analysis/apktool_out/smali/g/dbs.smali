.class public final Lg/dbs;
.super Lg/pj;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/dbs;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public static a(Lg/hed;)V
    .locals 8

    sget-object v0, Lg/ao;->ad:Lg/ao;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/esp;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v1, v0, Lg/esp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lg/hed;->al:Lg/ayu;

    iget-object v3, v3, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lg/hed;->az()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gks;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bjc;

    iget-object v6, v3, Lg/bjc;->b:Ljava/lang/String;

    invoke-static {v6}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v4, v4, Lg/gks;->a:Lg/vm;

    invoke-virtual {v4}, Lg/vm;->u()Lg/ejb;

    move-result-object v4

    iput-object v6, v4, Lg/ejb;->c:Ljava/lang/String;

    iget v3, v3, Lg/bjc;->a:I

    const/16 v6, 0x10

    invoke-static {v3, v6}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v4, Lg/ejb;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_1
    move v3, v5

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to process method parameters attribute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lg/esp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Lg/hed;)V
    .locals 6

    iget-object v0, p0, Lg/hed;->at:Ljava/util/List;

    new-instance v1, Lg/bra;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lg/hed;->bg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/hed;->ad:Lg/fza;

    iget-object v1, v1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg/hed;->ad:Lg/fza;

    iget-object v1, v1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    invoke-static {v3}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lg/csv;->ORIG_RETURN:Lg/csv;

    iget-object v5, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lg/gks;

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v3, Lg/gks;

    if-eqz v5, :cond_4

    check-cast v4, Lg/gks;

    check-cast v3, Lg/gks;

    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    invoke-virtual {v4}, Lg/gks;->j()Lg/cwx;

    move-result-object v5

    invoke-virtual {v4}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v5, v4}, Lg/dbs;->c(Lg/hed;Lg/vm;Lg/cwx;Ljava/lang/String;)Z

    :cond_4
    iget v3, v2, Lg/ccm;->bp:I

    iput v3, v1, Lg/ccm;->bp:I

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lg/hed;->at:Ljava/util/List;

    new-instance v1, Lg/bra;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static c(Lg/hed;Lg/vm;Lg/cwx;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->u:Lg/cag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/zf;->b:Lg/zf;

    invoke-virtual {v0, p0, p1, p2, v1}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;

    move-result-object p0

    sget-object p2, Lg/dgr;->REJECT:Lg/dgr;

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p3}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    iget-object p0, p1, Lg/vm;->b:Lg/ejb;

    if-eqz p0, :cond_1

    iput-object p3, p0, Lg/ejb;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p0, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "CodeVar not initialized for name set in SSAVar: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 2

    :try_start_0
    sget-object v0, Lg/acq;->o:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lg/dbs;->b(Lg/hed;)V

    invoke-virtual {p1, v0}, Lg/lh;->u(Lg/fky;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lg/dbs;->a(Lg/hed;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string v1, "Failed to apply debug info"

    invoke-virtual {p1, v1, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
