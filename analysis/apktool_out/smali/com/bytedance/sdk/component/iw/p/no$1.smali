.class Lcom/bytedance/sdk/component/iw/p/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/iw/p/no;->dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/iw/ox/iw;

.field final synthetic dq:Lcom/bytedance/sdk/component/iw/d;

.field final synthetic iw:Lcom/bytedance/sdk/component/iw/p/no;

.field final synthetic ox:Lcom/bytedance/sdk/component/iw/ox/ox;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:[B


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/p/no;Lcom/bytedance/sdk/component/iw/d;Lcom/bytedance/sdk/component/iw/ox/iw;Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->iw:Lcom/bytedance/sdk/component/iw/p/no;

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->dq:Lcom/bytedance/sdk/component/iw/d;

    iput-object p3, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->d:Lcom/bytedance/sdk/component/iw/ox/iw;

    iput-object p4, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->ox:Lcom/bytedance/sdk/component/iw/ox/ox;

    iput-object p5, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->s:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->dq:Lcom/bytedance/sdk/component/iw/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->d:Lcom/bytedance/sdk/component/iw/ox/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->ox:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/iw;->ox(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/p/no$1;->s:[B

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
