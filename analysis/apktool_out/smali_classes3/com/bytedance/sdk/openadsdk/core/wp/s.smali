.class public Lcom/bytedance/sdk/openadsdk/core/wp/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;
.implements Lcom/bytedance/sdk/openadsdk/core/wp/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATS;
    single = true
    value = {
        "pitaya"
    }
.end annotation


# instance fields
.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ox:Lcom/bykv/vk/openvk/api/proto/EventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/wp/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->iw()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/wp/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private dq(JLcom/bytedance/sdk/openadsdk/core/wp/p;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(JLcom/bytedance/sdk/openadsdk/core/wp/p;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/wp/s;JLcom/bytedance/sdk/openadsdk/core/wp/p;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->dq(JLcom/bytedance/sdk/openadsdk/core/wp/p;)V

    return-void
.end method

.method private ia()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->ox:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/wp/s$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/wp/s;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->ox:Lcom/bykv/vk/openvk/api/proto/EventListener;

    :cond_0
    return-void
.end method

.method private iw()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->p()Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;)V

    :cond_0
    return-void
.end method

.method private mn()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    const/16 v0, 0x2713

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->p()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->le()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->mn()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lg/hat;->o(II)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const/16 v2, 0x3f0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->le()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->mn()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/16 v2, 0x24

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lg/hat;->o(II)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const/16 v2, 0x3f0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 10
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x2713

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    if-eqz p2, :cond_2

    invoke-interface {p2, v3, v4}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->p()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {p2, v6, v4}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "aid"

    const-string v9, "1371"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "channel"

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/op;->iw:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "core_api_version"

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "core_plugin_version"

    const-string v9, "6.6.0.7"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "debug"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "update"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "download_concurrency"

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "py_concurrency"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "provide_applog"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "sdk_session_id"

    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->ia()V

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v6

    iget-object v8, v6, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v9, 0x15

    invoke-virtual {v8, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x16

    invoke-virtual {v8, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->ox:Lcom/bykv/vk/openvk/api/proto/EventListener;

    const/16 v5, 0x26

    invoke-virtual {v8, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/wp/s;Lcom/bykv/vk/openvk/api/proto/EventListener;J)V

    invoke-virtual {v8, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {v8, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v6}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-interface {v2, v0, p1, v4}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pit#initPit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pitaya_ext_plugin"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-interface {p2, v3, v4}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_2
    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 3
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x6
    .end annotation

    const/16 v0, 0x2713

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p2, 0x19

    invoke-virtual {v1, p2, p1}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const/16 p2, 0x3ec

    const/4 v1, 0x0

    invoke-interface {v0, p2, p1, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 0
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x5
    .end annotation

    return-void
.end method

.method public dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 5
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x4
    .end annotation

    const/16 v0, 0x2713

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/wp/s$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/wp/s;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-interface {p3, p1, p2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "run_package_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v4, 0x19

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p1, 0x1a

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p1, 0x25

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const/16 p2, 0x3eb

    const/4 p3, 0x0

    invoke-interface {v0, p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public ox()Z
    .locals 3
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v2, 0x138b

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kx()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cd/d;->d(J)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x3
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "oppo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "realme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method
