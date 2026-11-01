.class Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/ox/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;->dq(ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Z

.field final synthetic iw:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:I

.field final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->iw:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;

    iput-boolean p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->dq:Z

    iput p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->d:I

    iput-object p4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->ox:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->p:I

    iput-object p6, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->d:I

    if-ltz v0, :cond_0

    int-to-float v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->iw:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->iw:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->n()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->dq:Z

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->ox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->ox:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->iw:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->iw:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->bl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq$1$2$1;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
