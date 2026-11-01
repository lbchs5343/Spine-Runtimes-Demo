.class public Lcom/bytedance/msdk/iw/dq/ig;
.super Lcom/bytedance/msdk/iw/dq/p;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/iw/dq/p;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/dq/ox;->mn()Lcom/bytedance/msdk/core/no/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->dq()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/msdk/iw/dq/ig;->dq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/iw/dq/ig;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/msdk/api/p/no;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/iw/dq/p;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/no;->ox()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/iw/dq/ig;->dq:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/no;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/iw/dq/ig;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "sigmob"

    return-object v0
.end method

.method public dq()Ljava/util/Map;
    .locals 3
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

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/bytedance/msdk/iw/dq/ig;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_key"

    iget-object v2, p0, Lcom/bytedance/msdk/iw/dq/ig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ig;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/dq/ox;->mn()Lcom/bytedance/msdk/core/no/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->dq()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/msdk/iw/dq/ig;->dq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/iw/dq/ig;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ig;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    return-object v0

    :cond_3
    :goto_0
    const-string v0, "appId\u4e3a\u7a7a\u6216appKey\u4e3a\u7a7a"

    return-object v0
.end method
