.class Lcom/bytedance/sdk/openadsdk/core/o/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/o/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static dq:Lcom/bytedance/sdk/openadsdk/core/o/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/p$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o/p$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/p;

    return-void
.end method

.method public static synthetic dq()Lcom/bytedance/sdk/openadsdk/core/o/p;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o/p$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/o/p;

    return-object v0
.end method
