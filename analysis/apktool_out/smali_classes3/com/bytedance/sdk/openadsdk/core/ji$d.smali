.class public Lcom/bytedance/sdk/openadsdk/core/ji$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:Z

.field public final dq:I


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$d;->dq:I

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$d;->d:Z

    return-void
.end method

.method public static dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ji$d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$d;

    invoke-direct {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ji$d;-><init>(IZ)V

    return-object v1
.end method
