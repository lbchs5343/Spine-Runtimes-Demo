.class Lcom/bytedance/sdk/openadsdk/core/ir/n$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field static final dq:Lcom/bytedance/sdk/component/mn/p$dq;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->ox()Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/n$dq;->dq:Lcom/bytedance/sdk/component/mn/p$dq;

    return-void
.end method
