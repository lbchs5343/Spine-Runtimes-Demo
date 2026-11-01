.class public Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field dq:Ljava/net/Socket;

.field iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mp;

.field mn:Z

.field ox:Lcom/bytedance/sdk/component/ox/dq/s;

.field p:Lcom/bytedance/sdk/component/ox/dq/p;

.field s:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mp;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/mp;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mp;

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->mn:Z

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;)Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

    return-object p0
.end method

.method public dq(Ljava/net/Socket;Ljava/lang/String;Lcom/bytedance/sdk/component/ox/dq/s;Lcom/bytedance/sdk/component/ox/dq/p;)Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->dq:Ljava/net/Socket;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/dq/s/mn;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;)V

    return-object v0
.end method
