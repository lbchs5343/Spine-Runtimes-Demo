.class Lcom/bytedance/sdk/openadsdk/core/kk/dq$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kk/dq;->dq(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/kk/dq;

.field final synthetic dq:Lcom/bytedance/sdk/component/o/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kk/dq;Ljava/lang/String;ILcom/bytedance/sdk/component/o/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kk/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/kk/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kk/dq$1;->dq:Lcom/bytedance/sdk/component/o/ia;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kk/dq$1;->dq:Lcom/bytedance/sdk/component/o/ia;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method
