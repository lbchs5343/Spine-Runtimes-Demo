.class public Lcom/bytedance/sdk/gromore/dq/dq/p/cd;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/mp;


# instance fields
.field private d:I

.field private dq:Ljava/lang/String;

.field private ox:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->dq:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->dq:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->d:I

    iput p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->ox:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->d:I

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->ox:I

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;->dq:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public p()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
