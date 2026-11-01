.class Lcom/bytedance/msdk/s/kk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/kk;->dq(Ljava/util/List;Lcom/bytedance/sdk/component/ia/dq/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ia/dq/o;

.field final synthetic dq:Ljava/util/List;

.field final synthetic ox:Ljava/util/List;

.field final synthetic p:Lcom/bytedance/msdk/s/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/kk;Ljava/util/List;Lcom/bytedance/sdk/component/ia/dq/o;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/kk$1;->p:Lcom/bytedance/msdk/s/kk;

    iput-object p2, p0, Lcom/bytedance/msdk/s/kk$1;->dq:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/msdk/s/kk$1;->d:Lcom/bytedance/sdk/component/ia/dq/o;

    iput-object p4, p0, Lcom/bytedance/msdk/s/kk$1;->ox:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/s/kk$1;->p:Lcom/bytedance/msdk/s/kk;

    iget-object v1, p0, Lcom/bytedance/msdk/s/kk$1;->dq:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/s/kk;->dq(Lcom/bytedance/msdk/s/kk;Ljava/util/List;)Lcom/bytedance/msdk/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/s/kk$1;->d:Lcom/bytedance/sdk/component/ia/dq/o;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/d/ox/d;

    iget-boolean v3, v0, Lcom/bytedance/msdk/s/s;->dq:Z

    iget v4, v0, Lcom/bytedance/msdk/s/s;->d:I

    iget-object v5, v0, Lcom/bytedance/msdk/s/s;->ox:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/bytedance/msdk/s/s;->p:Z

    const-string v7, ""

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/component/ia/d/d/ox/d;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;

    iget-object v4, p0, Lcom/bytedance/msdk/s/kk$1;->ox:Ljava/util/List;

    invoke-direct {v3, v2, v4}, Lcom/bytedance/sdk/component/ia/d/d/ox/dq;-><init>(Lcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bytedance/msdk/s/kk$1;->d:Lcom/bytedance/sdk/component/ia/dq/o;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/ia/dq/o;->dq(Ljava/util/List;)V

    iget-boolean v0, v0, Lcom/bytedance/msdk/s/s;->dq:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/s/kk;->dq()V

    :cond_0
    return-void
.end method
