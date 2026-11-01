.class Lcom/bytedance/sdk/openadsdk/core/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/kx;

.field final synthetic ia:I

.field final synthetic iw:J

.field final synthetic kk:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field final synthetic mn:Ljava/lang/String;

.field final synthetic o:Lcom/bytedance/sdk/openadsdk/core/p;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

.field final synthetic p:Lcom/bykv/vk/openvk/api/proto/EventListener;

.field final synthetic s:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/kx;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;JJLjava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->o:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/kx;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->p:Lcom/bykv/vk/openvk/api/proto/EventListener;

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->s:J

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->iw:J

    iput-object p10, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->mn:Ljava/lang/String;

    iput p11, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->ia:I

    iput-object p12, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->kk:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/kx;

    const-string v2, "async_wait_cost"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->o:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->p:Lcom/bykv/vk/openvk/api/proto/EventListener;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/kx;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;Lcom/bytedance/sdk/openadsdk/core/kx;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/kx;

    const-string v2, "async_done_cost"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->s:J

    sub-long v9, v1, v3

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/kx;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->s:J

    sub-long v11, v1, v3

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->o:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Landroid/content/Context;

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->iw:J

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/kx;

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->mn:Ljava/lang/String;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->ia:I

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/p$1;->kk:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const/4 v14, 0x1

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v5 .. v18}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p;Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    :cond_0
    return-void
.end method
