.class Lcom/bytedance/msdk/ox/p/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/p/o$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/dq;->d(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/dq$1;->dq:Lcom/bytedance/msdk/ox/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq$1;->dq:Lcom/bytedance/msdk/ox/p/dq;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    const v2, 0x9c74

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/ox/p/dq;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
