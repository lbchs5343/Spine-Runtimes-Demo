.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/HashMap;

.field final synthetic dq:Landroid/view/View;

.field final synthetic iw:Z

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

.field final synthetic ox:Landroid/view/View;

.field final synthetic p:Landroid/view/ViewGroup;

.field final synthetic s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;Landroid/view/View;Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->dq:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->ox:Landroid/view/View;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->p:Landroid/view/ViewGroup;

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->s:Z

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->iw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->dq:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->dq:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(II)Z

    move-result v1

    const-string v2, "error_code"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->dq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "view_width"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->dq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "view_height"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->d(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->ox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->ox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->ox:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->d()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;)V

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    move-result-object v1

    const-string v4, "easy_pfwv"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->dq:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->dq:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->ox:Landroid/view/View;

    invoke-virtual {v5, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->p:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "container_name"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->p:Landroid/view/ViewGroup;

    instance-of v5, v1, Landroid/widget/RelativeLayout;

    const/4 v6, 0x1

    const/4 v7, -0x2

    if-eqz v5, :cond_4

    const/16 v1, 0xd

    invoke-static {v7, v7, v1}, Lg/tn;->q(III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->p:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->s:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->iw:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void

    :cond_4
    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->p:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/EasyPlayableContainer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->s:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->iw:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d$3;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void
.end method
