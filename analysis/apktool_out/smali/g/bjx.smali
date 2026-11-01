.class public abstract Lg/bjx;
.super Lg/yi;
.source "SourceFile"


# instance fields
.field public final g:Lg/fqc;


# direct methods
.method public constructor <init>(Lg/fqc;Lg/boj;ILg/bqt;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lg/yi;-><init>(Lg/boj;ILg/bqt;)V

    iput-object p1, p0, Lg/bjx;->g:Lg/fqc;

    return-void
.end method


# virtual methods
.method public final a(Lg/fjs;Lg/w;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg/yi;->c:I

    const/4 v1, -0x3

    sget-object v2, Lg/dgi;->a:Lg/dgi;

    if-ne v0, v1, :cond_5

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lg/gak;->b:Lg/gak;

    iget-object v4, p0, Lg/yi;->b:Lg/boj;

    invoke-interface {v4, v1, v3}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v4}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lg/eyt;->bi(Lg/boj;Lg/boj;Z)Lg/boj;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p0

    check-cast v0, Lg/dvl;

    iget-object v0, v0, Lg/bjx;->g:Lg/fqc;

    invoke-virtual {v0, p1, p2}, Lg/fqc;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-ne p1, p2, :cond_6

    return-object p1

    :cond_2
    sget-object v3, Lg/bmr;->j:Lg/bmr;

    invoke-interface {v1, v3}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v4

    invoke-interface {v0, v3}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v0

    invoke-static {v4, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v0

    instance-of v3, p1, Lg/ahg;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    instance-of v3, p1, Lg/dyv;

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lg/ffe;

    invoke-direct {v3, p1, v0}, Lg/ffe;-><init>(Lg/fjs;Lg/boj;)V

    move-object p1, v3

    :goto_3
    new-instance v0, Lg/hcq;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lg/hcq;-><init>(Lg/bjx;Lg/bdp;)V

    invoke-static {v1}, Lg/gs;->al(Lg/boj;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p1, v3, v0, p2}, Lg/acr;->ba(Lg/boj;Ljava/lang/Object;Ljava/lang/Object;Lg/bto;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_6

    return-object p1

    :cond_5
    invoke-super {p0, p1, p2}, Lg/yi;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_6

    return-object p1

    :cond_6
    return-object v2
.end method

.method public final e(Lg/ayw;Lg/bdp;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lg/ahg;

    invoke-direct {v0, p1}, Lg/ahg;-><init>(Lg/ayw;)V

    check-cast p2, Lg/w;

    move-object p1, p0

    check-cast p1, Lg/dvl;

    iget-object p1, p1, Lg/bjx;->g:Lg/fqc;

    invoke-virtual {p1, v0, p2}, Lg/fqc;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/bjx;->g:Lg/fqc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lg/yi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
