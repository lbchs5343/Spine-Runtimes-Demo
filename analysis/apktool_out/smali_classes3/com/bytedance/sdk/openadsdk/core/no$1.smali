.class Lcom/bytedance/sdk/openadsdk/core/no$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/no;->iw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/no;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/no;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no$1;->d:Lcom/bytedance/sdk/openadsdk/core/no;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/no$1;->dq:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no$1;->d:Lcom/bytedance/sdk/openadsdk/core/no;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no$1;->dq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Lcom/bytedance/sdk/openadsdk/core/no;Ljava/lang/String;)V

    return-void
.end method
