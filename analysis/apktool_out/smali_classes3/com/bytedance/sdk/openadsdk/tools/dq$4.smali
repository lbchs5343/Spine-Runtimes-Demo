.class Lcom/bytedance/sdk/openadsdk/tools/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/tools/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/tools/dq;->w(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/tools/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/tools/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/tools/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/tools/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq(Lcom/bytedance/sdk/openadsdk/tools/dq;)Lcom/bytedance/sdk/openadsdk/api/TTILog;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
