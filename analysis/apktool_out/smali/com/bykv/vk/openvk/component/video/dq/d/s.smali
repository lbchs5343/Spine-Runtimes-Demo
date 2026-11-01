.class public Lcom/bykv/vk/openvk/component/video/dq/d/s;
.super Ljava/lang/Object;


# static fields
.field static volatile d:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

.field static volatile dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

.field public static volatile ia:I

.field static volatile iw:Z

.field public static volatile kk:Ljava/lang/Integer;

.field static volatile mn:I

.field private static volatile no:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile o:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

.field public static final ox:Z

.field public static volatile p:Z

.field static volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ig;->ox()Z

    move-result v0

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->s:Z

    const/4 v0, 0x0

    sput v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->mn:I

    const/4 v0, 0x3

    sput v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ia:I

    return-void
.end method

.method public static d()Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

    return-object v0
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->iw:Z

    return-void
.end method

.method public static dq()Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->d:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    return-object v0
.end method

.method public static dq(I)V
    .locals 0

    sput p0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->mn:I

    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->no:Landroid/content/Context;

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->d:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;->dq:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;->dq:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and DiskCache can\'t use the same dir"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sput-object p0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->d:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    move-result-object p1

    sput-object p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->o:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    sget-object p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->d:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/s$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/s$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox$dq;)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;)V

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->o:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;)V

    sget-object p0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->o:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and Context can\'t be null !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->s:Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->no:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic ox()Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->o:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    return-object v0
.end method
