.class public Lcom/bytedance/sdk/openadsdk/core/p/ox/p;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

.field private static final dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

.field private static final ox:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

.field private static final p:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;


# instance fields
.field private final s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->ox:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->p:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    return-void
.end method

.method public static dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->p:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    return-object p0

    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    return-object p0

    :cond_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->ox:Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object p2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->ox:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->iw(Z)V

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->u(I)V

    iget-wide v1, p1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->dq:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->s(J)V

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p2
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 12

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v4, v8

    div-long/2addr v4, v8

    const-wide/16 v8, 0x3

    div-long/2addr v4, v8

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    int-to-long v8, p1

    add-long v10, v4, v8

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sp()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ix()J

    move-result-wide v8

    mul-long v6, v6, v8

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xq()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    move v3, p3

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->ox(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->s:Lcom/bytedance/sdk/openadsdk/core/p/ox/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
