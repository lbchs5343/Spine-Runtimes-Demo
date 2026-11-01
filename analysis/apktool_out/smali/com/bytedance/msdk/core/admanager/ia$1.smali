.class Lcom/bytedance/msdk/core/admanager/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/ig/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/ia;->dq(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/core/admanager/ia;Z)Z

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/dq;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/core/admanager/ia;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/s/d/p;->ox(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/ia;->d(Lcom/bytedance/msdk/core/admanager/ia;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/ia;->d(Lcom/bytedance/msdk/core/admanager/ia;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/api/p/dq/mn/dq;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ia$1;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/core/admanager/ia;Lcom/bytedance/msdk/api/p/dq/mn/dq;)V

    return-void
.end method
