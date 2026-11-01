.class public final Lg/erg;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public a:Lg/dwg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/erg;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public static b(Ljava/util/ArrayList;Ljava/util/List;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    invoke-virtual {v3}, Lg/cwx;->h()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    invoke-virtual {p0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static c(Lg/gif;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    sub-int v3, v1, p1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cwx;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v2, Lg/ekh;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, Lg/cff;

    if-eqz v4, :cond_0

    instance-of v4, v3, Lg/cff;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lg/flv;->f(Lg/cwx;)V

    sget-object v3, Lg/csv;->EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_1

    :cond_0
    sget-object v4, Lg/hay;->CHECK_CAST:Lg/hay;

    sget-object v5, Lg/ack;->a:Lg/dba;

    instance-of v5, v2, Lg/cly;

    if-eqz v5, :cond_1

    move-object v5, v2

    check-cast v5, Lg/cly;

    iget-object v5, v5, Lg/cly;->a:Lg/eek;

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    if-ne v6, v4, :cond_1

    check-cast v5, Lg/adz;

    iput-object v3, v5, Lg/adz;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v4, Lg/adz;

    sget-object v5, Lg/hay;->CAST:Lg/hay;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v6}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-virtual {v4, v2}, Lg/eek;->_an(Lg/gsh;)V

    sget-object v2, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    invoke-virtual {v4, v2}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v4}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v2

    iput-object v3, v2, Lg/flv;->h:Lg/cwx;

    invoke-virtual {p0, v1, v2}, Lg/eek;->e(ILg/gsh;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lg/cly;

    if-eqz v3, :cond_3

    check-cast v2, Lg/cly;

    iget-object v2, v2, Lg/cly;->a:Lg/eek;

    iget-object v3, v2, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->CHECK_CAST:Lg/hay;

    if-ne v3, v4, :cond_3

    sget-object v3, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static d(Lg/gif;I)Ljava/util/ArrayList;
    .locals 9

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    instance-of v3, v2, Lg/ekh;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lg/ekh;

    iget-object v4, v3, Lg/flv;->h:Lg/cwx;

    iget-wide v5, v3, Lg/ekh;->a:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    invoke-virtual {v4}, Lg/cwx;->m()Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v4, Lg/aoe;

    if-eqz v3, :cond_1

    :cond_0
    sget-object v2, Lg/cwx;->ag:Lg/gnh;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v4, Lg/cff;

    if-eqz v3, :cond_2

    sget-object v3, Lg/csv;->EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v2, Lg/cwx;->an:Lg/cff;

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lg/flv;->h:Lg/cwx;

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lg/gks;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v2

    goto :goto_1

    :cond_4
    instance-of v3, v2, Lg/cly;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lg/cly;

    iget-object v3, v3, Lg/cly;->a:Lg/eek;

    sget-object v4, Lg/dfm;->a:[I

    iget-object v5, v3, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v3, v3, Lg/eek;->ai:Lg/gks;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lg/gks;->j()Lg/cwx;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v2, v2, Lg/flv;->h:Lg/cwx;

    goto :goto_1

    :cond_6
    check-cast v3, Lg/adz;

    iget-object v2, v3, Lg/adz;->a:Ljava/lang/Object;

    check-cast v2, Lg/cwx;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Lg/gck;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown var type for: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-object v1
.end method


# virtual methods
.method public final e(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/function/Function;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ebp;

    invoke-interface {v1}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lg/erg;->a:Lg/dwg;

    iget-object v4, v4, Lg/dwg;->u:Lg/cag;

    iget-object v4, v4, Lg/cag;->e:Lg/cwm;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    invoke-virtual {v4, v7, v6}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final g(Lg/ebp;Ljava/util/Map;)Lg/ebp;
    .locals 8

    invoke-interface {p1}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lg/cwx;->bn()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v4, p0, Lg/erg;->a:Lg/dwg;

    iget-object v4, v4, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v4, v6, p2}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v6}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-interface {p1}, Lg/ebp;->j()Lg/ayu;

    move-result-object v4

    iget-object v4, v4, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cwx;

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p2, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null arg type in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " at: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-interface {p1}, Lg/ebp;->g()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/cwx;->bn()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lg/erg;->a:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v1, v0, p2}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lg/cwx;->bn()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    invoke-interface {p1}, Lg/ebp;->j()Lg/ayu;

    move-result-object p2

    iget-object v0, p2, Lg/ayu;->g:Lg/cwx;

    const/4 v4, 0x1

    :cond_6
    if-nez v4, :cond_7

    return-object p1

    :cond_7
    new-instance p2, Lg/dgf;

    invoke-direct {p2, p1}, Lg/dgf;-><init>(Lg/ebp;)V

    iput-object v2, p2, Lg/dgf;->k:Ljava/util/List;

    iput-object v0, p2, Lg/dgf;->o:Lg/cwx;

    return-object p2
.end method

.method public final h(Lg/dwg;)V
    .locals 0

    iput-object p1, p0, Lg/erg;->a:Lg/dwg;

    return-void
.end method

.method public final i(Lg/ebp;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/gpn;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lg/gpn;-><init>(I)V

    invoke-virtual {p0, p2, p3, v0}, Lg/erg;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/ebp;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    new-instance v0, Lg/gpn;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Lg/gpn;-><init>(I)V

    invoke-virtual {p0, p2, p3, v0}, Lg/erg;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, v3, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/ebp;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final j(Lg/hed;)V
    .locals 5

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eek;

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Lg/esv;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4, p1}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
