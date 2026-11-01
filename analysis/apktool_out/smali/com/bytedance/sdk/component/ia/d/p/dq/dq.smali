.class public Lcom/bytedance/sdk/component/ia/d/p/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/d;


# instance fields
.field private d:Lcom/bytedance/sdk/component/ia/d/p/dq/d;

.field protected dq:Lorg/json/JSONObject;

.field private ia:Ljava/lang/String;

.field private ig:I

.field private iw:J

.field private kk:Ljava/lang/String;

.field private mn:J

.field private no:Ljava/lang/String;

.field private o:B

.field private ox:B

.field private p:B

.field private s:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/d/p/dq/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->kk:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d:Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->kk:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq:Lorg/json/JSONObject;

    return-void
.end method

.method public static p(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/d;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;-><init>()V

    int-to-byte p0, p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->dq(B)V

    int-to-byte p0, v1

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->d(B)V

    const-string p0, "event"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->dq(Lorg/json/JSONObject;)V

    const-string p0, "localId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->dq(Ljava/lang/String;)V

    const-string p0, "genTime"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->d(Ljava/lang/String;)V

    const-string p0, "channel"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->dq(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public d()B
    .locals 1

    iget-byte v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->o:B

    return v0
.end method

.method public d(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->p:B

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->iw:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ia:Ljava/lang/String;

    return-void
.end method

.method public dq()Lcom/bytedance/sdk/component/ia/d/p/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d:Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    return-object v0
.end method

.method public dq(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ox:B

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ig:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->s:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->kk:Ljava/lang/String;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq:Lorg/json/JSONObject;

    return-void
.end method

.method public ia()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->s:J

    return-wide v0
.end method

.method public iw()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->kk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "localId"

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->kk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->mn()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "genTime"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priority"

    iget-byte v2, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->p:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-byte v2, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ox:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget v2, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ig:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->iw:J

    return-wide v0
.end method

.method public declared-synchronized mn()Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d:Lcom/bytedance/sdk/component/ia/d/p/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ia/d/p/dq/d;->dq(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq:Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->no:Ljava/lang/String;

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->kk:Ljava/lang/String;

    return-object v0
.end method

.method public ox(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->o:B

    return-void
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->mn:J

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->no:Ljava/lang/String;

    return-void
.end method

.method public p()B
    .locals 1

    iget-byte v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ox:B

    return v0
.end method

.method public s()B
    .locals 1

    iget-byte v0, p0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->p:B

    return v0
.end method
