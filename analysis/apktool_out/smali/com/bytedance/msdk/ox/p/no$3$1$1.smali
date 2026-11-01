.class Lcom/bytedance/msdk/ox/p/no$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/no$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/p/no$3$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/no$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no$3$1$1;->dq:Lcom/bytedance/msdk/ox/p/no$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1$1;->dq:Lcom/bytedance/msdk/ox/p/no$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->kk(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1$1;->dq:Lcom/bytedance/msdk/ox/p/no$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->kk(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1$1;->dq:Lcom/bytedance/msdk/ox/p/no$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->iw(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/p/no;->d(Lcom/bytedance/msdk/ox/p/no;Lcom/bytedance/msdk/ox/p/iw;)Lcom/bytedance/msdk/ox/p/iw;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1$1;->dq:Lcom/bytedance/msdk/ox/p/no$3$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->d(Lcom/bytedance/msdk/ox/p/no;)V

    return-void
.end method
