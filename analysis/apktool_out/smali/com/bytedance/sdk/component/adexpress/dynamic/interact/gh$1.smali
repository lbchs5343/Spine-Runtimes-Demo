.class Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

.field final synthetic dq:Landroid/view/View;

.field final synthetic ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->dq:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->dq:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;)Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;)Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;)Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/mn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/mn;->vw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh$1;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/gh;)Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
