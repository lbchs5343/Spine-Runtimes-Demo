.class public Lcom/bytedance/sdk/openadsdk/core/r/d;
.super Ljava/lang/Object;


# instance fields
.field public d:I

.field public dq:Ljava/lang/String;

.field private ia:J

.field private ig:Lorg/json/JSONObject;

.field public iw:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private kk:J

.field private mn:I

.field private no:J

.field private o:J

.field public ox:I

.field public p:Ljava/lang/String;

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->ox:I

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->mn()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->d()I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x8

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/r/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    const-string p0, "rd_client_custom_error"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->mn:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->kk:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->p:Ljava/lang/String;

    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->d:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->ia:J

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->iw:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->ig:Lorg/json/JSONObject;

    return-void
.end method

.method public ia()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ig()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->no:J

    return-wide v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->ox:I

    return v0
.end method

.method public kk()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->ia:J

    return-wide v0
.end method

.method public mn()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->iw:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-object v0
.end method

.method public no()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->o:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->kk:J

    return-wide v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->mn:I

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->ox:I

    return-void
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->o:J

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->no:J

    return-void
.end method

.method public s()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/d;->ig:Lorg/json/JSONObject;

    return-object v0
.end method
