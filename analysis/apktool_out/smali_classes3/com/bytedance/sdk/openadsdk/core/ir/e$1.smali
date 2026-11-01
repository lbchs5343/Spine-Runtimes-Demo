.class final Lcom/bytedance/sdk/openadsdk/core/ir/e$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/e;->p(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/o/ia;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/o/ia;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/e$1;->dq:Lcom/bytedance/sdk/component/o/ia;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/e$1;->dq:Lcom/bytedance/sdk/component/o/ia;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method
