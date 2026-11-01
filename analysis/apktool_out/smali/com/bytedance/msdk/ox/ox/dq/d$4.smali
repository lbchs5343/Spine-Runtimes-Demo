.class Lcom/bytedance/msdk/ox/ox/dq/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/dq/d;->dq(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Ljava/util/List;

.field final synthetic ox:Lcom/bytedance/msdk/ox/ox/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/dq/d;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d$4;->ox:Lcom/bytedance/msdk/ox/ox/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d$4;->dq:Ljava/util/List;

    iput p3, p0, Lcom/bytedance/msdk/ox/ox/dq/d$4;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d$4;->ox:Lcom/bytedance/msdk/ox/ox/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d$4;->dq:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d$4;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/no/no;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/d$4;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/core/no/no;I)V

    return-void
.end method
