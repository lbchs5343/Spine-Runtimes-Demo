.class public abstract Lg/ack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ack;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ack;->a:Lg/dba;

    return-void
.end method

.method public static b(Lg/gsh;)Lg/eek;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lg/cly;

    if-eqz v0, :cond_0

    check-cast p0, Lg/cly;

    iget-object p0, p0, Lg/cly;->a:Lg/eek;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lg/eek;Lg/hay;Ljava/util/function/Predicate;)Lg/eek;
    .locals 2

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    if-ne v0, p1, :cond_0

    invoke-interface {p2, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lg/cly;

    if-eqz v1, :cond_1

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    invoke-static {v0, p1, p2}, Lg/ack;->c(Lg/eek;Lg/hay;Ljava/util/function/Predicate;)Lg/eek;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 2

    if-gez p0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "0x%04x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lg/hed;Lg/eek;Lg/gxl;)V
    .locals 4

    iget-object v0, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lg/cly;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lg/cly;

    iget-object v3, v3, Lg/cly;->a:Lg/eek;

    invoke-static {p0, v3, p2}, Lg/ack;->e(Lg/hed;Lg/eek;Lg/gxl;)V

    invoke-virtual {p2, v3}, Lg/gxl;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    if-eqz v3, :cond_0

    invoke-static {p0, v2}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    invoke-static {v3}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lg/eek;->e(ILg/gsh;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f(Lg/dwg;Lg/gsh;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/ekh;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Lg/gks;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lg/gks;

    invoke-virtual {p1}, Lg/gks;->aa()Lg/eek;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->MOVE:Lg/hay;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    invoke-static {p0, p1}, Lg/ack;->f(Lg/dwg;Lg/gsh;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lg/ack;->h(Lg/dwg;Lg/eek;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p1, Lg/cly;

    if-eqz v0, :cond_4

    check-cast p1, Lg/cly;

    iget-object p1, p1, Lg/cly;->a:Lg/eek;

    invoke-static {p0, p1}, Lg/ack;->h(Lg/dwg;Lg/eek;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static g(Lg/eek;Lg/hay;)Lg/eek;
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Lg/dwg;Lg/eek;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lg/bsg;->a:[I

    iget-object v1, p1, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    check-cast p1, Lg/adz;

    iget-object p1, p1, Lg/adz;->a:Ljava/lang/Object;

    check-cast p1, Lg/dsj;

    invoke-virtual {p0, p1}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lg/ack;->a:Lg/dba;

    const-string v0, "Field {} not found"

    invoke-interface {p0, p1, v0}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_1
    sget-object p1, Lg/ao;->x:Lg/ao;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, p1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p0

    check-cast p0, Lg/ghr;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lg/bff;->m(Lg/ghr;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    check-cast p1, Lg/dkd;

    iget-object p0, p1, Lg/dkd;->a:Lg/cwx;

    return-object p0

    :cond_4
    check-cast p1, Lg/epw;

    iget-object p0, p1, Lg/epw;->a:Ljava/lang/String;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lg/hed;Lg/hay;Ljava/util/function/Predicate;)Lg/eek;
    .locals 2

    iget-boolean v0, p0, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    invoke-static {v1, p1, p2}, Lg/ack;->c(Lg/eek;Lg/hay;Ljava/util/function/Predicate;)Lg/eek;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/List;Lg/gks;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    if-eq v1, p1, :cond_2

    invoke-virtual {p1, v1}, Lg/gks;->x(Lg/gsh;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static l(Lg/eek;Lg/hay;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lg/eek;->ah:Lg/hay;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Lg/gsh;Lg/gks;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lg/gks;

    if-eqz v0, :cond_0

    check-cast p0, Lg/gks;

    invoke-virtual {p0, p1}, Lg/gks;->x(Lg/gsh;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lg/cly;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p0, Lg/cly;

    iget-object p0, p0, Lg/cly;->a:Lg/eek;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    iget-object p0, p0, Lg/eek;->ai:Lg/gks;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lg/gks;->x(Lg/gsh;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    invoke-static {v0, p1}, Lg/ack;->m(Lg/gsh;Lg/gks;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public static n(Lg/eek;)Lg/gsh;
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
