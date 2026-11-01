.class public final Lg/eyx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/boj;
.implements Ljava/io/Serializable;


# instance fields
.field private final element:Lg/erz;

.field private final left:Lg/boj;


# direct methods
.method public constructor <init>(Lg/boj;Lg/erz;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eyx;->left:Lg/boj;

    iput-object p2, p0, Lg/eyx;->element:Lg/erz;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lg/eyx;->a()I

    move-result v0

    new-array v1, v0, [Lg/boj;

    new-instance v2, Lg/epv;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lg/chz;

    invoke-direct {v3, v1, v2}, Lg/chz;-><init>([Lg/boj;Lg/epv;)V

    sget-object v4, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p0, v4, v3}, Lg/eyx;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    iget v2, v2, Lg/epv;->element:I

    if-ne v2, v0, :cond_0

    new-instance v0, Lg/eex;

    invoke-direct {v0, v1}, Lg/eex;-><init>([Lg/boj;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final _w(Lg/efi;)Lg/boj;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/eyx;->element:Lg/erz;

    invoke-interface {v0, p1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg/eyx;->left:Lg/boj;

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/eyx;->left:Lg/boj;

    invoke-interface {v0, p1}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object p1

    iget-object v0, p0, Lg/eyx;->left:Lg/boj;

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Lg/cgq;->a:Lg/cgq;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lg/eyx;->element:Lg/erz;

    return-object p1

    :cond_2
    new-instance v0, Lg/eyx;

    iget-object v1, p0, Lg/eyx;->element:Lg/erz;

    invoke-direct {v0, p1, v1}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    return-object v0
.end method

.method public final _x(Lg/efi;)Lg/erz;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lg/eyx;->element:Lg/erz;

    invoke-interface {v1, p1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lg/eyx;->left:Lg/boj;

    instance-of v1, v0, Lg/eyx;

    if-eqz v1, :cond_1

    check-cast v0, Lg/eyx;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p1

    return-object p1
.end method

.method public final _y(Lg/boj;)Lg/boj;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/cgq;->a:Lg/cgq;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lg/ctu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ctu;-><init>(I)V

    invoke-interface {p1, p0, v0}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/boj;

    return-object p1
.end method

.method public final a()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Lg/eyx;->left:Lg/boj;

    instance-of v2, v1, Lg/eyx;

    if-eqz v2, :cond_0

    check-cast v1, Lg/eyx;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/eyx;->left:Lg/boj;

    invoke-interface {v0, p1, p2}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lg/eyx;->element:Lg/erz;

    invoke-interface {p2, p1, v0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_3

    instance-of v0, p1, Lg/eyx;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lg/eyx;

    invoke-virtual {p1}, Lg/eyx;->a()I

    move-result v0

    invoke-virtual {p0}, Lg/eyx;->a()I

    move-result v2

    if-ne v0, v2, :cond_2

    move-object v0, p0

    :goto_0
    iget-object v2, v0, Lg/eyx;->element:Lg/erz;

    invoke-interface {v2}, Lg/erz;->getKey()Lg/efi;

    move-result-object v3

    invoke-virtual {p1, v3}, Lg/eyx;->_x(Lg/efi;)Lg/erz;

    move-result-object v3

    invoke-static {v3, v2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/eyx;->left:Lg/boj;

    instance-of v2, v0, Lg/eyx;

    if-eqz v2, :cond_1

    check-cast v0, Lg/eyx;

    goto :goto_0

    :cond_1
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {v0, v2}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lg/erz;

    invoke-interface {v0}, Lg/erz;->getKey()Lg/efi;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg/eyx;->_x(Lg/efi;)Lg/erz;

    move-result-object p1

    invoke-static {p1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/eyx;->left:Lg/boj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lg/eyx;->element:Lg/erz;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lg/ctu;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/ctu;-><init>(I)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lg/eyx;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
