.class public Lcom/bykv/vk/openvk/component/video/dq/d/ox;
.super Ljava/lang/Object;


# instance fields
.field private final d:J

.field private final dq:J

.field private final ox:J


# virtual methods
.method public dq(I)J
    .locals 6

    if-gtz p1, :cond_0

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ox;->dq:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ox;->dq:J

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ox;->d:J

    int-to-long v4, p1

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/ox;->ox:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method
