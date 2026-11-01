.class public final Lcom/bytedance/sdk/component/ox/d/le$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/h;

.field final dq:Lcom/bytedance/sdk/component/ox/d/cd;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/ox/d/cd;Lcom/bytedance/sdk/component/ox/d/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/le$d;->dq:Lcom/bytedance/sdk/component/ox/d/cd;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/le$d;->d:Lcom/bytedance/sdk/component/ox/d/h;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/d/cd;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/le$d;
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/le$d;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/ox/d/le$d;-><init>(Lcom/bytedance/sdk/component/ox/d/cd;Lcom/bytedance/sdk/component/ox/d/h;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/le$d;
    .locals 2

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/ox/d/le;->dq(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ox/d/le;->dq(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq([Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/ox/d/le$d;->dq(Lcom/bytedance/sdk/component/ox/d/cd;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/le$d;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
