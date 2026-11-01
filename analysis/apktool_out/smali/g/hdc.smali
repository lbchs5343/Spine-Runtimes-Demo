.class public Lg/hdc;
.super Lg/gif;
.source "SourceFile"


# instance fields
.field public final ab:Lg/eqp;

.field public final ad:Lg/ayu;


# direct methods
.method public constructor <init>(Lg/ayu;Lg/eqp;I)V
    .locals 1

    sget-object v0, Lg/hay;->INVOKE:Lg/hay;

    invoke-direct {p0, v0, p3}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p1, p0, Lg/hdc;->ad:Lg/ayu;

    iput-object p2, p0, Lg/hdc;->ab:Lg/eqp;

    return-void
.end method

.method public constructor <init>(Lg/ayu;Lg/yu;Lg/eqp;Z)V
    .locals 7

    sget-object v0, Lg/eqp;->STATIC:Lg/eqp;

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v6}, Lg/hdc;-><init>(Lg/ayu;Lg/yu;Lg/eqp;ZZ)V

    return-void
.end method

.method public constructor <init>(Lg/ayu;Lg/yu;Lg/eqp;ZZ)V
    .locals 3

    sget-object v0, Lg/hay;->INVOKE:Lg/hay;

    iget-object v1, p1, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p4

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p1, p0, Lg/hdc;->ad:Lg/ayu;

    iput-object p3, p0, Lg/hdc;->ab:Lg/eqp;

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    invoke-interface {p2, p3}, Lg/yu;->m(I)I

    move-result p3

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    move p4, p3

    goto :goto_0

    :cond_1
    invoke-interface {p2, p3}, Lg/yu;->m(I)I

    move-result p4

    :goto_0
    iget-object v0, p1, Lg/ayu;->d:Lg/ve;

    iget-object v0, v0, Lg/ve;->d:Lg/cwx;

    sget-object v1, Lg/gsh;->ad:Lg/dba;

    new-instance v1, Lg/gks;

    invoke-direct {v1, p4, v0}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {p0, v1}, Lg/eek;->_an(Lg/gsh;)V

    add-int/lit8 p3, p3, 0x1

    :cond_2
    iget-object p4, p1, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    if-eqz p5, :cond_3

    move v1, p3

    goto :goto_2

    :cond_3
    invoke-interface {p2, p3}, Lg/yu;->m(I)I

    move-result v1

    :goto_2
    sget-object v2, Lg/gsh;->ad:Lg/dba;

    new-instance v2, Lg/gks;

    invoke-direct {v2, v1, v0}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {p0, v2}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {v0}, Lg/cwx;->bi()I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lg/yu;->k()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_5

    iget-object p1, p1, Lg/ayu;->g:Lg/cwx;

    sget-object p3, Lg/gsh;->ad:Lg/dba;

    new-instance p3, Lg/gks;

    invoke-direct {p3, p2, p1}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {p0, p3}, Lg/eek;->ax(Lg/gks;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public _o()Lg/eek;
    .locals 4

    new-instance v0, Lg/hdc;

    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lg/hdc;->ad:Lg/ayu;

    iget-object v3, p0, Lg/hdc;->ab:Lg/eqp;

    invoke-direct {v0, v2, v3, v1}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public _p(Lg/eek;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/hdc;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/hdc;

    iget-object v1, p0, Lg/hdc;->ab:Lg/eqp;

    iget-object v3, p1, Lg/hdc;->ab:Lg/eqp;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lg/hdc;->ad:Lg/ayu;

    iget-object p1, p1, Lg/hdc;->ad:Lg/ayu;

    invoke-virtual {v1, p1}, Lg/ayu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public aa()Lg/gsh;
    .locals 2

    iget-object v0, p0, Lg/hdc;->ab:Lg/eqp;

    sget-object v1, Lg/eqp;->STATIC:Lg/eqp;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ac()Lg/ayu;
    .locals 1

    iget-object v0, p0, Lg/hdc;->ad:Lg/ayu;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/eek;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/hdc;->ab:Lg/eqp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/hdc;->ad:Lg/ayu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/eek;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .locals 2

    iget-object v0, p0, Lg/hdc;->ab:Lg/eqp;

    sget-object v1, Lg/eqp;->STATIC:Lg/eqp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
