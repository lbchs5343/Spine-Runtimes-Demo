.class public Lcom/bytedance/sdk/openadsdk/core/cd/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/q/ox;


# instance fields
.field dq:Lcom/bytedance/sdk/openadsdk/core/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cd/s;->dq:Lcom/bytedance/sdk/openadsdk/core/c;

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cd/s;->dq:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
