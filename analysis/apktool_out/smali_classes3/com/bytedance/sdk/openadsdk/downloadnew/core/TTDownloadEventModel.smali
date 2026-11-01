.class public Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private ox:Lorg/json/JSONObject;

.field private p:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getExtJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->ox:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialMeta()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->p:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public setExtJson(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->ox:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setMaterialMeta(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->p:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/TTDownloadEventModel;->dq:Ljava/lang/String;

    return-object p0
.end method
