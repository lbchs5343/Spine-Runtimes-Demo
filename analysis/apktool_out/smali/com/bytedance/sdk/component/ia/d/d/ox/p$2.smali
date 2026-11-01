.class Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Ljava/util/List;ZJLjava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Z

.field final synthetic ox:Ljava/lang/Object;

.field final synthetic p:I

.field final synthetic s:Lcom/bytedance/sdk/component/ia/d/d/ox/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d/ox/p;ZJLjava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->s:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->dq:Z

    iput-wide p3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->d:J

    iput-object p5, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->ox:Ljava/lang/Object;

    iput p6, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/d/d/ox/dq;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->s:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;->dq()Lcom/bytedance/sdk/component/ia/d/d/ox/d;

    move-result-object v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;->d()Ljava/util/List;

    move-result-object v6

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->s:Lcom/bytedance/sdk/component/ia/d/d/ox/p;

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->dq:Z

    iget-wide v7, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->d:J

    iget-object v9, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->ox:Ljava/lang/Object;

    iget v10, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;->p:I

    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Lcom/bytedance/sdk/component/ia/d/d/ox/p;ZLcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
