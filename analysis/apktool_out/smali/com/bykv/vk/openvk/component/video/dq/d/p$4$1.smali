.class Lcom/bykv/vk/openvk/component/video/dq/d/p$4$1;
.super Lcom/bytedance/sdk/component/o/p/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/p$4;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/d/p$4;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/p$4;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$4$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p$4;

    const-string p1, "Preloader$4$1"

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/o/p/ox;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
