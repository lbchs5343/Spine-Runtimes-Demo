.class public final Lg/edm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bmm;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:J

.field public c:Ljava/lang/Object;


# virtual methods
.method public ad(Lg/czh;Lg/anx;)V
    .locals 5

    iget-object p1, p0, Lg/edm;->c:Ljava/lang/Object;

    check-cast p1, Lg/cx;

    iget-object v0, p0, Lg/edm;->a:Ljava/lang/Object;

    check-cast v0, Lg/dqe;

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "update_last_check_time"

    iget-wide v3, p0, Lg/edm;->b:J

    invoke-static {v1, v2, v3, v4}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object p2, p2, Lg/anx;->b:Ljava/lang/Object;

    check-cast p2, Lg/cbf;

    if-nez p2, :cond_0

    new-instance p2, Lg/dcq;

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120553

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p2, v1, v0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lg/cx;->a(Lg/dkp;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lg/cbf;->getCode()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lg/dcq;

    invoke-virtual {p2}, Lg/cbf;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xe

    invoke-direct {v0, v1, p2}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lg/cx;->a(Lg/dkp;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lg/cbf;->getData()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lg/fjv;

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, p2}, Lg/cx;->onSuccess(Ljava/lang/Object;)V

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "update_response"

    invoke-static {p2}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public w(Lg/czh;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lg/edm;->c:Ljava/lang/Object;

    check-cast p1, Lg/cx;

    new-instance p2, Lg/dcq;

    iget-object v0, p0, Lg/edm;->a:Ljava/lang/Object;

    check-cast v0, Lg/dqe;

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120554

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p2, v1, v0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lg/cx;->a(Lg/dkp;)V

    return-void
.end method
