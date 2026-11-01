.class public Lcom/bytedance/sdk/openadsdk/core/bl/dq;
.super Ljava/lang/Object;


# instance fields
.field public cd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public dq:Ljava/lang/String;

.field public e:I

.field public f:I

.field public fw:Z

.field public gh:I

.field public i:I

.field public ia:I

.field public ig:I

.field public iw:I

.field public jy:I

.field public k:Z

.field public kk:I

.field public kx:I

.field public le:Z

.field public mn:I

.field public mp:I

.field public no:I

.field public o:I

.field public ox:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public wp:J


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->d:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->ox:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->p:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->s:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->iw:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->mn:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->ia:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->kk:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->o:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->no:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->ig:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->mp:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->q:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->jy:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->f:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->fw:Z

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->gh:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->r:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->i:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->le:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->wp:J

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/dq;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cd(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->r:I

    return-object p0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->kx:I

    return v0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->e:I

    return-object p0
.end method

.method public d(Z)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->k:Z

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->kx:I

    return-object p0
.end method

.method public dq(J)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->wp:J

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->le:Z

    return-object p0
.end method

.method public f(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->ig:I

    return-object p0
.end method

.method public fw(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->gh:I

    return-object p0
.end method

.method public gh(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->i:I

    return-object p0
.end method

.method public ia(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->kk:I

    return-object p0
.end method

.method public ig(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->p:I

    return-object p0
.end method

.method public iw(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->jy:I

    return-object p0
.end method

.method public jy(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->mn:I

    return-object p0
.end method

.method public kk(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->o:I

    return-object p0
.end method

.method public mn(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->no:I

    return-object p0
.end method

.method public mp(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->s:I

    return-object p0
.end method

.method public no(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->ox:I

    return-object p0
.end method

.method public o(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->d:I

    return-object p0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->e:I

    return v0
.end method

.method public ox(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->f:I

    return-object p0
.end method

.method public ox(Z)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->fw:Z

    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->mp:I

    return-object p0
.end method

.method public q(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->iw:I

    return-object p0
.end method

.method public s(I)Lcom/bytedance/sdk/openadsdk/core/bl/dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/dq;->q:I

    return-object p0
.end method
