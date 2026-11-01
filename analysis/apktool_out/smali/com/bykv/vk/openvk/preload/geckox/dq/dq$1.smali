.class final Lcom/bykv/vk/openvk/preload/geckox/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/geckox/dq/dq;->dq(Landroid/content/Context;Ljava/util/Map;Ljava/io/File;Lcom/bykv/vk/openvk/preload/geckox/o/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/bykv/vk/openvk/preload/geckox/o/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bykv/vk/openvk/preload/geckox/o/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$1;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$1;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$1;->ox:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$1;->dq:Landroid/content/Context;

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$1;->d:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;

    iget-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->s:Ljava/io/File;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/utils/p;->dq(Ljava/io/File;)Z

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq/d;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/dq/d;

    move-result-object v9

    iget-object v10, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->dq:Ljava/lang/String;

    iget-object v11, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->d:Ljava/lang/String;

    iget v12, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->ox:I

    iget-wide v14, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->p:J

    const/16 v17, 0x0

    sub-long v18, v7, v5

    const/16 v13, 0xc8

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v19}, Lcom/bykv/vk/openvk/preload/geckox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq/d;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/dq/d;

    move-result-object v4

    move-object v9, v4

    iget-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->dq:Ljava/lang/String;

    move-wide v10, v5

    iget-object v5, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->d:Ljava/lang/String;

    iget v6, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->ox:I

    iget-wide v12, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->p:J

    move-wide v14, v10

    const-string v11, "delete failed"

    sub-long/2addr v7, v14

    move-object v3, v9

    move-wide/from16 v20, v12

    move-wide v12, v7

    move-wide/from16 v8, v20

    const/16 v7, 0xc9

    const/16 v10, 0x259

    invoke-virtual/range {v3 .. v13}, Lcom/bykv/vk/openvk/preload/geckox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    const-string v2, "clean-channel"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
