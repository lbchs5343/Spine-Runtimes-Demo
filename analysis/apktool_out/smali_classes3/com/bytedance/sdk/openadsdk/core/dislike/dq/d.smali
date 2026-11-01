.class public Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d$dq;
    }
.end annotation


# instance fields
.field private final dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    return-void
.end method

.method public static final dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Landroid/app/Dialog;[I)V
    .locals 5

    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    array-length p0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d$dq;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/iw;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Lcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    :cond_0
    return-void
.end method
