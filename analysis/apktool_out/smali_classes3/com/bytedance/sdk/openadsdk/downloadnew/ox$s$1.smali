.class Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s;Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s$1;->d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s$1;->dq:Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s$1;->dq:Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->ox:I

    return v0
.end method

.method public dq()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s$1;->dq:Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->dq:Ljava/io/InputStream;

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s$1;->dq:Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$s$1;->dq:Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
