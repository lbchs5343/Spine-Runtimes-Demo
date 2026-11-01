.class Lcom/bytedance/sdk/openadsdk/tools/dq$6;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/tools/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/tools/dq$dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/tools/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/tools/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->p:Lcom/bytedance/sdk/openadsdk/tools/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->dq:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->ox:Lcom/bytedance/sdk/openadsdk/tools/dq$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->p:Lcom/bytedance/sdk/openadsdk/tools/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/tools/dq;->d(Lcom/bytedance/sdk/openadsdk/tools/dq;)Lcom/bytedance/sdk/openadsdk/tools/dq$d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$6;->ox:Lcom/bytedance/sdk/openadsdk/tools/dq$dq;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/tools/dq$d;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V

    return-void
.end method
