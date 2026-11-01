.class public Lcom/bykv/vk/openvk/component/video/dq/s/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/dq/s/d$d;,
        Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;
    }
.end annotation


# direct methods
.method public static dq(JLjava/lang/String;Lcom/bykv/vk/openvk/component/video/dq/s/d$d;)V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;

    invoke-direct {v0, p3, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/s/d$dq;-><init>(Lcom/bykv/vk/openvk/component/video/dq/s/d$d;J)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/o/p/d;->dq([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
