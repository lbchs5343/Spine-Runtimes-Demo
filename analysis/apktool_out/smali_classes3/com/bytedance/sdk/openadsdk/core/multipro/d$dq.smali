.class Lcom/bytedance/sdk/openadsdk/core/multipro/d$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field static final dq:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sp_multi_info"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d$dq;->dq:Lcom/bytedance/sdk/component/mn/dq;

    return-void
.end method
