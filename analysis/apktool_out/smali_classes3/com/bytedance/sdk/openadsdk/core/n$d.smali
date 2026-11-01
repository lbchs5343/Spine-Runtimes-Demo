.class final Lcom/bytedance/sdk/openadsdk/core/n$d;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/core/n$dq;


# direct methods
.method private constructor <init>(Ljava/io/File;ILcom/bytedance/sdk/openadsdk/core/n$dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/n$d;->dq:Lcom/bytedance/sdk/openadsdk/core/n$dq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/n$dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/n$d;->dq:Lcom/bytedance/sdk/openadsdk/core/n$dq;

    return-void
.end method

.method public static dq(Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/n$dq;)Lcom/bytedance/sdk/openadsdk/core/n$d;
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/16 v2, 0x100

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n$d;

    invoke-direct {v0, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/n$d;-><init>(Ljava/io/File;ILcom/bytedance/sdk/openadsdk/core/n$dq;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n$d;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/n$d;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/n$dq;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/n$d;->dq:Lcom/bytedance/sdk/openadsdk/core/n$dq;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/n$dq;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
