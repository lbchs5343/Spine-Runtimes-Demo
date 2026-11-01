.class public Lcom/bytedance/sdk/component/iw/d/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/s;


# instance fields
.field private d:Z

.field private dq:Ljava/lang/String;

.field private ox:Z

.field private p:Lcom/bytedance/sdk/component/iw/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/iw/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/d/ox;->dq:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/iw/d/ox;->d:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/iw/d/ox;->ox:Z

    iput-object p4, p0, Lcom/bytedance/sdk/component/iw/d/ox;->p:Lcom/bytedance/sdk/component/iw/q;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/d/ox;->d:Z

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/d/ox;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/d/ox;->ox:Z

    return v0
.end method

.method public p()Lcom/bytedance/sdk/component/iw/q;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/d/ox;->p:Lcom/bytedance/sdk/component/iw/q;

    return-object v0
.end method
