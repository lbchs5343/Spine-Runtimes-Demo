.class Lcom/bytedance/msdk/api/p/dq/d/d/d$1;
.super Lcom/bytedance/msdk/api/p/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;Lcom/bytedance/msdk/core/no/o;ILcom/bytedance/msdk/dq/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ia:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic kk:Lcom/bytedance/msdk/api/p/dq/d/d/d;

.field final synthetic mn:Lcom/bytedance/msdk/core/no/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/d/d/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->kk:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    iput-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->mn:Lcom/bytedance/msdk/core/no/no;

    iput-object p3, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->ia:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->kk:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->mn:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->mn:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result v3

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->mn:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v4

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->mn:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->er()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->mn:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/msdk/iw/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d;->iw:Ljava/lang/String;

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->kk:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    iget-object v1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->ia:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p2, p1, v1, v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->d(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V

    return-void
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d$1;->mn:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/dq/d/d;->fw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
