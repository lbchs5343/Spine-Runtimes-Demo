.class public Lcom/bytedance/sdk/openadsdk/core/gh/d;
.super Ljava/lang/Object;


# static fields
.field public static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final dq:Ljava/lang/String;

.field public static final ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static p:Ljava/lang/String;

.field private static final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "_create"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/d;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/d;->s:Ljava/util/Set;

    const-string v1, "click_start"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "download_start"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "download_finish"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "install_finish"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "click"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "show"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/iw;

    const-string v1, "csj"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/iw;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Z)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->n()I

    move-result v0

    if-lez v0, :cond_1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v0, 0x64

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->i()I

    move-result v1

    if-le v1, v0, :cond_3

    const/4 v1, 0x5

    const/16 v0, 0xa

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->wp()Z

    move-result v2

    new-instance v3, Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;-><init>()V

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq(II)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->ox(Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq(II)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v1

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq(II)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->d(Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->d(Z)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object p1

    const-string v0, "csj"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object p0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/gh/mn;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/gh/mn;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Lcom/bytedance/sdk/component/ia/dq/p;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object p0

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/gh/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/iw;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Lcom/bytedance/sdk/component/ia/dq/iw;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Z)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq()Lcom/bytedance/sdk/component/ia/dq/dq;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;)Lcom/bytedance/sdk/component/ia/dq/mn;

    return-void
.end method

.method public static dq(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "{OAID}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "__OAID__"

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static dq()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "csj"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(ZLjava/lang/String;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "csj"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/d/p/dq/dq;Ljava/lang/String;I)V
    .locals 1

    const-string p1, "csj"

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->bf()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/ig/dq;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->bf()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/d;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/d/p/dq/d;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq;->iw()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d(B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq(B)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq;->ox()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/d/p/dq/dq;)V

    const-string p0, "csj"

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Landroid/content/Context;Z)V

    :cond_2
    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)V

    const-class p0, Lcom/bytedance/sdk/openadsdk/core/wp/ox;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ats/AutoService;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/wp/ox;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 3

    const-string v0, "csj"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/d/p/dq/dq;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->fw()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ox(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    const-string v0, "csj"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Landroid/content/Context;Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v1, "csj"

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/no;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/no;

    return-object v0
.end method

.method public static p()V
    .locals 2

    :try_start_0
    const-string v0, "csj"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/gh/d;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s()V
    .locals 1

    const-string v0, "csj"

    :try_start_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->p(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
