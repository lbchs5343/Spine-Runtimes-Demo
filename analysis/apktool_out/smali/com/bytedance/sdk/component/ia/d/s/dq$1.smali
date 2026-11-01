.class Lcom/bytedance/sdk/component/ia/d/s/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/s/dq;->d([BLjava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ia/d/s/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/s/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/s/dq$1;->dq:Lcom/bytedance/sdk/component/ia/d/s/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ia/dq/dq/p;Lcom/bytedance/sdk/component/ia/dq/dq/s;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/dq/s;->dq()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/dq/s;->d()Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/s/dq$1;->dq:Lcom/bytedance/sdk/component/ia/d/s/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/s/dq;->dq(Lcom/bytedance/sdk/component/ia/d/s/dq;)Lcom/bytedance/sdk/component/ia/dq/s;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/s/dq$1;->dq:Lcom/bytedance/sdk/component/ia/d/s/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/s/dq;->dq(Lcom/bytedance/sdk/component/ia/d/s/dq;)Lcom/bytedance/sdk/component/ia/dq/s;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/dq/p;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/s/dq$1;->dq:Lcom/bytedance/sdk/component/ia/d/s/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/s/dq;->dq(Lcom/bytedance/sdk/component/ia/d/s/dq;)Lcom/bytedance/sdk/component/ia/dq/s;

    return-void
.end method
