.class public Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;
.super Ljava/lang/Object;


# instance fields
.field private d:[I

.field private dq:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final dq([II)I
    .locals 1

    div-int/lit8 v0, p1, 0x4

    aget p0, p0, v0

    rem-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    :cond_0
    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static dq(Lcom/ss/android/socialbase/appdownloader/iw/dq/p;)Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x1c0001

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/d;->dq(Lcom/ss/android/socialbase/appdownloader/iw/dq/p;I)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v4

    new-instance v5, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

    invoke-direct {v5}, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;-><init>()V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d(I)[I

    move-result-object v1

    iput-object v1, v5, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->dq:[I

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d(I)[I

    :cond_0
    if-nez v4, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    sub-int/2addr v1, v3

    rem-int/lit8 v2, v1, 0x4

    const-string v3, ")."

    if-nez v2, :cond_4

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d(I)[I

    move-result-object v1

    iput-object v1, v5, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->d:[I

    if-eqz v4, :cond_3

    sub-int/2addr v0, v4

    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_2

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d(I)[I

    return-object v5

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Style data size is not multiple of 4 ("

    invoke-static {v0, v1, v3}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v5

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "String data size is not multiple of 4 ("

    invoke-static {v1, v0, v3}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dq(I)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->dq:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget p1, v0, p1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->d:[I

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->dq([II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->d:[I

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->dq([II)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
