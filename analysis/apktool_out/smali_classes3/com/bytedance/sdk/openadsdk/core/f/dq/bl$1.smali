.class final Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/dq/p$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$1;->dq:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/component/dq/p;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$1;->dq:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-object v0
.end method
