.class final Lcom/bytedance/msdk/s/kk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/s/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "TMe"

    const-string v1, "--==--- upload event routine"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "csj_mediation"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->iw(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/s/kk;->dq()V

    return-void
.end method
