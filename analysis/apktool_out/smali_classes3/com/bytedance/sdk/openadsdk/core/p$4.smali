.class Lcom/bytedance/sdk/openadsdk/core/p$4;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->ox:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    sget-object v1, Lg/hat;->b:Lg/cpo;

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x14

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    const-string v0, "TTAdSdk"

    const-string v1, "\u4e0b\u8f7dSDK \u521d\u59cb\u5316\u5931\u8d25 \uff0c bridge = null \uff01\uff01\uff01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->oh()Z

    move-result v1

    if-nez v1, :cond_2

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->oh()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dq()V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1

    :cond_2
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/api/ox;->dq(Lcom/bytedance/sdk/component/d/dq/ig;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/p;->ox()Lcom/bytedance/sdk/openadsdk/core/o/p;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ce;->ox()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq/d;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->mn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/p$4$1;

    const-string v3, "preloadTTVideo"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/p$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p$4;Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/dq/d;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->q()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/le;->dq(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/o/mn;->dq(Z)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/gh/d/dq;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/dq;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->dq(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dq/d/d;->ox(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->s(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/content/Context;)V

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/component/utils/gh;->dq()Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/s;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->dq(Lcom/bytedance/sdk/component/utils/jy;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/mp;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ia;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/k;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/u/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u/dq;->dq(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_4
    const-string v1, "TTAdSdk"

    const-string v2, "Unexpected asyn init error: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
