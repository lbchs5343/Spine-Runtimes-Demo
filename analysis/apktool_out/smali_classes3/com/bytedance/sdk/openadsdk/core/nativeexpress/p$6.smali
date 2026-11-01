.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->iw(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->dq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;->dq:I

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    return-object v0
.end method
