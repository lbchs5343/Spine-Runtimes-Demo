.class public Lcom/bytedance/sdk/gromore/dq/dq/dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/dq;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/dq;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq;->dq:I

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq;->dq:I

    return v0
.end method
