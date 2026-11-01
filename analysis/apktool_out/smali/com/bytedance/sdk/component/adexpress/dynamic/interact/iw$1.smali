.class Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw;->dq(IIILorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/mn;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw;Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fw;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fw;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;->dq(ZLcom/bytedance/sdk/component/adexpress/dynamic/interact/jy;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/iw$1;->dq:Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method
