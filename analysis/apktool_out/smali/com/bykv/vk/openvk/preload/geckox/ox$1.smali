.class final Lcom/bykv/vk/openvk/preload/geckox/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Ljava/util/Map;

.field final synthetic p:Ljava/util/Map;

.field final synthetic s:Lcom/bykv/vk/openvk/preload/geckox/ox;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/ox;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/o/dq;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->d:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->ox:Ljava/util/Map;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->p:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 44

    move-object/from16 v1, p0

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/dq/dq/ox;

    const-class v2, Lcom/bykv/vk/openvk/preload/geckox/s/dq/dq/dq;

    const-class v3, Lcom/bykv/vk/openvk/preload/geckox/s/dq/dq/d;

    const-class v4, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/s;

    const-class v5, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/dq;

    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/p;

    const-class v7, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/d;

    const-class v8, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/ox;

    const-class v9, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/p;

    const-class v10, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/dq;

    const-class v11, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/d;

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/s/mn;

    const-class v13, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/iw;

    const-class v14, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/dq;

    const-class v15, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/p;

    move-object/from16 v16, v2

    const-class v2, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/d;

    move-object/from16 v17, v3

    const-class v3, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/ox;

    move-object/from16 v18, v4

    const-class v4, Lcom/bykv/vk/openvk/preload/geckox/s/ia;

    move-object/from16 v19, v5

    const-class v5, Lcom/bykv/vk/openvk/preload/geckox/s/ox;

    move-object/from16 v20, v6

    const-class v6, Lcom/bykv/vk/openvk/preload/geckox/s/s;

    const-string v21, "all channel update finished"

    move-object/from16 v22, v7

    const-string v7, "download_gecko_end"

    move-object/from16 v23, v7

    const-class v7, Lcom/bykv/vk/openvk/preload/d/iw;

    move-object/from16 v24, v8

    const-class v8, Lcom/bykv/vk/openvk/preload/geckox/s/d;

    move-object/from16 v25, v7

    const-string v7, "full"

    move-object/from16 v26, v8

    const-string v8, "patch"

    move-object/from16 v27, v9

    iget-object v9, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->dq:Ljava/lang/String;

    move-object/from16 v28, v9

    const/4 v9, 0x2

    move-object/from16 v29, v10

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v31, "start check update..."

    aput-object v31, v10, v9

    const/16 v31, 0x0

    const/4 v9, 0x1

    aput-object v28, v10, v9

    const/16 v28, 0x1

    const-string v9, "gecko-debug-tag"

    invoke-static {v9, v10}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iget-object v10, v10, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    move-object/from16 v32, v9

    iget-object v9, v10, Lcom/bykv/vk/openvk/preload/geckox/p;->mn:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    move-object/from16 v33, v11

    if-eqz v9, :cond_0

    iget-object v11, v9, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;->d:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

    move-object/from16 v34, v12

    iget-object v12, v10, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    iget-object v10, v10, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    invoke-virtual {v11, v9, v12, v10}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->dq(Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object/from16 v34, v12

    const/4 v11, 0x0

    :goto_0
    :try_start_0
    iget-object v9, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iget-object v9, v9, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    iput-object v10, v9, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    iget-object v9, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->d:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    iget-object v10, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iget-object v12, v10, Lcom/bykv/vk/openvk/preload/geckox/ox;->p:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v35, v11

    :try_start_1
    iget-object v11, v10, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v10, v10, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/d;

    move-object/from16 v36, v12

    iget-object v12, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->ox:Ljava/util/Map;

    move-object/from16 v37, v12

    iget-object v12, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->p:Ljava/util/Map;

    move-object/from16 v38, v12

    iget-object v12, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->dq:Ljava/lang/String;

    move-object/from16 v39, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    move-object/from16 v40, v7

    iget-object v7, v11, Lcom/bykv/vk/openvk/preload/geckox/p;->iw:Ljava/util/List;

    move-object/from16 v41, v7

    move-object/from16 v42, v13

    const/4 v7, 0x2

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v36, v13, v31

    aput-object v41, v13, v28

    iput-object v13, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    invoke-virtual {v10, v6}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v6

    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v11, v6, v31

    aput-object v37, v6, v28

    const/16 v30, 0x2

    aput-object v38, v6, v30

    const/4 v7, 0x3

    aput-object v9, v6, v7

    const/4 v7, 0x4

    aput-object v39, v6, v7

    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v6, Lcom/bykv/vk/openvk/preload/d/d/d;

    new-instance v7, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;

    invoke-direct {v7, v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;-><init>(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)V

    invoke-virtual {v10, v5}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v5

    move-object/from16 v37, v5

    const/4 v13, 0x2

    new-array v5, v13, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v7, v5, v31

    aput-object v37, v5, v28

    invoke-direct {v6, v5}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v6, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    const-class v5, Lcom/bykv/vk/openvk/preload/geckox/s/iw;

    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p;->dq()Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v31

    iput-object v7, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v5, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$1;

    invoke-direct {v5, v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$1;-><init>(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)V

    iput-object v5, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ig$d;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ig$d;-><init>()V

    const-string v5, "branch_zip"

    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v5

    new-instance v6, Lcom/bykv/vk/openvk/preload/d/ig$d;

    invoke-direct {v6}, Lcom/bykv/vk/openvk/preload/d/ig$d;-><init>()V

    invoke-virtual {v6, v8}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v7

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v37, v12

    new-instance v12, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v12, v4}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v12, v3}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v12

    move-object/from16 v38, v4

    move-object/from16 v39, v8

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v11, v8, v31

    const/16 v28, 0x1

    aput-object v36, v8, v28

    iput-object v8, v12, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v4, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->d(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v8

    invoke-virtual {v10, v3}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v3

    move-object/from16 v41, v3

    move-object/from16 v43, v8

    const/4 v3, 0x2

    new-array v8, v3, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v43, v8, v31

    const/16 v28, 0x1

    aput-object v41, v8, v28

    invoke-direct {v4, v8}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v4, v12, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v3

    new-instance v4, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v8

    invoke-virtual {v10, v2}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v2

    move-object/from16 v41, v2

    const/4 v12, 0x2

    new-array v2, v12, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v8, v2, v31

    const/16 v28, 0x1

    aput-object v41, v2, v28

    invoke-direct {v4, v2}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v2, v15}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v11, v4, v31

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v3, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v4

    invoke-virtual {v10, v15}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v8

    const/4 v12, 0x2

    new-array v15, v12, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v4, v15, v31

    const/16 v28, 0x1

    aput-object v8, v15, v28

    invoke-direct {v3, v15}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v2, v14}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v4

    invoke-virtual {v10, v14}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v8

    const/4 v12, 0x2

    new-array v14, v12, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v4, v14, v31

    const/16 v28, 0x1

    aput-object v8, v14, v28

    invoke-direct {v3, v14}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v3, v42

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v2

    new-instance v4, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v8

    invoke-virtual {v10, v3}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v3

    const/4 v12, 0x2

    new-array v14, v12, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v8, v14, v31

    const/16 v28, 0x1

    aput-object v3, v14, v28

    invoke-direct {v4, v14}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    const-class v3, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/s;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v4

    const/4 v8, 0x1

    new-array v12, v8, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v4, v12, v31

    invoke-direct {v3, v12}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v13}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-object/from16 v2, v40

    invoke-virtual {v6, v2}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v8, v34

    invoke-virtual {v7, v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v12, v33

    invoke-virtual {v7, v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v7

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v11, v14, v31

    const/16 v28, 0x1

    aput-object v36, v14, v28

    iput-object v14, v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v13, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->d(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v14

    invoke-virtual {v10, v12}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v12

    move-object/from16 v33, v12

    const/4 v15, 0x2

    new-array v12, v15, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v14, v12, v31

    const/16 v28, 0x1

    aput-object v33, v12, v28

    invoke-direct {v13, v12}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v13, v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v12, v29

    invoke-virtual {v7, v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v7

    new-instance v13, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v14

    invoke-virtual {v10, v12}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v12

    move-object/from16 v29, v12

    const/4 v15, 0x2

    new-array v12, v15, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v14, v12, v31

    const/16 v28, 0x1

    aput-object v29, v12, v28

    invoke-direct {v13, v12}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v13, v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v12, v27

    invoke-virtual {v7, v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v7

    new-instance v13, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v14

    invoke-virtual {v10, v12}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v12

    move-object/from16 v27, v12

    const/4 v15, 0x2

    new-array v12, v15, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v14, v12, v31

    const/16 v28, 0x1

    aput-object v27, v12, v28

    invoke-direct {v13, v12}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v13, v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    const-class v12, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/ox;

    invoke-virtual {v7, v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v7

    new-instance v12, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v13, v15, v31

    invoke-direct {v12, v15}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v12, v7, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-object/from16 v3, v26

    invoke-virtual {v6, v3}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Lcom/bykv/vk/openvk/preload/d/ia;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v4

    new-instance v5, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v5}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v6, v25

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v5

    invoke-static {v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v7

    iput-object v7, v5, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Lcom/bykv/vk/openvk/preload/d/ia;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    const-string v4, "branch_single_file"

    invoke-virtual {v1, v4}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v4

    new-instance v5, Lcom/bykv/vk/openvk/preload/d/ig$d;

    invoke-direct {v5}, Lcom/bykv/vk/openvk/preload/d/ig$d;-><init>()V

    move-object/from16 v7, v39

    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v14}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v15, v38

    invoke-virtual {v14, v15}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v14}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v15, v24

    invoke-virtual {v14, v15}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v14

    move-object/from16 v24, v1

    move-object/from16 v39, v7

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v11, v1, v31

    const/16 v28, 0x1

    aput-object v36, v1, v28

    iput-object v1, v14, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->d(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v7

    invoke-virtual {v10, v15}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v15

    move-object/from16 v25, v7

    move-object/from16 v26, v15

    const/4 v7, 0x2

    new-array v15, v7, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v25, v15, v31

    const/16 v28, 0x1

    aput-object v26, v15, v28

    invoke-direct {v1, v15}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v1, v14, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v14}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v7, v22

    invoke-virtual {v1, v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    new-instance v14, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v15

    invoke-virtual {v10, v7}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v7

    move-object/from16 v22, v7

    move-object/from16 v25, v15

    const/4 v7, 0x2

    new-array v15, v7, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v25, v15, v31

    const/16 v28, 0x1

    aput-object v22, v15, v28

    invoke-direct {v14, v15}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v14, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v7, v20

    invoke-virtual {v1, v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v11, v15, v31

    iput-object v15, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v14, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v15

    invoke-virtual {v10, v7}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v7

    move-object/from16 v20, v7

    move-object/from16 v22, v15

    const/4 v7, 0x2

    new-array v15, v7, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v22, v15, v31

    const/16 v28, 0x1

    aput-object v20, v15, v28

    invoke-direct {v14, v15}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v14, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v7, v19

    invoke-virtual {v1, v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    new-instance v14, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v15

    invoke-virtual {v10, v7}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v7

    move-object/from16 v19, v7

    move-object/from16 v20, v15

    const/4 v7, 0x2

    new-array v15, v7, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v20, v15, v31

    const/16 v28, 0x1

    aput-object v19, v15, v28

    invoke-direct {v14, v15}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v14, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v7, v18

    invoke-virtual {v1, v7}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    new-instance v14, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v15

    invoke-virtual {v10, v7}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v7

    move-object/from16 v18, v7

    move-object/from16 v19, v15

    const/4 v7, 0x2

    new-array v15, v7, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v19, v15, v31

    const/16 v28, 0x1

    aput-object v18, v15, v28

    invoke-direct {v14, v15}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v14, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v13}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    invoke-virtual {v5, v2}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v12, v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v12, v17

    invoke-virtual {v8, v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v8

    const/4 v15, 0x2

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v11, v13, v31

    const/16 v28, 0x1

    aput-object v36, v13, v28

    iput-object v13, v8, Lcom/bykv/vk/openvk/preload/d/ia$dq;->ox:[Ljava/lang/Object;

    new-instance v13, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->d(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v14

    invoke-virtual {v10, v12}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v12

    move-object/from16 v17, v12

    const/4 v15, 0x2

    new-array v12, v15, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v14, v12, v31

    const/16 v28, 0x1

    aput-object v17, v12, v28

    invoke-direct {v13, v12}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v13, v8, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    move-object/from16 v12, v16

    invoke-virtual {v8, v12}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v8

    new-instance v13, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v14

    invoke-virtual {v10, v12}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v12

    move-object/from16 v16, v12

    const/4 v15, 0x2

    new-array v12, v15, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v14, v12, v31

    const/16 v28, 0x1

    aput-object v16, v12, v28

    invoke-direct {v13, v12}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v13, v8, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v8, v0}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v8

    new-instance v12, Lcom/bykv/vk/openvk/preload/d/d/d;

    invoke-static {v9}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/o/dq;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v13

    invoke-virtual {v10, v0}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v0

    const/4 v15, 0x2

    new-array v10, v15, [Lcom/bykv/vk/openvk/preload/d/d/dq;

    aput-object v13, v10, v31

    const/16 v28, 0x1

    aput-object v0, v10, v28

    invoke-direct {v12, v10}, Lcom/bykv/vk/openvk/preload/d/d/d;-><init>([Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iput-object v12, v8, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    invoke-virtual {v5, v3}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Lcom/bykv/vk/openvk/preload/d/ia;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v1

    invoke-static {v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v4

    iput-object v4, v1, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Lcom/bykv/vk/openvk/preload/d/ia;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    const-string v0, "branch_myarchive_file"

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v0

    new-instance v4, Lcom/bykv/vk/openvk/preload/d/ig$d;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/preload/d/ig$d;-><init>()V

    move-object/from16 v7, v39

    invoke-virtual {v4, v7}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v5

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v5, v7}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    invoke-virtual {v4, v3}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Lcom/bykv/vk/openvk/preload/d/ia;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    move-result-object v0

    new-instance v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    invoke-virtual {v2, v6}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v2

    invoke-static {v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq(Lcom/bykv/vk/openvk/preload/d/ia;)Lcom/bykv/vk/openvk/preload/d/ig$dq;

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/dq;

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/preload/d/ig$d;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v0

    move-object/from16 v1, v37

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bykv/vk/openvk/preload/d/ia$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/d/ia$dq;-><init>()V

    const-class v2, Lcom/bykv/vk/openvk/preload/geckox/s/kk;

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/ia$dq;

    move-result-object v0

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$2;

    invoke-direct {v2, v9, v11}, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$2;-><init>(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)V

    iput-object v2, v0, Lcom/bykv/vk/openvk/preload/d/ia$dq;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/d/ia$dq;->dq()Lcom/bykv/vk/openvk/preload/d/ia;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/bykv/vk/openvk/preload/d/ox;->dq(Ljava/util/List;Lcom/bykv/vk/openvk/preload/d/s;Lcom/bykv/vk/openvk/preload/d/p;)Lcom/bykv/vk/openvk/preload/d/d;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, p0

    :try_start_3
    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->dq:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    const-string v3, "update finished"

    aput-object v3, v2, v31

    const/16 v28, 0x1

    aput-object v0, v2, v28
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, v32

    :try_start_4
    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->d:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq()V

    :cond_1
    if-eqz v35, :cond_2

    invoke-virtual/range {v35 .. v35}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->dq()V

    :cond_2
    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/geckox/p;->ox:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    move-object/from16 v4, v23

    invoke-interface {v2, v4, v0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    aput-object v21, v0, v31

    invoke-static {v3, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v4, v23

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v4, v23

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 v4, v23

    move-object/from16 v3, v32

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :goto_2
    move-object/from16 v4, v23

    move-object/from16 v3, v32

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v35, v11

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v35, v11

    goto :goto_2

    :goto_3
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "success"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "msg"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "code"

    const/4 v15, 0x2

    invoke-virtual {v2, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iget-object v5, v5, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iput-object v2, v5, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :try_start_6
    const-string v2, "Gecko update failed:"

    invoke-static {v3, v2, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->d:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq()V

    :cond_3
    if-eqz v35, :cond_4

    invoke-virtual/range {v35 .. v35}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->dq()V

    :cond_4
    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/geckox/p;->ox:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-interface {v2, v4, v0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    const/16 v31, 0x0

    aput-object v21, v0, v31

    invoke-static {v3, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/kk/dq/dq;

    invoke-direct {v3, v2}, Lcom/bykv/vk/openvk/preload/geckox/kk/dq/dq;-><init>(Ljava/util/List;)V

    :try_start_7
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq()Lcom/bykv/vk/openvk/preload/geckox/p/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/geckox/p;->d:Lcom/bykv/vk/openvk/preload/geckox/kk/dq;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/bykv/vk/openvk/preload/geckox/kk/dq;->dq()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/geckox/ox;->d:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_6

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/ox;->d:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    :cond_6
    return-void

    :catchall_6
    move-exception v0

    :goto_5
    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->d:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq()V

    :cond_7
    if-eqz v35, :cond_8

    invoke-virtual/range {v35 .. v35}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->dq()V

    :cond_8
    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/geckox/ox$1;->s:Lcom/bykv/vk/openvk/preload/geckox/ox;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v5, v2, Lcom/bykv/vk/openvk/preload/geckox/p;->ox:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-interface {v5, v4, v2}, Lcom/bykv/vk/openvk/preload/geckox/q/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Object;

    const/16 v31, 0x0

    aput-object v21, v2, v31

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
