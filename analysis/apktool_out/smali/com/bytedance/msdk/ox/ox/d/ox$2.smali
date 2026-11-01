.class Lcom/bytedance/msdk/ox/ox/d/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/ox;->ox(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/ox$2;->dq:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox$2;->dq:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox$2;->dq:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox$2;->dq:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox$2;->dq:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v2}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/ox/ox;->ox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
