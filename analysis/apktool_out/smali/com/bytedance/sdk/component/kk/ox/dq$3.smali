.class Lcom/bytedance/sdk/component/kk/ox/dq$3;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/kk/ox/dq;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/kk/ox/dq;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/kk/ox/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    iput p2, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->dq:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    iget p2, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->dq:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq(Lcom/bytedance/sdk/component/kk/ox/dq;I)V

    return-void

    :cond_1
    :try_start_1
    const-string p2, "message"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    const-string p2, "success"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    iget p2, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->dq:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq(Lcom/bytedance/sdk/component/kk/ox/dq;I)V

    return-void

    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq(Lcom/bytedance/sdk/component/kk/ox/dq;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    const/16 p2, 0x65

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->d(Lcom/bytedance/sdk/component/kk/ox/dq;I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    iget p2, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->dq:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq(Lcom/bytedance/sdk/component/kk/ox/dq;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_2
    return-void

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    iget p2, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->dq:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq(Lcom/bytedance/sdk/component/kk/ox/dq;I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->d:Lcom/bytedance/sdk/component/kk/ox/dq;

    iget p2, p0, Lcom/bytedance/sdk/component/kk/ox/dq$3;->dq:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq(Lcom/bytedance/sdk/component/kk/ox/dq;I)V

    return-void
.end method
