.class public Lcom/bytedance/sdk/component/iw/ox/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/jy;


# annotations
.annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATS;
    single = true
    value = {
        "img_service"
    }
.end annotation


# instance fields
.field private volatile dq:Lcom/bytedance/sdk/component/iw/ox/iw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/mp;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/iw/ox/s;

    move-result-object p2

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/mp;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/mp;)Lcom/bytedance/sdk/component/iw/jy;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/ox/d;-><init>()V

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/iw/ox/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/mp;)V

    return-object v0
.end method

.method private dq(Ljava/util/Collection;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/bytedance/sdk/component/iw/dq;",
            ">;D)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/iw/dq;

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/component/iw/dq;->dq(D)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public d(D)V
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x3
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/d;->dq(Ljava/util/Collection;D)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/iw/ox/iw;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/d;->dq(Ljava/util/Collection;D)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/ox;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/iw/dq;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/ox$d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;-><init>(Lcom/bytedance/sdk/component/iw/ox/iw;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x6
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->d()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/iw/gh;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->ox()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/iw/ox;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/iw/ox;->dq(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_5
    return-object v1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/ox;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/iw/ox;->dq(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public dq()V
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x5
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/iw/ox/d;->ox(D)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/iw/ox/d;->d(D)V

    return-void
.end method

.method public dq(D)V
    .locals 0
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/d;->d(D)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/d;->ox(D)V

    return-void
.end method

.method public ox(D)V
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x4
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/d;->dq:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/iw/ox/iw;->ox()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/d;->dq(Ljava/util/Collection;D)V

    :cond_0
    return-void
.end method
