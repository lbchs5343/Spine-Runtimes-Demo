.class public final Lg/bye;
.super Ljava/lang/Object;

# interfaces
.implements Lg/ank;


# instance fields
.field public a:Lg/fzc;

.field public b:Lg/dlv;

.field public c:Z

.field public d:Lg/giy;

.field public e:I

.field public f:Lg/cyx;


# virtual methods
.method public final dq(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lg/bye;->d:Lg/giy;

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lg/bye;->f:Lg/cyx;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lg/bye;->a:Lg/fzc;

    iget-object v3, p0, Lg/bye;->b:Lg/dlv;

    invoke-interface {p1, v2, v3, v3}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    :cond_1
    iget-boolean p1, p0, Lg/bye;->c:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lg/bye;->e:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
