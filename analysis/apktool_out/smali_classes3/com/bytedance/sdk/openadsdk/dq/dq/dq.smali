.class public Lcom/bytedance/sdk/openadsdk/dq/dq/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/dq/dq/dq; = null

.field private static volatile iw:Ljava/lang/String; = ""


# instance fields
.field private d:Lg/cad;

.field private volatile ia:I

.field private final mn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile ox:Z

.field private final p:Ljava/lang/String;

.field private volatile s:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, 0x1869f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ia:I

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ox()Z

    move-result v0

    const/16 v1, 0x122

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x32a

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ia:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ia:I

    :cond_2
    :goto_1
    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v2, 0x11f8

    if-lt v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->iw()Z

    move-result p2

    if-nez p2, :cond_3

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ia:I

    :cond_3
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ox()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ox:Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ji()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->iw:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/dq/dq/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    return-object v0
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)Lcom/bytedance/sdk/openadsdk/dq/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    return-object p0
.end method

.method public static synthetic ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->iw:Ljava/lang/String;

    return-object p0
.end method

.method private ox()Z
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/coa;

    const-string v2, "1371"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->p:Ljava/lang/String;

    const-string v4, "THYFfhd167Y/Etj/JFI+OYhGnAsIhCvIXKQbbKuslfRMO6XQmCuZImqOyljyF6dQ900Hy8ecQzUcHu72ks7Xvvncqt7BZjf4VSth/OzZbJlDJqtayy2lcb5mqCQUzE5fIvFXAZkyxl+SRzGnzUojBcyqITZ3bGRvteMi+qu/15oKM3BWY0IDJ9Ry5FUGfzt+FyCqvZI8PFQNAzvZXcWHlJoRXydZUjUbtEy/AFUvusIO1HDx"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ia:I

    invoke-direct {v1}, Lms/bz/bd/c/Pgl/a;-><init>()V

    iput-object v2, v1, Lms/bz/bd/c/Pgl/a;->g:Ljava/lang/String;

    iput-object v3, v1, Lms/bz/bd/c/Pgl/a;->h:Ljava/lang/String;

    iput-object v4, v1, Lms/bz/bd/c/Pgl/a;->b:Ljava/lang/String;

    iput v5, v1, Lms/bz/bd/c/Pgl/a;->e:I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/dq/dq/dq$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/dq/dq/dq;)V

    iget-object v3, v1, Lms/bz/bd/c/Pgl/a;->f:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->mn()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "kOA1"

    const-string v3, "1"

    iget-object v4, v1, Lms/bz/bd/c/Pgl/a;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "kS1"

    const-string v3, "1"

    iget-object v4, v1, Lms/bz/bd/c/Pgl/a;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->s:Ljava/lang/String;

    iput-object v2, v1, Lms/bz/bd/c/Pgl/a;->d:Ljava/lang/String;

    new-instance v2, Lg/fvb;

    const/4 v3, 0x1

    iput v3, v1, Lms/bz/bd/c/Pgl/a;->c:I

    invoke-direct {v2, v1}, Lg/fvb;-><init>(Lg/coa;)V

    const-class v1, Lg/fqa;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v2, Lg/fvb;->k:Lg/coa;

    invoke-static {v0, v2}, Lms/bz/bd/c/Pgl/n0;->d(Landroid/content/Context;Lms/bz/bd/c/Pgl/a;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    invoke-static {}, Lg/fqa;->b()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sdkID or license must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const-string v1, "MSSdkImpl"

    const-string v2, "appid \u4e3a\u7a7a\uff0c\u521d\u59cb\u5316\u5931\u8d25\uff01"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->d:Lg/cad;

    if-nez v0, :cond_0

    invoke-static {}, Lg/fqa;->a()Lg/cad;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->d:Lg/cad;

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ox:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->d:Lg/cad;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/cad;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ox:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->d:Lg/cad;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lg/cad;->a:Lms/bz/bd/c/Pgl/m0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v5, v0, Lms/bz/bd/c/Pgl/m0;->a:J

    sget-object v0, Lms/bz/bd/c/Pgl/pblb;->a:Landroid/util/SparseArray;

    const v3, 0x2000006

    const/4 v4, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length p2, p1

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    aget-object v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public dq(Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->ox:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->p()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->d:Lg/cad;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->d:Lg/cad;

    iget-object v0, v0, Lg/cad;->a:Lms/bz/bd/c/Pgl/m0;

    iget-object v1, v0, Lms/bz/bd/c/Pgl/m0;->c:Lms/bz/bd/c/Pgl/a;

    iput-object p1, v1, Lms/bz/bd/c/Pgl/a;->d:Ljava/lang/String;

    iget-wide v4, v0, Lms/bz/bd/c/Pgl/m0;->a:J

    const-wide/16 v1, -0x1

    cmp-long v3, v4, v1

    if-eqz v3, :cond_1

    iget-object v7, v0, Lms/bz/bd/c/Pgl/m0;->b:Landroid/content/Context;

    sget-object v0, Lms/bz/bd/c/Pgl/pblb;->a:Landroid/util/SparseArray;

    const v2, 0x2000002

    const/4 v3, 0x0

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
