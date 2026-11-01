.class public Lcom/bytedance/sdk/openadsdk/core/iw/p;
.super Ljava/lang/Object;


# static fields
.field private static s:Lcom/bytedance/sdk/openadsdk/core/iw/p;


# instance fields
.field private d:I

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ox:I

.field private volatile p:Lcom/bytedance/sdk/component/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/iw/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->s:Lcom/bytedance/sdk/openadsdk/core/iw/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/iw/p;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->s:Lcom/bytedance/sdk/openadsdk/core/iw/p;

    return-object v0
.end method

.method private ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/dq;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public d(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->ox:I

    :cond_0
    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d:I

    :cond_0
    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/iw/p;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    :cond_0
    return-object p0
.end method

.method public dq(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    const-string v1, "-------fatal----------"

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last show rit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last show adtype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/iw/p;->p:Lcom/bytedance/sdk/component/dq;

    const-string v0, "-------finish----------"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq()Lcom/bytedance/sdk/openadsdk/api/TTILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->flush()V

    :cond_1
    return-void
.end method
