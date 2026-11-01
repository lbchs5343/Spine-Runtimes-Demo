.class Lcom/bytedance/sdk/openadsdk/core/gh/no$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/no;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/gh/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/no;Ljava/lang/String;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->p:Lcom/bytedance/sdk/openadsdk/core/gh/no;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->dq:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->d:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->ox:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->dq:Ljava/lang/String;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/mp;->dq(Ljava/lang/String;D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->p:Lcom/bytedance/sdk/openadsdk/core/gh/no;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->ox:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/no$1;->d:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/no;->dq(Lcom/bytedance/sdk/openadsdk/core/gh/no;Lcom/bytedance/sdk/openadsdk/no/dq/dq;Z)V

    return-void
.end method
