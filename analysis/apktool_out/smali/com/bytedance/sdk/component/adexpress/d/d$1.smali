.class Lcom/bytedance/sdk/component/adexpress/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/d/d;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/d/d;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/d/d;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/d/d;->d(Lcom/bytedance/sdk/component/adexpress/d/d;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/d/d;->dq(Lcom/bytedance/sdk/component/adexpress/d/d;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d(Lcom/bytedance/sdk/component/adexpress/d/o;)Z

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/component/adexpress/d/kk;->dq(IILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d(Lcom/bytedance/sdk/component/adexpress/d/o;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/o;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/adexpress/d/jy;->a_(I)V

    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/d/d;->d(Lcom/bytedance/sdk/component/adexpress/d/d;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/d/d;->dq(Lcom/bytedance/sdk/component/adexpress/d/d;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/d/d;->d(Lcom/bytedance/sdk/component/adexpress/d/d;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/d/d;->dq(Lcom/bytedance/sdk/component/adexpress/d/d;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->iw(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/d/d;->d(Lcom/bytedance/sdk/component/adexpress/d/d;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/kk;->mp()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->d:Lcom/bytedance/sdk/component/adexpress/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/d/d;->ox(Lcom/bytedance/sdk/component/adexpress/d/d;)Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/d/jy;->dq(Lcom/bytedance/sdk/component/adexpress/d/p;Lcom/bytedance/sdk/component/adexpress/d/q;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Z)V

    return-void
.end method
