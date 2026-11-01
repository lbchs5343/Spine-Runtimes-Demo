.class Lcom/bytedance/msdk/core/s/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;ZLcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ia:Lcom/bytedance/msdk/core/s/dq/dq;

.field final synthetic iw:Lcom/bytedance/msdk/api/p/no;

.field final synthetic mn:Lcom/bytedance/msdk/core/no/o;

.field final synthetic ox:Z

.field final synthetic p:Ljava/util/Map;

.field final synthetic s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/s/dq/dq;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ZLjava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-boolean p4, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->ox:Z

    iput-object p5, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->p:Ljava/util/Map;

    iput-object p6, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->s:Landroid/content/Context;

    iput-object p7, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->iw:Lcom/bytedance/msdk/api/p/no;

    iput-object p8, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->mn:Lcom/bytedance/msdk/core/no/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Lcom/bytedance/msdk/core/s/dq/dq;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->dq:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/s/d/ig;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result v0

    const-string v2, "TTMediationSDK"

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/s/d/ig;

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v5}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v5

    iget-object v6, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v6}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    move-object v5, v0

    :goto_1
    const-string v6, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u7f13\u5b58\u79fb\u9664 -----\uff1a"

    const-string v7, ", "

    invoke-static {v6, v0, v7, v5, v7}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->dq:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "\u79fb\u9664\u5e7f\u544a\u6570\u4e3a0"

    :goto_2
    invoke-static {v0, v1, v2}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->d:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v4

    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->d:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->d:Lcom/bytedance/msdk/api/dq/d;

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    if-ne v1, v5, :cond_8

    :cond_7
    const/4 v3, 0x1

    :cond_8
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->dq:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v0}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->ox:Z

    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->dq:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/msdk/core/s/dq/dq;->ox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    iget-object v4, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->dq:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v6, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->p:Ljava/util/Map;

    iget-object v7, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->s:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->iw:Lcom/bytedance/msdk/api/p/no;

    iget-object v9, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->mn:Lcom/bytedance/msdk/core/no/o;

    invoke-static/range {v3 .. v9}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Lcom/bytedance/msdk/core/s/dq/dq;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0c\u56e0\u4e3a\uff1a\u5df2\u53d1\u8d77waterfall\u9884\u52a0\u8f7d\uff0c\u6216feed\u591a\u5e7f\u544a\uff0c\u6216\u672a\u5f00\u542fadn\u9884\u52a0\u8f7d\uff0c\u6216\u662fbanner\u8f6e\u64ad --: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/s/dq/dq$2;->dq:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
