.class Lcom/bytedance/sdk/component/adexpress/d/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/d/iw;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/d/iw;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/d/iw;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/iw$1;->d:Lcom/bytedance/sdk/component/adexpress/d/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/adexpress/d/jy;->a_(I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/iw$1;->d:Lcom/bytedance/sdk/component/adexpress/d/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/d/iw;->dq(Lcom/bytedance/sdk/component/adexpress/d/iw;)Lcom/bytedance/sdk/component/adexpress/d/dq;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/d/jy;->dq(Lcom/bytedance/sdk/component/adexpress/d/p;Lcom/bytedance/sdk/component/adexpress/d/q;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Z)V

    return-void
.end method
