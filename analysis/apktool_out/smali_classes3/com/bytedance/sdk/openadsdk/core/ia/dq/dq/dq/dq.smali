.class public abstract Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# instance fields
.field protected d:Landroid/content/Context;

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected ia:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

.field private volatile ig:Z

.field protected iw:Z

.field protected kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field protected volatile mn:Z

.field private mp:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

.field private no:I

.field private o:Lcom/bytedance/sdk/openadsdk/core/r/r;

.field protected ox:Ljava/lang/String;

.field protected p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->mn:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->no:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/ox;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)V

    return-object v0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const/4 v1, 0x0

    const-string v2, "itemClickListener"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v1, "downloadButtonClickListener"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x1194

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x0

    const/16 v5, 0x11

    if-ge v0, v1, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, v0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-interface {p2, v5, p1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ir/op;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, v0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-interface {p2, v5, p1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/ox;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V

    return-void
.end method

.method private dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq(Ljava/lang/Runnable;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ig:Z

    return-void
.end method

.method private iw(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->o:Lcom/bytedance/sdk/openadsdk/core/r/r;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->s()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->o:Lcom/bytedance/sdk/openadsdk/core/r/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(Ljava/util/Map;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "hashCode"

    invoke-virtual {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    const-string v0, "downloadUrl"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x6

    invoke-interface {v0, v3, p1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return v4

    :cond_4
    :goto_0
    return v1
.end method

.method private mn(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(Ljava/util/Map;)I

    move-result v0

    if-eqz p1, :cond_0

    const-string v1, "hashCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x10

    invoke-interface {v0, v2, p1, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static ox(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "download_manager_hash_code"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private s(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(Ljava/util/Map;)I

    move-result v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ig:Z

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(ZI)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->iw(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "downloadUrl"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    const-string v2, "is_feed_register_direct_download"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "download_manager_hash_code"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->p(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(ZI)V

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public d(I)Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;-><init>()V

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->mn:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/p;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/p;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;-><init>()V

    return-object p1
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->iw:Z

    return-void
.end method

.method public abstract d(ZI)V
.end method

.method public d(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ro()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d:Landroid/content/Context;

    const-string v0, "tt_no_network"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->dq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s(Ljava/util/Map;)V

    return v2
.end method

.method public abstract dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ir/op;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/ir/op<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;"
        }
    .end annotation
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->no:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->mn(Ljava/util/Map;)V

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ig:Z

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ig:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->mp:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/r;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->o:Lcom/bytedance/sdk/openadsdk/core/r/r;

    return-void
.end method

.method public dq(Lcom/ss/android/download/api/download/DownloadStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ia:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    return-void
.end method

.method public dq(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->no:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$4;

    const-string v1, "tt_download_check"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Ljava/lang/String;ZLjava/util/Map;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->mn:Z

    return-void
.end method

.method public dq(ZI)V
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x1518

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(ZI)V

    return-void
.end method

.method public dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/ox;",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(Ljava/util/Map;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->mp:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->s:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;

    invoke-direct {v5, p0, v1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;ILjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V

    invoke-virtual {v0, p1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    return v2
.end method

.method public dq(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public abstract ox(I)Z
.end method

.method public abstract p(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;"
        }
    .end annotation
.end method
