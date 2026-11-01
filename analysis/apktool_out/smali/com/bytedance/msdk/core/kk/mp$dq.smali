.class Lcom/bytedance/msdk/core/kk/mp$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/kk/mp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static dq:Lcom/bytedance/msdk/core/kk/mp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/core/kk/mp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;-><init>(Lcom/bytedance/msdk/core/kk/mp$1;)V

    sput-object v0, Lcom/bytedance/msdk/core/kk/mp$dq;->dq:Lcom/bytedance/msdk/core/kk/mp;

    return-void
.end method

.method public static synthetic dq()Lcom/bytedance/msdk/core/kk/mp;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/core/kk/mp$dq;->dq:Lcom/bytedance/msdk/core/kk/mp;

    return-object v0
.end method
