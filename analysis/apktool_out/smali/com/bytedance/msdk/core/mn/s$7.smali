.class Lcom/bytedance/msdk/core/mn/s$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->d(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq;

.field final synthetic dq:Ljava/util/List;

.field final synthetic ox:Lcom/bytedance/msdk/core/mn/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$7;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/s$7;->dq:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/s$7;->d:Lcom/bytedance/msdk/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$7;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$7;->dq:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s$7;->d:Lcom/bytedance/msdk/api/dq;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/ox;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
