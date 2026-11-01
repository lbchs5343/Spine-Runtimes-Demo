.class public Lcom/bytedance/sdk/component/utils/kk;
.super Ljava/lang/Object;


# static fields
.field private static final d:[B

.field private static final dq:[B

.field private static final iw:[B

.field private static final mn:I

.field private static final ox:[B

.field private static final p:[B

.field private static final s:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/bytedance/sdk/component/utils/kk;->dq:[B

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/bytedance/sdk/component/utils/kk;->d:[B

    const/4 v3, 0x4

    new-array v4, v3, [B

    fill-array-data v4, :array_2

    sput-object v4, Lcom/bytedance/sdk/component/utils/kk;->ox:[B

    const-string v5, "BM"

    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/kk;->dq(Ljava/lang/String;)[B

    move-result-object v5

    sput-object v5, Lcom/bytedance/sdk/component/utils/kk;->p:[B

    const-string v6, "GIF87a"

    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/kk;->dq(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lcom/bytedance/sdk/component/utils/kk;->s:[B

    const-string v6, "GIF89a"

    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/kk;->dq(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lcom/bytedance/sdk/component/utils/kk;->iw:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    aput-object v5, v7, v0

    aput-object v6, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/component/utils/kk;->mn:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private static d([B)Z
    .locals 3

    array-length v0, p0

    sget-object v1, Lcom/bytedance/sdk/component/utils/kk;->dq:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/kk;->dq([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/component/utils/kk;->mn:I

    return v0
.end method

.method public static final dq([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/kk;->d([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "jpeg"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/kk;->ox([B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "png"

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/kk;->p([B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "gif"

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/kk;->s([B)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "bmp"

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/kk;->iw([B)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "ico"

    return-object p0

    :cond_4
    const-string p0, "other"

    return-object p0
.end method

.method private static dq([B[B)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/component/utils/kk;->dq([B[BI)Z

    move-result p0

    return p0
.end method

.method private static dq([B[BI)Z
    .locals 4

    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    add-int v1, p2, v0

    aget-byte v1, p0, v1

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static dq(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static iw([B)Z
    .locals 3

    array-length v0, p0

    sget-object v1, Lcom/bytedance/sdk/component/utils/kk;->ox:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/kk;->dq([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ox([B)Z
    .locals 3

    array-length v0, p0

    sget-object v1, Lcom/bytedance/sdk/component/utils/kk;->d:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/kk;->dq([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static p([B)Z
    .locals 2

    array-length v0, p0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/utils/kk;->s:[B

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/kk;->dq([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/utils/kk;->iw:[B

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/kk;->dq([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static s([B)Z
    .locals 3

    array-length v0, p0

    sget-object v1, Lcom/bytedance/sdk/component/utils/kk;->p:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/kk;->dq([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
