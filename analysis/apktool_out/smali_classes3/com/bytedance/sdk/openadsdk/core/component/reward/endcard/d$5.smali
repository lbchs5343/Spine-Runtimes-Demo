.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/dq/s/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:D

.field final synthetic dq:D

.field final synthetic ox:D

.field final synthetic p:D

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;DDDD)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->dq:D

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->d:D

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->ox:D

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->p:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/graphics/Bitmap;)V
    .locals 11

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->dq:D

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->d:D

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->ox:D

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;->p:D

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(DDDDLjava/lang/String;)V

    :cond_0
    return-void
.end method
