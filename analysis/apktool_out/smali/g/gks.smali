.class public final Lg/gks;
.super Lg/gsh;
.source "SourceFile"

# interfaces
.implements Lg/ehh;


# instance fields
.field public a:Lg/vm;

.field public final e:I


# direct methods
.method public constructor <init>(ILg/cwx;)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    iput-object p2, p0, Lg/flv;->h:Lg/cwx;

    iput p1, p0, Lg/gks;->e:I

    return-void
.end method


# virtual methods
.method public final aa()Lg/eek;
    .locals 1

    iget-object v0, p0, Lg/gks;->a:Lg/vm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lg/vm;->c:Lg/gks;

    iget-object v0, v0, Lg/gsh;->ae:Lg/eek;

    return-object v0
.end method

.method public final ab(ILg/cwx;Lg/vm;)Lg/gks;
    .locals 1

    new-instance v0, Lg/gks;

    invoke-direct {v0, p1, p2}, Lg/gks;-><init>(ILg/cwx;)V

    if-eqz p3, :cond_0

    iput-object p3, v0, Lg/gks;->a:Lg/vm;

    :cond_0
    invoke-virtual {v0, p0}, Lg/lh;->s(Lg/lh;)V

    iget-object p1, p0, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v0, p1}, Lg/gsh;->_bb(Lg/eek;)V

    return-object v0
.end method

.method public final ac(Lg/hed;)Lg/gks;
    .locals 3

    iget-object v0, p0, Lg/flv;->h:Lg/cwx;

    const/4 v1, 0x0

    iget v2, p0, Lg/gks;->e:I

    invoke-virtual {p0, v2, v0, v1}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/hed;->bn(Lg/gks;)Lg/vm;

    return-object v0
.end method

.method public final bridge synthetic b()Lg/gsh;
    .locals 1

    invoke-virtual {p0}, Lg/gks;->z()Lg/gks;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, v0, Lg/vm;->b:Lg/ejb;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lg/ejb;->c:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CodeVar not initialized for name set in SSAVar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/gks;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    if-eqz v1, :cond_0

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    iget v1, v1, Lg/vm;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/gks;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/gks;

    iget v1, p0, Lg/gks;->e:I

    iget v3, p1, Lg/gks;->e:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(Lg/cwx;)V
    .locals 2

    iget-object v0, p0, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/vm;->s(Lg/cwx;)V

    return-void

    :cond_0
    new-instance p1, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t change type for register without SSA variable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lg/csv;->SUPER:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "super"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/gsh;->al()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "this"

    return-object v0

    :cond_1
    iget-object v0, p0, Lg/gks;->a:Lg/vm;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lg/gks;->e:I

    return v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/vm;->i()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    return v0
.end method

.method public final j()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/vm;->h:Lg/ffr;

    iget-object v0, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v0, Lg/cwx;

    return-object v0

    :cond_0
    sget-object v0, Lg/cwx;->ad:Lg/gnh;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(r"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/gks;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    if-eqz v1, :cond_0

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    iget v1, v1, Lg/vm;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lg/gks;->j()Lg/cwx;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v3, p0, Lg/flv;->h:Lg/cwx;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lg/cwx;->h()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, " I:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1}, Lg/sm;->h()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1}, Lg/sm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Lg/gsh;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lg/gks;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/gks;

    iget v1, p0, Lg/gks;->e:I

    iget v3, p1, Lg/gks;->e:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final y(Lg/gks;)Z
    .locals 1

    iget-object v0, p0, Lg/gks;->a:Lg/vm;

    invoke-virtual {v0}, Lg/vm;->u()Lg/ejb;

    move-result-object v0

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z()Lg/gks;
    .locals 3

    iget-object v0, p0, Lg/flv;->h:Lg/cwx;

    iget-object v1, p0, Lg/gks;->a:Lg/vm;

    iget v2, p0, Lg/gks;->e:I

    invoke-virtual {p0, v2, v0, v1}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object v0

    return-object v0
.end method
