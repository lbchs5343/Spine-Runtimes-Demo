.class public final Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;


# instance fields
.field private d:Z

.field private iw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ox:Ljava/lang/Object;

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->d:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_0
    const-string v1, "com.tencent.mm.opensdk.constants.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_VERSION_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    const-string v2, "android 5.3.1"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->d:Z

    return-void
.end method

.method private dq(Ljava/lang/String;)V
    .locals 11

    const-class v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "wc_init_fail"

    if-eqz v1, :cond_2

    const-string p1, "error_appid"

    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->p()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "error_permission"

    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->d:Z

    const-string v3, "error_sdk"

    if-nez v1, :cond_4

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_0
    const-string v1, "com.tencent.mm.opensdk.openapi.WXAPIFactory"

    const-string v4, "createWXAPI"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static {v1, v4, v6}, Lcom/bytedance/sdk/component/utils/wp;->dq(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/no;->nh()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    const/4 v8, 0x3

    invoke-interface {v4, v8, v6, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v6

    :goto_0
    if-nez v0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    const-string v4, "com.bytedance.sdk.openadsdk.TTAppContextHolder"

    const-string v8, "getContext"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-static {v4, v8, v10}, Lcom/bytedance/sdk/component/utils/wp;->dq(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object p1, v4, v9

    invoke-virtual {v1, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->ox:Ljava/lang/Object;

    const-string p1, "wc_init_suc"

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_1
    return-void

    :catchall_0
    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "error_message"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)V

    invoke-virtual {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static ox()Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    return-object v0
.end method

.method private p()Z
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    return v3

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->iw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private s()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Ljava/lang/String;Z)V
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->s()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gs()Lcom/bytedance/sdk/openadsdk/core/r/io;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->s()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/io;->ia()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->ox:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->s()V

    return-void

    :cond_2
    const-string v1, "com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "userName"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "path"

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "miniprogramType"

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "MINIPTOGRAM_TYPE_RELEASE"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->ox:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v5, "sendReq"

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, p3

    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->ox:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, p3

    invoke-virtual {p2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/r/io;->d(I)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$3;

    invoke-direct {p2, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    const-string p2, "deeplink_success_realtime"

    invoke-static {p1, p5, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "open_url_app"

    invoke-static {p1, p5, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object p2

    invoke-virtual {p2, p1, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->s()V

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->d:Z

    return v0
.end method
