.class Lcom/bytedance/msdk/core/mn/s$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/mn/s;

.field final synthetic dq:Lcom/bytedance/msdk/api/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$4;->d:Lcom/bytedance/msdk/core/mn/s;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/s$4;->dq:Lcom/bytedance/msdk/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$4;->d:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$4;->dq:Lcom/bytedance/msdk/api/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
