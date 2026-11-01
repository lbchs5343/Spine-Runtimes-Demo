.class Lcom/bytedance/sdk/openadsdk/jy/dq$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg/aqi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/jy/dq$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/jy/dq$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/jy/dq$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/jy/dq$3$1;->dq:Lcom/bytedance/sdk/openadsdk/jy/dq$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const-string v1, "apm"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;III)V

    return-void
.end method
