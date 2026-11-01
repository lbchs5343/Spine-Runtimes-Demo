.class Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic dq:Landroid/view/ViewGroup;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/widget/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->dq:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->d:Landroid/view/View;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->dq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->d:Landroid/view/View;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Landroid/app/Dialog;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->dq:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->show()V

    return-void
.end method
