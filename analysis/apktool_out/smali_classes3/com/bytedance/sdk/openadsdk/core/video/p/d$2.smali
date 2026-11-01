.class final Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;
.super Lcom/bytedance/sdk/openadsdk/core/wp/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

.field final synthetic p:J

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;JLcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->dq:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->ox:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->p:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILcom/bytedance/sdk/openadsdk/core/wp/ia;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/wp/ia;->ox()Lcom/bykv/vk/openvk/api/proto/Result;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->dq:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bykv/vk/openvk/api/proto/Result;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->ox:Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->p:J

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    move v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(ILcom/bytedance/sdk/openadsdk/core/wp/ia;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;JLcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1
.end method
