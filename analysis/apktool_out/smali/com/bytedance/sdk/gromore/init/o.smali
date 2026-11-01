.class public Lcom/bytedance/sdk/gromore/init/o;
.super Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;)I
    .locals 2

    const-string v0, "TMe"

    const-string v1, "mediationManager showOpenOrInstallAppDialog"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/gromore/init/o$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/gromore/init/o$1;-><init>(Lcom/bytedance/sdk/gromore/init/o;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;)V

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/o;->dq(Lcom/bytedance/msdk/api/p/ox;)I

    move-result p1

    return p1
.end method

.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Ljava/lang/Object;
    .locals 5

    const/16 v0, 0x2043

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/gromore/init/o;->dq()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/api/p/o;->dq()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_2

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/msdk/api/p/o;->dq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_3

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/msdk/api/p/o;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v1, 0x3ec

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/api/p/o;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v2, 0x3ed

    if-ne p1, v2, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/api/p/o;->no()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v2, 0x3ee

    if-ne p1, v2, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/api/p/o;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 v2, 0x3ef

    if-ne p1, v2, :cond_7

    const-class p1, Landroid/content/Context;

    invoke-interface {p2, v1, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v1, 0x3f0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v1, :cond_8

    invoke-static {v3}, Lcom/bytedance/msdk/api/p/o;->d(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x3f1

    if-ne p1, v1, :cond_9

    invoke-static {}, Lcom/bytedance/msdk/api/p/o;->ig()V

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_a

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->p(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 v1, 0x3f3

    if-ne p1, v1, :cond_d

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->s(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object p1

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->d()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_b
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/dq/p;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/dq/p;->dq()Ljava/lang/String;

    move-result-object p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_0

    :cond_c
    const-string p1, ""

    move-object p2, p1

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "networdSdkVersion"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "adapterSdkVersion"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_d
    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_f

    if-nez p2, :cond_e

    return-object v2

    :cond_e
    const/16 p1, 0x7d2

    const-class v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/d/dq;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-static {}, Lcom/bytedance/sdk/gromore/d/dq;->dq()Lcom/bytedance/sdk/gromore/d/dq;

    move-result-object p1

    return-object p1

    :cond_f
    const/16 p2, 0x3f4

    if-ne p1, p2, :cond_10

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/d;->bl()Lcom/bytedance/msdk/api/p/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/q;->ox()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_10
    :goto_1
    return-object v2
.end method

.method public dq()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "TMe"

    const-string v1, "getMediationExtraInfo"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/api/p/o;->mp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public dq(I)V
    .locals 2

    const-string v0, "mediationManager setThemeStatus themeStatus = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->dq(I)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Ljava/util/List;IILcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;",
            ">;II",
            "Lcom/bykv/vk/openvk/api/proto/Bridge;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediationManager preload activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " parallelNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestIntervalS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " classLoader = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u53c2\u6570\u9519\u8bef"

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;->dq()I

    move-result v4

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;->d()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object v5

    invoke-static {v4, v5, p5}, Lcom/bytedance/msdk/api/p/dq/dq;->dq(ILcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/bytedance/msdk/api/p/mp;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;->ox()Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/bytedance/msdk/api/p/mp;-><init>(Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-static {p1, v2, p3, p4}, Lcom/bytedance/msdk/api/p/o;->dq(Landroid/app/Activity;Ljava/util/List;II)V

    return-void

    :cond_2
    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/content/Context;)V
    .locals 2

    const-string v0, "mediationManager requestPermissionIfNecessary context = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 3

    const-string v0, "TMe"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediationManager loadDrawToken context = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pluginIMediationDrawAdTokenCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " classLoader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {v0, p2, p4}, Lcom/bytedance/msdk/api/p/dq/dq;->dq(ILcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/bytedance/msdk/ox/p/mn;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/ox/p/mn;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bytedance/sdk/gromore/init/o$4;

    invoke-direct {p1, p0, p3, p2}, Lcom/bytedance/sdk/gromore/init/o$4;-><init>(Lcom/bytedance/sdk/gromore/init/o;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/dq;Lcom/bytedance/msdk/ox/p/mn;)V

    invoke-virtual {p2, p4, p1}, Lcom/bytedance/msdk/ox/p/mn;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ox;)V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/core/admanager/s;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/bytedance/msdk/core/admanager/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/gromore/init/o$5;

    invoke-direct {p1, p0, p3, v0}, Lcom/bytedance/sdk/gromore/init/o$5;-><init>(Lcom/bytedance/sdk/gromore/init/o;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/dq;Lcom/bytedance/msdk/core/admanager/s;)V

    invoke-virtual {v0, p4, p1}, Lcom/bytedance/msdk/core/admanager/s;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ox;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 3

    const-string v0, "TMe"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediationManager loadNativeToken context = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pluginIMediationNativeAdTokenCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " classLoader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0, p2, p4}, Lcom/bytedance/msdk/api/p/dq/dq;->dq(ILcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/bytedance/msdk/ox/p/kk;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/ox/p/kk;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bytedance/sdk/gromore/init/o$2;

    invoke-direct {p1, p0, p3, p2}, Lcom/bytedance/sdk/gromore/init/o$2;-><init>(Lcom/bytedance/sdk/gromore/init/o;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;Lcom/bytedance/msdk/ox/p/kk;)V

    invoke-virtual {p2, p4, p1}, Lcom/bytedance/msdk/ox/p/kk;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ox;)V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/core/admanager/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/bytedance/msdk/core/admanager/ia;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/gromore/init/o$3;

    invoke-direct {p1, p0, p3, v0}, Lcom/bytedance/sdk/gromore/init/o$3;-><init>(Lcom/bytedance/sdk/gromore/init/o;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;Lcom/bytedance/msdk/core/admanager/ia;)V

    invoke-virtual {v0, p4, p1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ox;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/content/Context;[I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediationManager requestPermissionIfNecessary context = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " permissions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/bytedance/msdk/api/p/o;->dq(Landroid/content/Context;[I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
    .locals 2

    const-string v0, "mediationManager updatePrivacyConfig customController = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/init/d;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;)Lcom/bytedance/msdk/api/p/iw;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->dq(Lcom/bytedance/msdk/api/p/iw;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mediationManager setPulisherDid configUserInfoForSegment = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediationManager updateLocalExtra map = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/d;->d(Ljava/util/Map;)V

    return-void
.end method
