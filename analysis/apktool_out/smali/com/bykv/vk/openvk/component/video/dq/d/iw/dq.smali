.class public Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;,
        Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$d;
    }
.end annotation


# static fields
.field public static final dq:Z


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d()Z

    move-result v0

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->dq:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->d()Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;
    .locals 1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$d;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;

    move-result-object v0

    return-object v0
.end method

.method private static ox()Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "proxy_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    invoke-direct {v2, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/32 v0, 0x6400000

    :try_start_1
    invoke-virtual {v2, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;->dq(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 5

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/s;->dq(Z)V

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/s;->d(Z)V

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/s;->dq(I)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->p()V

    :try_start_0
    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;

    invoke-direct {v3, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;)V

    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;

    const-string v4, "csj_video_cache_preloader"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/o/p/ox;->start()V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/s;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;Landroid/content/Context;)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/p;

    move-result-object v0

    const v2, 0x9fffff

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(I)V

    return v1

    :catch_0
    return v2
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
