.class Lcom/bytedance/sdk/openadsdk/jy/dq$1$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/jy/dq$1;->dq(Ljava/lang/Throwable;Ljava/lang/Thread;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Throwable;

.field final synthetic dq:Ljava/lang/Thread;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/jy/dq$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/jy/dq$1;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/jy/dq$1$1;->ox:Lcom/bytedance/sdk/openadsdk/jy/dq$1;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/jy/dq$1$1;->dq:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/jy/dq$1$1;->d:Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/bl;->dq()Lcom/bytedance/sdk/openadsdk/core/ir/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/jy/dq$1$1;->dq:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/jy/dq$1$1;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/bl;->dq(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
