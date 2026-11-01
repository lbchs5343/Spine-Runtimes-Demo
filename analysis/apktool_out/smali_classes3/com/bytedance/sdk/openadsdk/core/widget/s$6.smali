.class Lcom/bytedance/sdk/openadsdk/core/widget/s$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/s;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/widget/s;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$6;->d:Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$6;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$6;->d:Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$6;->dq:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/s;I)V

    return-void
.end method
