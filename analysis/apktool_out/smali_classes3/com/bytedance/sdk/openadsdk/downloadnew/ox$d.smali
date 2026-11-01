.class Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/download/api/config/cd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ss/android/download/api/config/cd;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$1;

    invoke-direct {v0, p0, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;Lcom/ss/android/download/api/config/cd;)V

    invoke-interface {p1, v1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->execute(ILjava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;)V

    :cond_2
    return-void
.end method

.method public dq(Ljava/lang/String;[BLjava/lang/String;ILcom/ss/android/download/api/config/cd;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox;->p()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object p4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$2;

    invoke-direct {v0, p0, p5}, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;Lcom/ss/android/download/api/config/cd;)V

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->postBody(Ljava/lang/String;[BLjava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;)V

    :cond_0
    return-void
.end method
