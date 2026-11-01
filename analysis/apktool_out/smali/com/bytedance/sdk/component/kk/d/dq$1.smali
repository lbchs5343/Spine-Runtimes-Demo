.class Lcom/bytedance/sdk/component/kk/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/kk/d/dq;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/kk/d/dq;

.field final synthetic dq:Lcom/bytedance/sdk/component/kk/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/kk/d/dq;Lcom/bytedance/sdk/component/kk/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->d:Lcom/bytedance/sdk/component/kk/d/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->d:Lcom/bytedance/sdk/component/kk/d/dq;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/bytedance/sdk/component/d/dq/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz p1, :cond_4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_4

    new-instance v0, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/fw;->dq()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/dq/fw;->ox()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/kk/d;->dq([B)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v2

    const-string v3, "Byte opt fail"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v8

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->d:Lcom/bytedance/sdk/component/kk/d/dq;

    invoke-virtual {p2, v1, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void

    :goto_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->d:Lcom/bytedance/sdk/component/kk/d/dq;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    return-void

    :catchall_3
    move-exception v0

    move-object p2, v0

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_2
    throw p2

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/component/kk/d/dq$1;->d:Lcom/bytedance/sdk/component/kk/d/dq;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V

    :cond_4
    :goto_3
    return-void
.end method
