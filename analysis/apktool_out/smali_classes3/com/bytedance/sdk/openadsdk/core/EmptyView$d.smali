.class public final Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/EmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final dq:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;)Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;Landroid/view/View;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
