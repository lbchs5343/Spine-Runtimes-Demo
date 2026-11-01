.class Lcom/bytedance/sdk/component/ig/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ig/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ig/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ig/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ig/d/d;->gh()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/d/d;->cd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "run: lastCur = "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v2, "  curPosition="

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const-string v2, "CSJ_VIDEO_TTVideo"

    invoke-static {v2, v4}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/d/d;->cd()J

    move-result-wide v3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;JJ)V

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;J)J

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->d(Lcom/bytedance/sdk/component/ig/d/d;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ig/d/d;->p(Lcom/bytedance/sdk/component/ig/d/d;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ig/d/d;->cd()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ig/d/d$1;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ig/d/d;->cd()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;JJ)V

    return-void
.end method
