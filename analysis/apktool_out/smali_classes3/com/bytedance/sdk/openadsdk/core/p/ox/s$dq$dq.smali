.class public Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field private dq:Ljava/lang/String;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

.field private ox:Z

.field private p:I

.field private s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Default"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->ox:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->p:I

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->d:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->p:I

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->ox:Z

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object p0
.end method


# virtual methods
.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->p:I

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->ox:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$1;)V

    return-object v0
.end method
