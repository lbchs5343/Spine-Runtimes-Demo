.class public Lcom/bytedance/sdk/component/ia/d/dq/dq/d/dq;
.super Lcom/bytedance/sdk/component/ia/d/dq/dq/d/mn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/mn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS "

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    invoke-static {v0, p0, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ALTER TABLE "

    const-string v1, " ADD COLUMN encrypt INTEGER default 0"

    invoke-static {v0, p0, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/mn;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->d()Lcom/bytedance/sdk/component/ia/dq/iw;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/iw;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->s(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result p1

    return p1
.end method

.method public ox()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
