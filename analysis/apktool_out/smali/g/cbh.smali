.class public final Lg/cbh;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;


# instance fields
.field public a:Lg/cyx;

.field public b:Ljava/lang/String;


# virtual methods
.method public final dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 1

    iget-object v0, p0, Lg/cbh;->a:Lg/cyx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lg/cyx;->dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V

    return-void
.end method

.method public final dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 2

    iget-object v0, p0, Lg/cbh;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lg/cbh;->a:Lg/cyx;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2, p3}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    return-void
.end method
