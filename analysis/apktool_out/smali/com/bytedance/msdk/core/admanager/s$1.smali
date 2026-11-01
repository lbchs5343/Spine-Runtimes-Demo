.class Lcom/bytedance/msdk/core/admanager/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/ia/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/s;->dq(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/s;

.field final synthetic dq:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/s;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/s$1;->d:Lcom/bytedance/msdk/core/admanager/s;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/s$1;->dq:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/s$1;->d:Lcom/bytedance/msdk/core/admanager/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/s;->dq(Lcom/bytedance/msdk/core/admanager/s;Z)Z

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/ox/dq;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/s$1;->dq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/s$1;->dq:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/s$1;->d:Lcom/bytedance/msdk/core/admanager/s;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/msdk/core/admanager/s;->dq(Lcom/bytedance/msdk/api/p/dq/ox/dq;I)V

    return-void
.end method
