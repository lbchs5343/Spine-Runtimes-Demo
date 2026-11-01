.class Lcom/bytedance/msdk/core/kk/o$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/kk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static dq:Lcom/bytedance/msdk/core/kk/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/core/kk/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/core/kk/o;-><init>(Lcom/bytedance/msdk/core/kk/o$1;)V

    sput-object v0, Lcom/bytedance/msdk/core/kk/o$dq;->dq:Lcom/bytedance/msdk/core/kk/o;

    return-void
.end method

.method public static synthetic dq()Lcom/bytedance/msdk/core/kk/o;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/core/kk/o$dq;->dq:Lcom/bytedance/msdk/core/kk/o;

    return-object v0
.end method
