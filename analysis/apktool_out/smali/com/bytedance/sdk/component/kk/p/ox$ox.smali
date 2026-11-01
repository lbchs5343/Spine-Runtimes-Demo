.class Lcom/bytedance/sdk/component/kk/p/ox$ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/kk/p/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ox"
.end annotation


# static fields
.field private static final dq:Lcom/bytedance/sdk/component/kk/p/ox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/kk/p/ox;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/kk/p/ox;-><init>(Lcom/bytedance/sdk/component/kk/p/ox$1;)V

    sput-object v0, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq:Lcom/bytedance/sdk/component/kk/p/ox;

    return-void
.end method

.method public static synthetic dq()Lcom/bytedance/sdk/component/kk/p/ox;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq:Lcom/bytedance/sdk/component/kk/p/ox;

    return-object v0
.end method
