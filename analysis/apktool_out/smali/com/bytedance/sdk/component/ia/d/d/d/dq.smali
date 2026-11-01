.class public Lcom/bytedance/sdk/component/ia/d/d/d/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Landroid/content/Context;

.field private dq:Ljava/lang/String;

.field private ox:Lcom/bytedance/sdk/component/ia/dq/s;

.field private p:Lcom/bytedance/sdk/component/ia/dq/kk;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/mn;->s()Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/mn;->iw()Lcom/bytedance/sdk/component/ia/dq/kk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p:Lcom/bytedance/sdk/component/ia/dq/kk;

    return-void
.end method

.method private d()Lcom/bytedance/sdk/component/ia/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/mn;->s()Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    return-object v0
.end method

.method public static d(Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "adLogStop"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/d;->iw()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "adLogDispatch?event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatch event Throwable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "adLogStart"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "trackAdFailed?did="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/ia/dq/s;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/sdk/component/ia/dq/s;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?did="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&track="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&replace="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&extraMate="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "trackAdUrl"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method private static ox(Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/content/ContentResolver;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private ox()Lcom/bytedance/sdk/component/ia/dq/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p:Lcom/bytedance/sdk/component/ia/dq/kk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/mn;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/mn;->iw()Lcom/bytedance/sdk/component/ia/dq/kk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p:Lcom/bytedance/sdk/component/ia/dq/kk;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->p:Lcom/bytedance/sdk/component/ia/dq/kk;

    return-object v0
.end method

.method private static p(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/p;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, v1}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "csj_mediation"

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "gromore_ad_log_event"

    goto :goto_0

    :cond_0
    const-string p0, "ad_log_event"

    :goto_0
    invoke-static {v0, p0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dq()Ljava/lang/String;
    .locals 2

    const-string v0, "csj_mediation"

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gromore_ad_log_event"

    return-object v0

    :cond_0
    const-string v0, "ad_log_event"

    return-object v0
.end method

.method public dq(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d:Landroid/content/Context;

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d()Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->ox()Lcom/bytedance/sdk/component/ia/dq/kk;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "getType center is null"

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d()Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->p(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "trackAdUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "adLogDispatch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "adLogStop"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :sswitch_3
    const-string v3, "adLogStart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "trackAdFailed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    const-string v2, "did"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "replace"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extraMate"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v2

    goto :goto_2

    :catch_0
    move-object v11, v1

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    :goto_3
    if-ge v5, v0, :cond_7

    aget-object v2, p1, v5

    invoke-static {v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d()Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Lcom/bytedance/sdk/component/ia/d/iw/d;

    move-result-object v6

    const/4 v10, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/bytedance/sdk/component/ia/d/iw/d;->dq(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :pswitch_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d()Lcom/bytedance/sdk/component/ia/dq/s;

    const-string v2, "event"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/ox;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/d;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/dq/kk;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)V

    goto :goto_4

    :pswitch_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d()Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/kk;->d()V

    goto :goto_4

    :pswitch_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d()Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/kk;->dq()V

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d()Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Lcom/bytedance/sdk/component/ia/d/iw/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/d/iw/d;->dq(Ljava/lang/String;)V

    :catchall_0
    :cond_8
    :goto_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1cc57f55 -> :sswitch_4
        -0xa38c73f -> :sswitch_3
        0x397a0bc3 -> :sswitch_2
        0x3d237fbb -> :sswitch_1
        0x4374dfc1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
