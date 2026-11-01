.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;
.super Ljava/lang/Object;


# instance fields
.field private cd:J

.field d:Z

.field dq:Z

.field private f:Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;

.field private fw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field private ia:Z

.field private ig:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private iw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private jy:I

.field private kk:Ljava/lang/Object;

.field private mn:Ljava/lang/String;

.field private mp:Landroid/content/Context;

.field private no:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

.field private o:I

.field protected ox:Z

.field protected p:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private q:Z

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia:Z

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->o:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->jy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d:Z

    return-void
.end method


# virtual methods
.method public cd()Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ig:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->s:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq:Z

    return-void
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->jy:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->cd:J

    return-void
.end method

.method public dq(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mp:Landroid/content/Context;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->fw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ig:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->f:Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;

    return-void
.end method

.method public dq(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk:Ljava/lang/Object;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mn:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->iw:Ljava/util/Map;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->q:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ox:Z

    return v0
.end method

.method public fw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ox:Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mp:Landroid/content/Context;

    return-object v0
.end method

.method public ia()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->fw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object v0
.end method

.method public ig()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia:Z

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d:Z

    return v0
.end method

.method public jy()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->cd:J

    return-wide v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->s:I

    return v0
.end method

.method public mn()Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->f:Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;

    return-object v0
.end method

.method public mp()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk:Ljava/lang/Object;

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->iw:Ljava/util/Map;

    return-object v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->o:I

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d:Z

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->q:Z

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->jy:I

    return v0
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia:Z

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->o:I

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq:Z

    return v0
.end method
