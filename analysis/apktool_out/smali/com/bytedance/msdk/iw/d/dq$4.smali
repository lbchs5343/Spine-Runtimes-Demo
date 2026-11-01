.class Lcom/bytedance/msdk/iw/d/dq$4;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/d/dq;->no()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/iw/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/iw/d/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/dq$4;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "com.byted.mixed"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/no;->s(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$4;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->dq(Lcom/bytedance/msdk/iw/d/dq;)V

    return-void
.end method
