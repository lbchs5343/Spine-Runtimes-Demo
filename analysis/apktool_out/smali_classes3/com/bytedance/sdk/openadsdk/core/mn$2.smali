.class Lcom/bytedance/sdk/openadsdk/core/mn$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/mn;->dq(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/embedapplog/s$dq;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/bytedance/embedapplog/s$dq;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
