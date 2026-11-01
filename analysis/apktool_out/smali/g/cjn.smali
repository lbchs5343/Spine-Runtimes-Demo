.class public final Lg/cjn;
.super Lg/bgh;

# interfaces
.implements Lg/ank;


# instance fields
.field public a:I

.field public b:Lg/giy;

.field public c:I


# virtual methods
.method public final dq(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lg/cjn;->b:Lg/giy;

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lg/bgh;->dq:Lg/eyj;

    iget-object v2, p0, Lg/bgh;->iw:Ljava/lang/String;

    iget-object v3, p0, Lg/bgh;->ox:Lg/csh;

    iget-object v3, v3, Lg/csh;->b:Ljava/util/ArrayList;

    check-cast p1, Lg/gsa;

    invoke-virtual {p1, v2, v3}, Lg/gsa;->e(Ljava/lang/String;Ljava/util/List;)V

    iget p1, p0, Lg/cjn;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/cjn;->c:I

    if-gez p1, :cond_1

    iget v2, p0, Lg/cjn;->a:I

    if-eqz v2, :cond_1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    if-lez p1, :cond_2

    iget p1, p0, Lg/cjn;->a:I

    if-eqz p1, :cond_2

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final varargs dq([Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lg/bgh;->s:Ljava/util/Map;

    if-eqz p1, :cond_1

    const-string v0, "loop"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lg/cjn;->c:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lg/cjn;->c:I

    :goto_0
    iget-object p1, p0, Lg/bgh;->s:Ljava/util/Map;

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/cjn;->a:I

    :cond_1
    iget-object p1, p0, Lg/cjn;->b:Lg/giy;

    iget v0, p0, Lg/cjn;->a:I

    int-to-long v0, v0

    const/16 v2, 0x3e9

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1
.end method
