.class Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;J)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    iput-wide p2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->dq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void
.end method

.method public onResponse(Lcom/bytedance/sdk/component/d/dq/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-wide v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->dq:J

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v10, 0x0

    const-string v11, " Preload size="

    const-string v12, "Pre finally "

    const-string v13, "VideoPreload"

    const/4 v14, 0x0

    if-eqz v2, :cond_8

    :try_start_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v3, v4, v15}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v12, v3, v10

    aput-object v0, v3, v7

    aput-object v11, v3, v6

    aput-object v2, v3, v5

    invoke-static {v13, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v5, v14

    move-object v6, v5

    const/16 p1, 0x3

    const/16 v10, 0x259

    const/16 v18, 0x2

    :goto_1
    const/16 v21, 0x1

    const/16 v24, 0x0

    goto/16 :goto_a

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :try_start_3
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const-wide/16 v16, 0x0

    if-eqz v0, :cond_1

    if-eqz v15, :cond_1

    const/16 p1, 0x3

    const/16 v18, 0x2

    :try_start_4
    iget-wide v5, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->dq:J

    invoke-virtual {v15}, Lcom/bytedance/sdk/component/d/dq/fw;->dq()J

    move-result-wide v19

    add-long v5, v5, v19

    invoke-virtual {v15}, Lcom/bytedance/sdk/component/d/dq/fw;->ox()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v19, v5

    move-object v5, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v14

    move-object v6, v5

    :goto_2
    move-object v14, v15

    const/16 v10, 0x259

    goto :goto_1

    :cond_1
    const/16 p1, 0x3

    const/16 v18, 0x2

    move-object v5, v14

    move-wide/from16 v19, v16

    :goto_3
    if-nez v5, :cond_2

    :try_start_5
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v4, v6}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v12, v3, v10

    aput-object v0, v3, v7

    aput-object v11, v3, v18

    aput-object v2, v3, p1

    invoke-static {v13, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v6, v14

    goto :goto_2

    :cond_2
    :try_start_6
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Ljava/io/File;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/16 v21, 0x1

    :try_start_7
    const-string v7, "rw"

    invoke-direct {v6, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/16 v0, 0x2000

    :try_start_8
    new-array v0, v0, [B

    move-wide/from16 v22, v16

    const/4 v7, 0x0

    :goto_4
    rsub-int v14, v7, 0x2000

    invoke-virtual {v5, v0, v7, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v24, 0x0

    const/4 v10, -0x1

    if-eq v14, v10, :cond_6

    :try_start_9
    iget-object v10, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v10}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->ox(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v12, v3, v24

    aput-object v0, v3, v21

    aput-object v11, v3, v18

    aput-object v2, v3, p1

    invoke-static {v13, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :goto_5
    move-object v14, v15

    :goto_6
    const/16 v10, 0x259

    goto/16 :goto_a

    :cond_3
    add-int/2addr v7, v14

    int-to-long v8, v14

    add-long v22, v22, v8

    const-wide/16 v8, 0x2000

    :try_start_a
    rem-long v8, v22, v8

    cmp-long v14, v8, v16

    if-eqz v14, :cond_4

    iget-wide v8, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->dq:J

    sub-long v8, v19, v8

    cmp-long v14, v22, v8

    if-nez v14, :cond_5

    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    iget-object v9, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v9}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v0, v8, v7, v9}, Lcom/bykv/vk/openvk/component/video/dq/s/ox;->dq(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    int-to-long v7, v7

    add-long/2addr v3, v7

    const/4 v7, 0x0

    :cond_5
    const/4 v8, 0x4

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_6
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v19, v3

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)V

    :cond_7
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v14, v6

    goto :goto_8

    :catchall_4
    move-exception v0

    const/16 v24, 0x0

    goto :goto_5

    :catchall_5
    move-exception v0

    :goto_7
    const/16 v24, 0x0

    move-object v6, v14

    goto :goto_5

    :catchall_6
    move-exception v0

    const/16 v21, 0x1

    goto :goto_7

    :catchall_7
    move-exception v0

    const/16 p1, 0x3

    const/16 v18, 0x2

    const/16 v21, 0x1

    const/16 v24, 0x0

    move-object v5, v14

    move-object v6, v5

    goto :goto_5

    :catchall_8
    move-exception v0

    const/16 p1, 0x3

    const/16 v18, 0x2

    const/16 v21, 0x1

    const/16 v24, 0x0

    move-object v5, v14

    move-object v6, v5

    goto/16 :goto_6

    :cond_8
    const/16 p1, 0x3

    const/16 v18, 0x2

    const/16 v21, 0x1

    const/16 v24, 0x0

    :try_start_b
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v3

    const-string v4, "Network link failed."
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    const/16 v10, 0x259

    :try_start_c
    invoke-static {v0, v3, v10, v4}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object v5, v14

    move-object v15, v5

    :goto_8
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v24

    aput-object v0, v3, v21

    aput-object v11, v3, v18

    aput-object v2, v3, p1

    invoke-static {v13, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    :goto_9
    move-object v5, v14

    move-object v6, v5

    goto :goto_a

    :catchall_a
    move-exception v0

    const/16 v10, 0x259

    goto :goto_9

    :goto_a
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v4

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v9

    goto :goto_b

    :catchall_b
    move-exception v0

    goto :goto_c

    :cond_9
    const/16 v9, 0x259

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v9, v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v6}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v24

    aput-object v0, v3, v21

    aput-object v11, v3, v18

    aput-object v2, v3, p1

    invoke-static {v13, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :goto_c
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v3, v6}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v3, v5}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v3, v14}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v24

    aput-object v2, v4, v21

    aput-object v11, v4, v18

    aput-object v3, v4, p1

    invoke-static {v13, v4}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    throw v0
.end method
