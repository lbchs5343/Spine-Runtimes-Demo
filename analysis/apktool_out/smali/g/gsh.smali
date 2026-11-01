.class public abstract Lg/gsh;
.super Lg/flv;
.source "SourceFile"


# static fields
.field public static final ad:Lg/dba;


# instance fields
.field public ae:Lg/eek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/gsh;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/gsh;->ad:Lg/dba;

    return-void
.end method

.method public static af(ILg/cwx;Z)Lg/gks;
    .locals 1

    new-instance v0, Lg/gks;

    invoke-direct {v0, p0, p1}, Lg/gks;-><init>(ILg/cwx;)V

    if-eqz p2, :cond_0

    sget-object p0, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    invoke-virtual {v0, p0}, Lg/lh;->w(Lg/csv;)V

    :cond_0
    return-object v0
.end method

.method public static ag(JLg/cwx;)Lg/ekh;
    .locals 4

    new-instance v0, Lg/ekh;

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lg/cwx;->h()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lg/bjt;->LONG:Lg/bjt;

    invoke-virtual {p2, v1}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lg/bjt;->DOUBLE:Lg/bjt;

    invoke-virtual {p2, v1}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1

    cmp-long p2, p0, v1

    if-nez p2, :cond_1

    sget-object p2, Lg/cwx;->r:Lg/gnh;

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    sget-object p2, Lg/cwx;->af:Lg/gnh;

    goto :goto_0

    :cond_2
    sget-object p2, Lg/cwx;->aa:Lg/gnh;

    :cond_3
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lg/ekh;-><init>(JLg/cwx;)V

    return-object v0
.end method

.method public static ah(Lg/eek;)Lg/gsh;
    .locals 2

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->CONST:Lg/hay;

    if-eq v0, v1, :cond_1

    sget-object v1, Lg/hay;->MOVE:Lg/hay;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Lg/csv;->FORCE_ASSIGN_INLINE:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/eek;->ai:Lg/gks;

    sget-object v1, Lg/csv;->WRAPPED:Lg/csv;

    invoke-virtual {p0, v1}, Lg/lh;->w(Lg/csv;)V

    new-instance v1, Lg/cly;

    invoke-direct {v1, p0}, Lg/cly;-><init>(Lg/eek;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/gks;->j()Lg/cwx;

    move-result-object p0

    iput-object p0, v1, Lg/flv;->h:Lg/cwx;

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    sget-object v1, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p0, v1}, Lg/lh;->w(Lg/csv;)V

    return-object v0
.end method

.method public static ai(Lg/yu;ILg/cwx;)Lg/gks;
    .locals 0

    invoke-interface {p0, p1}, Lg/yu;->m(I)I

    move-result p0

    new-instance p1, Lg/gks;

    invoke-direct {p1, p0, p2}, Lg/gks;-><init>(ILg/cwx;)V

    return-object p1
.end method

.method public static aj(Lg/eek;)Lg/cly;
    .locals 4

    iget-object v0, p0, Lg/eek;->ai:Lg/gks;

    sget-object v1, Lg/csv;->WRAPPED:Lg/csv;

    invoke-virtual {p0, v1}, Lg/lh;->w(Lg/csv;)V

    new-instance v1, Lg/cly;

    invoke-direct {v1, p0}, Lg/cly;-><init>(Lg/eek;)V

    sget-object v2, Lg/bfg;->a:[I

    iget-object v3, p0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 p0, 0x3

    if-eq v2, p0, :cond_1

    const/4 p0, 0x4

    if-eq v2, p0, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/gks;->j()Lg/cwx;

    move-result-object p0

    iput-object p0, v1, Lg/flv;->h:Lg/cwx;

    return-object v1

    :cond_0
    sget-object p0, Lg/cwx;->ab:Lg/aog;

    iput-object p0, v1, Lg/flv;->h:Lg/cwx;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lg/gks;->f(Lg/cwx;)V

    return-object v1

    :cond_1
    sget-object p0, Lg/cwx;->al:Lg/aog;

    iput-object p0, v1, Lg/flv;->h:Lg/cwx;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lg/gks;->f(Lg/cwx;)V

    :cond_2
    return-object v1

    :cond_3
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t wrap MOVE or CONST insns: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ak(Lg/yu;ILg/cwx;)Lg/gks;
    .locals 1

    invoke-virtual {p2}, Lg/cwx;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lg/yu;->m(I)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lg/gsh;->af(ILg/cwx;Z)Lg/gks;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lg/yu;->m(I)I

    move-result p0

    new-instance p1, Lg/gks;

    invoke-direct {p1, p0, p2}, Lg/gks;-><init>(ILg/cwx;)V

    return-object p1
.end method


# virtual methods
.method public _bb(Lg/eek;)V
    .locals 0

    iput-object p1, p0, Lg/gsh;->ae:Lg/eek;

    return-void
.end method

.method public final al()Z
    .locals 2

    sget-object v0, Lg/csv;->THIS:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    return v0
.end method

.method public final am()Z
    .locals 1

    instance-of v0, p0, Lg/ekh;

    if-nez v0, :cond_1

    instance-of v0, p0, Lg/cly;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    invoke-virtual {v0}, Lg/eek;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final an(Lg/hed;Lg/eek;Z)Lg/gsh;
    .locals 7

    iget-object v0, p0, Lg/gsh;->ae:Lg/eek;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne v0, p2, :cond_1

    sget-object p1, Lg/gsh;->ad:Lg/dba;

    const-string p3, "Can\'t wrap instruction info itself: {}"

    invoke-interface {p1, p2, p3}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v2, v0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    if-ne v6, p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    :goto_1
    if-ne v4, v5, :cond_4

    :goto_2
    return-object v1

    :cond_4
    iget-object v2, p2, Lg/eek;->ah:Lg/hay;

    sget-object v5, Lg/hay;->MOVE:Lg/hay;

    if-ne v2, v5, :cond_6

    instance-of v2, p0, Lg/gks;

    if-eqz v2, :cond_6

    move-object v2, p0

    check-cast v2, Lg/gks;

    invoke-virtual {v2}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v3, Lg/gks;

    if-eqz v5, :cond_5

    check-cast v3, Lg/gks;

    invoke-virtual {v3}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {v3, v2}, Lg/gks;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    instance-of v5, v3, Lg/cly;

    if-eqz v5, :cond_6

    check-cast v3, Lg/cly;

    iget-object v3, v3, Lg/cly;->a:Lg/eek;

    iget-object v3, v3, Lg/eek;->ai:Lg/gks;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {v3, v2}, Lg/gks;->c(Ljava/lang/String;)V

    :cond_6
    :goto_3
    invoke-static {p2}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v5

    sget-object v6, Lg/cwx;->ad:Lg/gnh;

    if-ne v5, v6, :cond_7

    invoke-virtual {v3}, Lg/flv;->j()Lg/cwx;

    move-result-object v5

    invoke-virtual {v2, v5}, Lg/flv;->f(Lg/cwx;)V

    :cond_7
    invoke-virtual {v0, v4, v2}, Lg/eek;->e(ILg/gsh;)V

    invoke-static {p1, v3}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    if-eqz p3, :cond_8

    invoke-static {p1, p0}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    invoke-static {p1, p2}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    iput-object v1, p2, Lg/eek;->ai:Lg/gks;

    :cond_8
    return-object v2
.end method

.method public final ao()Z
    .locals 4

    sget-object v0, Lg/csv;->THIS:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p0, Lg/cly;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->IGET:Lg/hay;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/gsh;->ao()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public final ap()Z
    .locals 6

    instance-of v0, p0, Lg/ekh;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/ekh;

    iget-wide v1, v0, Lg/ekh;->a:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v0, v0, Lg/flv;->h:Lg/cwx;

    sget-object v1, Lg/cwx;->at:Lg/cff;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aq(Lg/gks;)Z
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lg/gks;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lg/gks;

    invoke-virtual {v0, p1}, Lg/gks;->x(Lg/gsh;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ar()Z
    .locals 6

    instance-of v0, p0, Lg/ekh;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/ekh;

    iget-wide v1, v0, Lg/ekh;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v0, v0, Lg/flv;->h:Lg/cwx;

    sget-object v1, Lg/cwx;->at:Lg/cff;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final as()Z
    .locals 4

    invoke-virtual {p0}, Lg/gsh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p0, Lg/cly;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    iget-object v2, v0, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->CONST:Lg/hay;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/gsh;->g()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public abstract b()Lg/gsh;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
