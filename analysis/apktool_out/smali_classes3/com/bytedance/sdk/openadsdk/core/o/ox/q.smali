.class public Lcom/bytedance/sdk/openadsdk/core/o/ox/q;
.super Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;


# instance fields
.field private ia:Ljava/lang/String;

.field private ig:I

.field private iw:Lcom/ss/android/download/api/download/DownloadModel;

.field private jy:Z

.field private kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

.field private final mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private volatile mp:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

.field private no:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private o:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field private ox:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private volatile q:Z

.field private s:Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ig:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ox:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ia:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->p:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p2, p4, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->s:Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ia:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->o:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->s(Z)V

    return-void
.end method

.method private cd()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "downloadUrl"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hashCode"

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    const/4 v4, 0x6

    invoke-interface {v2, v4, v0, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->p:Ljava/lang/String;

    return-object p0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/ox;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p(Z)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->cd()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ia:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ia:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->p:Ljava/lang/String;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$2;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)V

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    return v2
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private dq(ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ig()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v3, v0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const/16 v0, 0xd

    invoke-interface {p1, v0, p2, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->q:Z

    return-void

    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v3, 0x1194

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-interface {v0, p1, p2, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->q:Z

    return-void

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;Ljava/util/Map;I)V

    const-string v3, "itemClickListener"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-interface {v0, p1, p2, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq(ILjava/util/Map;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;Lcom/bytedance/sdk/openadsdk/core/r/ox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->i()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->d(Lcom/bytedance/sdk/openadsdk/core/r/ox;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->gh()V

    return-void
.end method

.method private dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq(Ljava/lang/Runnable;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private f()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_3
    :goto_0
    return v1
.end method

.method private fw()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->o(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->cd()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ox:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private gh()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->r()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq(ILjava/util/Map;)V

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$4;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Ljava/util/Map;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq(Ljava/util/Map;)V

    return-void
.end method

.method private i()V
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x1518

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->q:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->setEnableOppoAutoDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->p()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object p0

    return-object p0
.end method

.method private ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized iw()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ig()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v2, "hashCode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const/16 v3, 0x12

    invoke-interface {v2, v3, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "downloadUrl"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v2, "hashCode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v3, 0x1

    invoke-static {v3}, Lg/hat;->g(I)Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private jy()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ig()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mp()Z

    move-result p0

    return p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/ss/android/downloadad/api/download/AdDownloadController;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    return-object p0
.end method

.method private mp()Z
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ig:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$1;

    const-string v2, "tt_download_check"

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Landroid/content/Context;)V

    return v1
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object p0
.end method

.method private declared-synchronized no()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ig()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "downloadModel"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v2, "hashCode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "hashCode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v2, "id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    const/16 v4, 0x13

    invoke-interface {v2, v4, v0, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v2, "logExtra"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v2, "hashCode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const/16 v3, 0xe

    invoke-interface {v2, v3, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->o:Lcom/ss/android/download/api/download/DownloadEventConfig;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->q()Z

    move-result p0

    return p0
.end method

.method private p()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/p;-><init>()V

    return-object v0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->s:Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    return-object p0
.end method

.method private q()Z
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private r()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ig()Z

    move-result v0

    const-string v1, "hashCode"

    const-string v2, "downloadController"

    const-string v3, "downloadEventConfig"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v4, "userAgent"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v4, "isDisableDialog"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v4, "downloadModel"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->o:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v2, "downloadStatusChangeListener"

    invoke-virtual {v0, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v4, "downloadUrl"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->p:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v4}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v0, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "action_type_button"

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->o:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->gh()V

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mp:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mp:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mp:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mp:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object p1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->p()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->fw()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->mp()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x1518

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->q:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->setEnableOppoAutoDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ig:I

    return-void
.end method

.method public dq(ILcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadAdapter$OnEventLogHandler;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;Z)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 0

    return-void
.end method

.method public dq()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->kk:Lcom/ss/android/downloadad/api/download/AdDownloadController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController;->getDownloadMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public dq(Lorg/json/JSONObject;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dq(ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ia()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no()V

    return-void
.end method

.method public kk()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ox:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->ox:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public mn()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->iw:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadUrl"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hashCode"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    const-string v2, "force"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    iget-object v2, v0, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Void;

    invoke-interface {v1, v2, v0, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->jy:Z

    return-void
.end method

.method public s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public s(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no()V

    return-void
.end method
