.class Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ig/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ox"
.end annotation


# instance fields
.field public d:I

.field public dq:I

.field public ox:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->dq:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->d:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->ox:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->p:I

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;-><init>()V

    return-object v0
.end method
