.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->bu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ha(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->O_()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->fd(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->O_()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->O_()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->bu(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ws(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->uh()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xi(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->uh()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V

    return-void

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V

    return-void
.end method
