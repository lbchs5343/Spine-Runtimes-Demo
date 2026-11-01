.class public Lcom/ss/android/socialbase/downloader/ia/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final dq:Ljava/lang/String; = "d"


# instance fields
.field private d:Lcom/ss/android/socialbase/downloader/model/d;

.field private ia:Lcom/ss/android/socialbase/downloader/network/kk;

.field private ig:Z

.field private iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private kk:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private final mn:Lcom/ss/android/socialbase/downloader/ia/iw;

.field private volatile no:Z

.field private volatile o:Z

.field private ox:Lcom/ss/android/socialbase/downloader/model/d;

.field private p:Lcom/ss/android/socialbase/downloader/downloader/s;

.field private final s:Lcom/ss/android/socialbase/downloader/model/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/ia/iw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->ig:Z

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->ox:Lcom/ss/android/socialbase/downloader/model/d;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/d;->s:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    :cond_0
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->e()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->kk:Lcom/ss/android/socialbase/downloader/downloader/o;

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->ox:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Lcom/ss/android/socialbase/downloader/ia/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/ia/iw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/socialbase/downloader/ia/d;-><init>(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/ia/iw;)V

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/d;J)V
    .locals 9

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->s()Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->kk:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v2

    invoke-interface {p1, v1, v2, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIJ)V

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/model/d;->d(J)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/ia/d;->kk:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v6

    move-wide v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIIJ)V

    return-void

    :cond_2
    move-wide v7, p2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/d;->kk:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->no()I

    move-result p3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result p1

    invoke-interface {p2, p3, p1, v7, v8}, Lcom/ss/android/socialbase/downloader/downloader/o;->dq(IIJ)V

    :cond_3
    return-void
.end method

.method private dq(Lcom/ss/android/socialbase/downloader/model/d;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    :goto_0
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->s()Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v2

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v9, 0x1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/d;->kk()Z

    move-result v0

    if-eqz v0, :cond_1

    return v9

    :cond_1
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v10

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v4

    :cond_2
    move-wide v14, v2

    move-wide/from16 v16, v4

    const-wide/16 v18, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->s()Z

    move-result v0
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_3

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v2

    :cond_3
    :try_start_1
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->ox()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ig:Z

    invoke-virtual {v6, v0}, Lcom/ss/android/socialbase/downloader/model/d;->d(Z)V
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x12c

    const/16 v5, 0xc8

    :try_start_2
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ig:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v12

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v12 .. v17}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    new-instance v7, Lcom/ss/android/socialbase/downloader/model/ox;

    const-string v12, "Chunk-Index"

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, v7}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, v7}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v7

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMaxBytes()I

    move-result v12

    invoke-static {v7, v12, v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/kk;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_5
    :goto_4
    :try_start_3
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_8

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;
    :try_end_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_8

    :try_start_4
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result v0

    if-lt v0, v5, :cond_6

    if-lt v0, v3, :cond_8

    :cond_6
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_14

    :goto_6
    :try_start_6
    const-string v7, "ChunkRunnableConnection"

    invoke-static {v0, v7}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_8

    :try_start_8
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;
    :try_end_8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v7, :cond_8

    :try_start_9
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result v0

    if-lt v0, v5, :cond_7

    if-lt v0, v3, :cond_8

    :cond_7
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_7
    :try_start_a
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->s()Z

    move-result v0
    :try_end_a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_9

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v2

    :cond_9
    :try_start_b
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_e

    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ig:Z
    :try_end_b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v3, :cond_a

    :try_start_c
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    :goto_8
    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    new-instance v3, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Http response error , code is : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3ea

    invoke-direct {v3, v5, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :goto_9
    :try_start_d
    const-string v3, "ChunkRunnableGetResponseCode"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_8

    :goto_a
    throw v0
    :try_end_d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_b
    :try_start_e
    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/s;

    const/4 v5, 0x0

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v7, 0x0

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;
    :try_end_e
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v12, 0x0

    :try_start_f
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/s;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/kk;Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/ia/iw;)V

    iput-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v8, :cond_d

    invoke-virtual {v8, v12}, Lcom/ss/android/socialbase/downloader/model/d;->ox(Z)J

    move-result-wide v2

    cmp-long v0, v16, v18

    if-eqz v0, :cond_c

    cmp-long v0, v16, v14

    if-ltz v0, :cond_c

    sub-long v16, v16, v14

    const-wide/16 v2, 0x1

    add-long v2, v16, v2

    :cond_c
    move-wide/from16 v25, v2

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v21

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v23

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v26}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(JJJ)V
    :try_end_f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    :goto_c
    const/4 v2, 0x0

    goto :goto_14

    :cond_d
    :goto_d
    :try_start_10
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->p()V
    :try_end_10
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v9

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    goto :goto_14

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    goto :goto_c

    :cond_e
    const/4 v12, 0x0

    :try_start_11
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "download can\'t continue, chunk connection is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3fe

    invoke-direct {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_11
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_6
    move-exception v0

    const/4 v12, 0x0

    :goto_e
    move-object v2, v0

    goto :goto_10

    :goto_f
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_e

    :goto_10
    :try_start_13
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_10

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;
    :try_end_13
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v4, :cond_10

    :try_start_14
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/mn;->d()I

    move-result v0

    if-lt v0, v5, :cond_f

    if-lt v0, v3, :cond_10

    :cond_f
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/network/mn;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_11
    throw v2
    :try_end_15
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :goto_12
    :try_start_16
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->s()Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    if-eqz v2, :cond_11

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v9

    :cond_11
    :try_start_17
    const-string v2, "downloadChunkInner"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_17
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    goto/16 :goto_18

    :catch_6
    move-exception v0

    :try_start_18
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :goto_13
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v12

    :goto_14
    :try_start_19
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->s()Z

    move-result v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v3, :cond_12

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v9

    :cond_12
    :try_start_1a
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v2, v0, v12}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v12

    :cond_13
    :try_start_1b
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v3, v0}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v2, v0, v9}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v12

    :cond_14
    if-eqz v2, :cond_16

    :try_start_1c
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v2, :cond_18

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq()J

    move-result-wide v2

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/downloader/s;->s()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v18

    if-lez v4, :cond_15

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/downloader/s;->s()J

    move-result-wide v4

    invoke-direct {v1, v6, v4, v5}, Lcom/ss/android/socialbase/downloader/ia/d;->dq(Lcom/ss/android/socialbase/downloader/model/d;J)V

    goto :goto_16

    :cond_15
    if-gez v4, :cond_19

    :cond_16
    :goto_15
    move-wide/from16 v2, v18

    goto :goto_16

    :cond_17
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq()J

    move-result-wide v2

    sub-long v18, v2, v10

    invoke-direct {v1, v6, v10, v11}, Lcom/ss/android/socialbase/downloader/ia/d;->dq(Lcom/ss/android/socialbase/downloader/model/d;J)V

    goto :goto_15

    :cond_18
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v12

    :cond_19
    :goto_16
    const/16 v4, 0x10

    :try_start_1d
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/kk/dq;->dq(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v4, v6, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/model/d;Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;

    move-result-object v0

    goto :goto_17

    :cond_1a
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v4, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;

    move-result-object v0

    :goto_17
    sget-object v2, Lcom/ss/android/socialbase/downloader/exception/ia;->dq:Lcom/ss/android/socialbase/downloader/exception/ia;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-ne v0, v2, :cond_1b

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v12

    :cond_1b
    :try_start_1e
    invoke-virtual {v6, v12}, Lcom/ss/android/socialbase/downloader/model/d;->d(Z)V

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    goto/16 :goto_0

    :cond_1c
    :try_start_1f
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedChunkDowngradeRetry()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v2

    if-le v2, v9, :cond_1d

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/ia/iw;->ox(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v12

    :cond_1d
    :try_start_20
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/ia/iw;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    return v12

    :goto_18
    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    throw v0
.end method

.method private ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->iw:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getConnectionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/kk;->p()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->ia:Lcom/ss/android/socialbase/downloader/network/kk;

    :cond_0
    return-void
.end method

.method private s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->no:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->no:Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->ox()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->o:Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->d()V

    :cond_0
    return-void
.end method

.method public dq(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->p:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/s;->dq(JJ)V

    return-void
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->ox:Lcom/ss/android/socialbase/downloader/model/d;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Lcom/ss/android/socialbase/downloader/ia/d;)V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/ia/d;->dq(Lcom/ss/android/socialbase/downloader/model/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Z)V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/d;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(I)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/d;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x32

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/ia/d;)V

    return-void

    :goto_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/ia/d;->d:Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/ia/d;->p()V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/d;->mn:Lcom/ss/android/socialbase/downloader/ia/iw;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/ia/iw;->dq(Lcom/ss/android/socialbase/downloader/ia/d;)V

    throw v1
.end method
