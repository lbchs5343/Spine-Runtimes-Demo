.class public Lcom/bytedance/sdk/component/adexpress/p/s;
.super Ljava/lang/Object;


# static fields
.field private static final dq:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VP8X"

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/p/s;->dq(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/p/s;->dq:[B

    return-void
.end method

.method public static d(Landroid/widget/ImageView;[BII)V
    .locals 3

    :try_start_0
    instance-of v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->dq([BZ)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/kk;->dq()I

    move-result v0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/kk;->dq([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "png"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/p/s;->ox(Landroid/widget/ImageView;[BII)V

    return-void

    :cond_1
    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/adexpress/p/s;->dq([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/p/s;->dq(Landroid/widget/ImageView;[BII)V

    return-void

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/p/s;->p(Landroid/widget/ImageView;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static dq(Landroid/widget/ImageView;[BII)V
    .locals 3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lg/agk;->ac(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lg/agk;->i(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/component/adexpress/p/s$3;

    invoke-direct {p3, p1, p0}, Lcom/bytedance/sdk/component/adexpress/p/s$3;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/p/s;->p(Landroid/widget/ImageView;[BII)V

    return-void
.end method

.method public static dq([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "IDAT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "acTL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static dq([BI)Z
    .locals 3

    add-int/lit8 v0, p1, 0xc

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/component/adexpress/p/s;->dq:[B

    invoke-static {p0, v0, v2}, Lcom/bytedance/sdk/component/adexpress/p/s;->dq([BI[B)Z

    move-result v0

    add-int/lit8 p1, p1, 0x14

    array-length v2, p0

    if-gt v2, p1, :cond_0

    return v1

    :cond_0
    aget-byte p0, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    and-int/2addr p0, p1

    const/4 v2, 0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private static dq([BI[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private static dq(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x1

    new-array p0, p0, [B

    return-object p0
.end method

.method private static ox(Landroid/widget/ImageView;[BII)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/p/s;->dq([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, Lg/fc;

    const/16 p3, 0x15

    invoke-direct {p2, p3, p1}, Lg/fc;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lg/cpx;

    invoke-direct {p1, p2}, Lg/cpx;-><init>(Lg/fc;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/component/adexpress/p/s$1;

    invoke-direct {p3, p0, p1}, Lcom/bytedance/sdk/component/adexpress/p/s$1;-><init>(Landroid/widget/ImageView;Lg/cpx;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/p/s;->p(Landroid/widget/ImageView;[BII)V

    return-void
.end method

.method private static p(Landroid/widget/ImageView;[BII)V
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/d/dq;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v5, p2

    move v6, p3

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/iw/ox/d/dq;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/ox/d/dq;->dq([B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/component/adexpress/p/s$2;

    invoke-direct {p3, p0, p1}, Lcom/bytedance/sdk/component/adexpress/p/s$2;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
