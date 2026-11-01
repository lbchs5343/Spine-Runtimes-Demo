.class Lcom/bykv/vk/openvk/component/video/dq/p/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/dq/p/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->gh()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "CSJ_VIDEO_MEDIA"

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-lez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v0, v12, :cond_4

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v12

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v0, v12, v14

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v12

    const/16 v0, 0x320

    cmp-long v14, v12, v2

    if-nez v14, :cond_2

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->p(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v12

    const-wide/16 v14, 0x190

    cmp-long v16, v12, v14

    if-ltz v16, :cond_1

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    const/16 v13, 0x2bd

    invoke-static {v12, v13, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;II)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0, v8}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->p(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v12

    iget-object v14, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v14}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->s(Lcom/bykv/vk/openvk/component/video/dq/p/p;)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-static {v0, v12, v13}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J

    goto :goto_2

    :cond_2
    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v13

    iget-object v15, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v15}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->p(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v15

    add-long/2addr v13, v15

    invoke-static {v12, v13, v14}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    const/16 v13, 0x2be

    invoke-static {v12, v13, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;II)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mn(Lcom/bykv/vk/openvk/component/video/dq/p/p;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    const-string v14, "handleMsg:  bufferingDuration ="

    aput-object v14, v13, v7

    aput-object v0, v13, v8

    const-string v0, "  bufferCount ="

    aput-object v0, v13, v5

    aput-object v12, v13, v4

    invoke-static {v9, v13}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0, v10, v11}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0, v7}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "error:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-lez v0, :cond_7

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v10

    cmp-long v0, v10, v2

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    const-string v11, "run: lastCur = "

    aput-object v11, v6, v7

    aput-object v0, v6, v8

    const-string v0, "  curPosition = "

    aput-object v0, v6, v5

    aput-object v10, v6, v4

    invoke-static {v9, v6}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;JJ)V

    :cond_6
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0, v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J

    :cond_7
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kk()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->s(Lcom/bykv/vk/openvk/component/video/dq/p/p;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_8
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd()J

    move-result-wide v2

    iget-object v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;JJ)V

    :cond_9
    :goto_3
    return-void
.end method
