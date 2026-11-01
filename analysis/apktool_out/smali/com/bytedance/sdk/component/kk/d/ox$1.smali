.class Lcom/bytedance/sdk/component/kk/d/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/kk/d/ox;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/kk/d/ox;

.field final synthetic dq:Lcom/bytedance/sdk/component/kk/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/kk/d/ox;Lcom/bytedance/sdk/component/kk/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/ox$1;->d:Lcom/bytedance/sdk/component/kk/d/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/component/kk/d/ox$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/ox$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/ox$1;->d:Lcom/bytedance/sdk/component/kk/d/ox;

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

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/ox$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz p1, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :goto_1
    move-object v5, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/fw;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
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

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/ox$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/component/kk/d/ox$1;->d:Lcom/bytedance/sdk/component/kk/d/ox;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V

    :cond_2
    return-void
.end method
