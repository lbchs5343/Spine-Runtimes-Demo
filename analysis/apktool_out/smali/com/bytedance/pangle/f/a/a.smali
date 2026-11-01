.class final Lcom/bytedance/pangle/f/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lcom/bytedance/pangle/f/a/b;

.field c:[I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/bytedance/pangle/f/a/f;

.field private final l:Lcom/bytedance/pangle/f/a/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/pangle/f/a/a;->j:Z

    new-instance v1, Lcom/bytedance/pangle/f/a/c;

    invoke-direct {v1}, Lcom/bytedance/pangle/f/a/c;-><init>()V

    iput-object v1, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->h:I

    invoke-direct {p0}, Lcom/bytedance/pangle/f/a/a;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    return-void
.end method

.method private e(I)I
    .locals 3

    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    mul-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid attribute index ("

    const-string v2, ")."

    invoke-static {p1, v1, v2}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Current event is not START_TAG."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/pangle/f/a/a;->e(I)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->k:Lcom/bytedance/pangle/f/a/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/f/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/pangle/f/a/a;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/pangle/f/a/a;->j:Z

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    iget-object v2, v1, Lcom/bytedance/pangle/f/a/b;->a:Ljava/io/InputStream;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1, v3}, Lcom/bytedance/pangle/f/a/b;->a(Ljava/io/InputStream;)V

    :cond_0
    iput-object v3, p0, Lcom/bytedance/pangle/f/a/a;->k:Lcom/bytedance/pangle/f/a/f;

    iput-object v3, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    iput v0, v1, Lcom/bytedance/pangle/f/a/c;->b:I

    iput v0, v1, Lcom/bytedance/pangle/f/a/c;->c:I

    invoke-direct {p0}, Lcom/bytedance/pangle/f/a/a;->c()V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->k:Lcom/bytedance/pangle/f/a/f;

    const/4 v2, 0x1

    if-nez v1, :cond_5

    const v1, 0x80003

    invoke-virtual {v0, v1}, Lcom/bytedance/pangle/f/a/b;->b(I)V

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->b()V

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    const v1, 0x1c0001

    invoke-virtual {v0, v1}, Lcom/bytedance/pangle/f/a/b;->b(I)V

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v6

    new-instance v7, Lcom/bytedance/pangle/f/a/f;

    invoke-direct {v7}, Lcom/bytedance/pangle/f/a/f;-><init>()V

    invoke-virtual {v0, v3}, Lcom/bytedance/pangle/f/a/b;->a(I)[I

    move-result-object v3

    iput-object v3, v7, Lcom/bytedance/pangle/f/a/f;->a:[I

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/f/a/b;->a(I)[I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_0
    if-nez v6, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    sub-int/2addr v3, v5

    rem-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_4

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Lcom/bytedance/pangle/f/a/b;->a(I)[I

    move-result-object v3

    iput-object v3, v7, Lcom/bytedance/pangle/f/a/f;->b:[I

    if-eqz v6, :cond_3

    sub-int/2addr v1, v6

    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_2

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/pangle/f/a/b;->a(I)[I

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    :goto_2
    iput-object v7, p0, Lcom/bytedance/pangle/f/a/a;->k:Lcom/bytedance/pangle/f/a/f;

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/c;->a()V

    iput-boolean v2, p0, Lcom/bytedance/pangle/f/a/a;->j:Z

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5
    :goto_3
    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    iget v1, p0, Lcom/bytedance/pangle/f/a/a;->e:I

    if-eq v0, v1, :cond_16

    invoke-direct {p0}, Lcom/bytedance/pangle/f/a/a;->c()V

    :cond_6
    :goto_4
    iget-boolean v1, p0, Lcom/bytedance/pangle/f/a/a;->i:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iput-boolean v3, p0, Lcom/bytedance/pangle/f/a/a;->i:Z

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    iget v4, v1, Lcom/bytedance/pangle/f/a/c;->b:I

    if-eqz v4, :cond_7

    add-int/lit8 v5, v4, -0x1

    iget-object v6, v1, Lcom/bytedance/pangle/f/a/c;->a:[I

    aget v5, v6, v5

    add-int/lit8 v6, v4, -0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v6, v5

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/bytedance/pangle/f/a/c;->b:I

    iget v4, v1, Lcom/bytedance/pangle/f/a/c;->c:I

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/bytedance/pangle/f/a/c;->c:I

    :cond_7
    iget v1, p0, Lcom/bytedance/pangle/f/a/a;->g:I

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    iget v4, v1, Lcom/bytedance/pangle/f/a/c;->c:I

    if-ne v4, v2, :cond_9

    iget v4, v1, Lcom/bytedance/pangle/f/a/c;->b:I

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, -0x1

    iget-object v1, v1, Lcom/bytedance/pangle/f/a/c;->a:[I

    aget v3, v1, v4

    :goto_5
    if-nez v3, :cond_9

    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->e:I

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    goto/16 :goto_9

    :cond_9
    iget v1, p0, Lcom/bytedance/pangle/f/a/a;->d:I

    const v3, 0x100102

    if-ne v0, v1, :cond_a

    const v1, 0x100102

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v1}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const v4, 0x80180

    const-string v5, ")."

    if-ne v1, v4, :cond_c

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v1}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_b

    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v1}, Lcom/bytedance/pangle/f/a/b;->a(I)[I

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid resource ids size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const v4, 0x100100

    if-lt v1, v4, :cond_15

    const v6, 0x100104

    if-gt v1, v6, :cond_15

    if-ne v1, v3, :cond_d

    const/4 v5, -0x1

    if-ne v0, v5, :cond_d

    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->d:I

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    goto/16 :goto_9

    :cond_d
    iget-object v5, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/b;->b()V

    iget-object v5, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/b;->a()I

    iget-object v5, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/b;->b()V

    if-eq v1, v4, :cond_12

    const v5, 0x100101

    if-ne v1, v5, :cond_e

    goto :goto_8

    :cond_e
    if-ne v1, v3, :cond_10

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->b()V

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v1}, Lcom/bytedance/pangle/f/a/b;->a()I

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/f/a/b;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    const/4 v0, 0x3

    :goto_7
    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x18

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/c;->a()V

    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->f:I

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    goto/16 :goto_9

    :cond_10
    const v3, 0x100103

    if-ne v1, v3, :cond_11

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->g:I

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    iput-boolean v2, p0, Lcom/bytedance/pangle/f/a/a;->i:Z

    goto/16 :goto_9

    :cond_11
    if-ne v1, v6, :cond_6

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->a()I

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->b()V

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/f/a/b;->b()V

    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->h:I

    iput v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    goto/16 :goto_9

    :cond_12
    :goto_8
    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v1}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v3}, Lcom/bytedance/pangle/f/a/b;->a()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    iget v5, v4, Lcom/bytedance/pangle/f/a/c;->c:I

    if-nez v5, :cond_13

    invoke-virtual {v4}, Lcom/bytedance/pangle/f/a/c;->a()V

    :cond_13
    invoke-virtual {v4}, Lcom/bytedance/pangle/f/a/c;->b()V

    iget v5, v4, Lcom/bytedance/pangle/f/a/c;->b:I

    add-int/lit8 v6, v5, -0x1

    iget-object v7, v4, Lcom/bytedance/pangle/f/a/c;->a:[I

    aget v8, v7, v6

    add-int/lit8 v9, v5, -0x2

    mul-int/lit8 v10, v8, 0x2

    sub-int/2addr v9, v10

    add-int/2addr v8, v2

    aput v8, v7, v9

    aput v1, v7, v6

    aput v3, v7, v5

    add-int/lit8 v1, v5, 0x1

    aput v8, v7, v1

    add-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/bytedance/pangle/f/a/c;->b:I

    goto/16 :goto_4

    :cond_14
    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v1}, Lcom/bytedance/pangle/f/a/b;->b()V

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    invoke-virtual {v1}, Lcom/bytedance/pangle/f/a/b;->b()V

    iget-object v1, p0, Lcom/bytedance/pangle/f/a/a;->l:Lcom/bytedance/pangle/f/a/c;

    iget v3, v1, Lcom/bytedance/pangle/f/a/c;->b:I

    if-eqz v3, :cond_6

    add-int/lit8 v4, v3, -0x1

    iget-object v5, v1, Lcom/bytedance/pangle/f/a/c;->a:[I

    aget v4, v5, v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v6, v3, -0x3

    aput v4, v5, v6

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v2

    sub-int/2addr v6, v7

    aput v4, v5, v6

    add-int/lit8 v3, v3, -0x2

    iput v3, v1, Lcom/bytedance/pangle/f/a/c;->b:I

    goto/16 :goto_4

    :cond_15
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid chunk type ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_9
    iget v0, p0, Lcom/bytedance/pangle/f/a/a;->a:I

    return v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parser is not opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_a
    invoke-virtual {p0}, Lcom/bytedance/pangle/f/a/a;->a()V

    throw v0
.end method

.method public final b(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/pangle/f/a/a;->e(I)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public final c(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/pangle/f/a/a;->e(I)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    return p1
.end method

.method public final d(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/bytedance/pangle/f/a/a;->e(I)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->c:[I

    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    iget-object v0, p0, Lcom/bytedance/pangle/f/a/a;->k:Lcom/bytedance/pangle/f/a/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/f/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
