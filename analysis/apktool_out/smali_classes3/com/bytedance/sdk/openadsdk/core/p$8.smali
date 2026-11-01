.class Lcom/bytedance/sdk/openadsdk/core/p$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->d(Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:J

.field final synthetic ia:J

.field final synthetic iw:I

.field final synthetic kk:J

.field final synthetic mn:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field final synthetic no:Lcom/bytedance/sdk/openadsdk/core/p;

.field final synthetic o:Lcom/bytedance/sdk/openadsdk/core/kx;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

.field final synthetic p:Landroid/content/Context;

.field final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;JZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Landroid/content/Context;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;JJLcom/bytedance/sdk/openadsdk/core/kx;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->no:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->dq:J

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->d:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->p:Landroid/content/Context;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->s:Ljava/lang/String;

    iput p8, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->iw:I

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->mn:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ia:J

    iput-wide p12, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->kk:J

    iput-object p14, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->o:Lcom/bytedance/sdk/openadsdk/core/kx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getSDKVersion"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->ig()Z

    move-result v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "duration"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->dq:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "is_async"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->d:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result v3

    const-string v4, "is_multi_process"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)Z

    move-result v3

    const-string v4, "is_debug"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "is_activate_init"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_plugin"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->dq()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "has_kotlin"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->dq()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->jy()Z

    move-result v1

    const-string v3, "use_mediation"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_androidx"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->d()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "host_abi"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e/d/d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Landroid/content/Context;)J

    move-result-wide v3

    const-string v1, "minSdkVersion"

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn(Landroid/content/Context;)J

    move-result-wide v3

    const-string v1, "targetSdkVersion"

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ttvideo_plugin_config"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ttvideo_can_use"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->p()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_keva_init_success"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->d()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "thread_name"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->s:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "thread_priority"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->iw:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_boost"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->ox()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->mn:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "main_cost"

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->dq:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "callback_cost"

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ia:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "total_cost"

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->kk:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v4, "plugin"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->o:Lcom/bytedance/sdk/openadsdk/core/kx;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq(Lorg/json/JSONObject;J)V

    const-string v4, "init"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cost"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->jy()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "com.baidu.mobads.sdk.api.AdSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, "baidu_version"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :try_start_1
    const-string v3, "com.qq.e.comm.managers.status.SDKStatus"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getIntegrationSDKVersion"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, "gdt_version"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :try_start_2
    const-string v3, "com.kwad.sdk.api.KsAdSDK"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "ks_version"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    const-string v1, "pangle_sdk_init"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$8;->ia:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    return-object v0
.end method
