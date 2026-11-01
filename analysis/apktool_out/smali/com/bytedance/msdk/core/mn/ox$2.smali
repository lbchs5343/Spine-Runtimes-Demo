.class Lcom/bytedance/msdk/core/mn/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/ox;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/mn/ox;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/ox;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox$2;->d:Lcom/bytedance/msdk/core/mn/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/ox$2;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/bytedance/msdk/core/p/iw;->dq()Lcom/bytedance/msdk/core/p/s;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/msdk/core/p/mn;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox$2;->dq:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox$2;->d:Lcom/bytedance/msdk/core/mn/ox;

    iget-wide v3, v0, Lcom/bytedance/msdk/core/mn/ox;->h:J

    iget-object v5, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v6, v0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    new-instance v7, Lcom/bytedance/msdk/core/mn/ox$2$1;

    invoke-direct {v7, p0}, Lcom/bytedance/msdk/core/mn/ox$2$1;-><init>(Lcom/bytedance/msdk/core/mn/ox$2;)V

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/msdk/core/p/mn;->dq(Ljava/lang/String;JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/p/s$dq;)V

    return-void
.end method
