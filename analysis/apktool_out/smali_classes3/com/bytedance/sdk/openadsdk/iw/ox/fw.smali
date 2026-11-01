.class public Lcom/bytedance/sdk/openadsdk/iw/ox/fw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:J

.field private ox:I

.field private p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field private s:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->dq:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->dq:J

    return-wide v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox:I

    return v0
.end method

.method public p()Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object v0
.end method
