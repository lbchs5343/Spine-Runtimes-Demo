.class public Lcom/bytedance/sdk/component/iw/ox/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:I

.field private ox:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq;->dq:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/dq;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/component/iw/ox/dq;->ox:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq;->dq:I

    return v0
.end method

.method public ox()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq;->ox:Ljava/lang/Throwable;

    return-object v0
.end method
