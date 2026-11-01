.class Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/dq$ox;->call(Lcom/bytedance/sdk/openadsdk/api/dq$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/dq$d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox;Lcom/bytedance/sdk/openadsdk/api/dq$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->dq:Lcom/bytedance/sdk/openadsdk/api/dq$d;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "_tt_ad_sdk_"

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Lcom/bytedance/sdk/openadsdk/api/dq$ox;)Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->dq:Lcom/bytedance/sdk/openadsdk/api/dq$d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Lcom/bytedance/sdk/openadsdk/api/dq$ox;)Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/dq$d;->dq(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not ready, no manager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected manager call error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$7;->ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Ljava/lang/Throwable;)V

    return-void
.end method
