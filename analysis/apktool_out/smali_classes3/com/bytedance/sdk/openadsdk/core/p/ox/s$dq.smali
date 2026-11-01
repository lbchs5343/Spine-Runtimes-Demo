.class public Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p/ox/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;,
        Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;,
        Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;
    }
.end annotation


# instance fields
.field private final d:I

.field private final dq:Ljava/lang/String;

.field private final iw:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

.field private final ox:Z

.field private final p:I

.field private final s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->d(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->d:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->ox:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->p(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->s(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->iw(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->p:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->ox:Z

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->p:I

    return v0
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    return-object v0
.end method
