.class final Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Double;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->d:Ljava/lang/Double;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->p:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->d:Ljava/lang/Double;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->ox:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/ji$2;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ji;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
