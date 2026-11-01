.class Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;Z)Z

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;J)J

    return-void
.end method

.method public onResponse(Lcom/bytedance/sdk/component/d/dq/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    if-eqz p2, :cond_12

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    :try_start_3
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/fw;->dq()J

    move-result-wide v5

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v0, v5, v6}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;J)J

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/fw;->ox()Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    :goto_0
    if-nez v3, :cond_3

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/fw;->close()V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ia(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_3
    const/16 v0, 0x2000

    :try_start_5
    new-array v0, v0, [B

    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v10, v7

    const/4 v9, 0x0

    :goto_3
    rsub-int v12, v9, 0x2000

    invoke-virtual {v3, v0, v9, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v13, -0x1

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    if-eq v12, v13, :cond_7

    add-int/2addr v9, v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2000

    rem-long v12, v10, v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    cmp-long v24, v12, v7

    if-eqz v24, :cond_5

    :try_start_6
    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v12

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-long/2addr v12, v7

    cmp-long v7, v10, v12

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v7, 0x1

    :goto_5
    :try_start_7
    const-string v8, "CSJ_MediaDLPlay"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 p1, 0x9

    iget-object v15, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v15}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/16 v26, 0x0

    :try_start_8
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v27, 0xa

    iget-object v14, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v28, v2

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v2

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const-string v30, "Write segment,execAppend ="

    aput-object v30, v2, v26

    aput-object v12, v2, v23

    const-string v12, " offset="

    aput-object v12, v2, v22

    aput-object v13, v2, v21

    const-string v12, " totalLength = "

    aput-object v12, v2, v20

    aput-object v15, v2, v19

    const-string v12, " saveSize ="

    aput-object v12, v2, v18

    aput-object v25, v2, v17

    const-string v12, " startSaved="

    aput-object v12, v2, v16

    aput-object v28, v2, p1

    const-string v12, " fileHash="

    aput-object v12, v2, v27

    const/16 v12, 0xb

    aput-object v14, v2, v12

    const-string v12, " url="

    const/16 v13, 0xc

    aput-object v12, v2, v13

    const/16 v12, 0xd

    aput-object v29, v2, v12

    invoke-static {v8, v2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_6

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->s(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->iw(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/io/RandomAccessFile;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v0, v8, v9, v12}, Lcom/bykv/vk/openvk/component/video/dq/s/ox;->dq(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    monitor-exit v2

    int-to-long v7, v9

    add-long/2addr v5, v7

    const/4 v9, 0x0

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_6
    :goto_6
    const-wide/16 v7, 0x0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    const/16 v26, 0x0

    goto/16 :goto_c

    :cond_7
    const/16 p1, 0x9

    const/16 v26, 0x0

    const/16 v27, 0xa

    const-string v0, "CSJ_MediaDLPlay"

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v7

    iget-object v9, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v9}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v12

    sub-long/2addr v7, v12

    cmp-long v9, v10, v7

    if-nez v9, :cond_8

    const/4 v7, 0x1

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v8}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->p(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "Write segment,Write over, startIndex ="

    aput-object v10, v9, v26

    aput-object v2, v9, v23

    const-string v2, " totalLength = "

    aput-object v2, v9, v22

    aput-object v5, v9, v21

    const-string v2, " saveSize = "

    aput-object v2, v9, v20

    aput-object v6, v9, v19

    const-string v2, " writeEndSegment ="

    aput-object v2, v9, v18

    aput-object v7, v9, v17

    const-string v2, " url="

    aput-object v2, v9, v16

    aput-object v8, v9, p1

    invoke-static {v0, v9}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    :catchall_4
    move-exception v0

    const/16 v26, 0x0

    :goto_8
    move-object v4, v3

    goto :goto_c

    :cond_9
    const/16 v26, 0x0

    :try_start_b
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->mn(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;J)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object v4, v3

    :goto_9
    if-eqz v3, :cond_a

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_b

    :cond_a
    :goto_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/fw;->close()V

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ia(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    return-void

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_6
    move-exception v0

    goto :goto_8

    :goto_c
    :try_start_d
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;Z)Z

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->mn(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;J)J

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v3, :cond_c

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_e

    :cond_c
    :goto_d
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/fw;->close()V

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ia(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_e
    return-void

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_8
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_f

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_f

    :catchall_9
    move-exception v0

    goto :goto_10

    :cond_f
    :goto_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/fw;->close()V

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ia(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->kk(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_11
    throw v2

    :cond_12
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->mn(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/dq/d;J)J

    return-void
.end method
