.class Lcom/bytedance/sdk/component/adexpress/d/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/d/f;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/d/f;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/d/f;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->d:Lcom/bytedance/sdk/component/adexpress/d/f;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->d:Lcom/bytedance/sdk/component/adexpress/d/f;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/f;->dq(Lcom/bytedance/sdk/component/adexpress/d/f;Lcom/bytedance/sdk/component/adexpress/d/o$dq;ILjava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->d:Lcom/bytedance/sdk/component/adexpress/d/f;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/d/f;->dq(Lcom/bytedance/sdk/component/adexpress/d/f;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->d:Lcom/bytedance/sdk/component/adexpress/d/f;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/d/f;->d(Lcom/bytedance/sdk/component/adexpress/d/f;)Lcom/bytedance/sdk/component/adexpress/s/dq;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/d/jy;->dq(Lcom/bytedance/sdk/component/adexpress/d/p;Lcom/bytedance/sdk/component/adexpress/d/q;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Z)V

    return-void
.end method
