.class public final Lcom/bytedance/sdk/component/ox/d/dq/s/jy;
.super Ljava/io/IOException;


# instance fields
.field public final dq:Lcom/bytedance/sdk/component/ox/d/dq/s/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 2

    const-string v0, "stream was reset: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    return-void
.end method
