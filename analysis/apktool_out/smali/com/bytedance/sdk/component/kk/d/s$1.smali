.class Lcom/bytedance/sdk/component/kk/d/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/kk/d/s;

.field final synthetic dq:Lcom/bytedance/sdk/component/kk/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/kk/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    iput-object p2, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/bytedance/sdk/component/d/dq/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "content-type"

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz v0, :cond_8

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    new-instance p2, Ljava/io/IOException;

    const-string v1, "No response"

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    const-string v3, ""

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lcom/bytedance/sdk/component/kk/p/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/fw;->p()[B

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v10

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/kk/d;->dq([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/kk/d/p;->mn:Z

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/fw;->p()[B

    move-result-object p1

    new-instance v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/d/dq/fw;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/d/dq/o;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/kk/d;->dq([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_5
    :try_start_4
    new-instance v2, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/fw;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    invoke-static {p1, v2, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/d/s;Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v1

    move-object v1, p2

    :goto_4
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    invoke-virtual {p1, p2, v2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/component/kk/d/s$1;->d:Lcom/bytedance/sdk/component/kk/d/s;

    if-nez v1, :cond_7

    new-instance v1, Ljava/io/IOException;

    const-string v0, "Unexpected exception"

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    :cond_8
    return-void
.end method
