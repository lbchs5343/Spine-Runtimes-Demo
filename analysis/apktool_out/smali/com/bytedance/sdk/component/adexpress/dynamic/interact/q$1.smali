.class Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;->dq(ZLcom/bytedance/sdk/component/adexpress/dynamic/interact/jy;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;)Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;)Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/mn;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/mn;->vw()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;)Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
