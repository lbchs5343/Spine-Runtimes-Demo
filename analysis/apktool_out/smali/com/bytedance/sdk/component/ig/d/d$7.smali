.class Lcom/bytedance/sdk/component/ig/d/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ig/d/d;->s()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$7;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d$7;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/utils/e;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$7;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;Lcom/bytedance/sdk/component/utils/e;)Lcom/bytedance/sdk/component/utils/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSJ_VIDEO_TTVideo"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
