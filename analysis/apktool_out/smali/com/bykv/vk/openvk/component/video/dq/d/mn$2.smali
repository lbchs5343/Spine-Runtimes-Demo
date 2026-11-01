.class Lcom/bykv/vk/openvk/component/video/dq/d/mn$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Ljava/io/File;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/dq/d/mn;

.field final synthetic dq:Lcom/bytedance/sdk/component/o/ia;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/mn;Ljava/lang/String;Lcom/bytedance/sdk/component/o/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$2;->d:Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    iput-object p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$2;->dq:Lcom/bytedance/sdk/component/o/ia;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$2;->dq:Lcom/bytedance/sdk/component/o/ia;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method
