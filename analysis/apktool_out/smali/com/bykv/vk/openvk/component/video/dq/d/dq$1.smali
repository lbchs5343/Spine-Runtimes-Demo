.class Lcom/bykv/vk/openvk/component/video/dq/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->s:Lcom/bykv/vk/openvk/component/video/dq/d/p/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq;)I

    :cond_0
    return-void
.end method
