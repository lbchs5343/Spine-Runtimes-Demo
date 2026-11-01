.class public final Lcom/bytedance/pangle/res/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/res/a/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lcom/bytedance/pangle/res/a/g;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field private final i:Lcom/bytedance/pangle/res/a/h;

.field private final j:[B

.field private k:Z

.field private l:[I

.field private final m:Lcom/bytedance/pangle/res/a/b$a;

.field private n:Z

.field private o:I

.field private p:[I

.field private q:I


# direct methods
.method public constructor <init>([BLcom/bytedance/pangle/res/a/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/res/a/b;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->b:Z

    iput-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->k:Z

    new-instance v1, Lcom/bytedance/pangle/res/a/b$a;

    invoke-direct {v1}, Lcom/bytedance/pangle/res/a/b$a;-><init>()V

    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->h:I

    iput-object p2, p0, Lcom/bytedance/pangle/res/a/b;->i:Lcom/bytedance/pangle/res/a/h;

    iput-object p1, p0, Lcom/bytedance/pangle/res/a/b;->j:[B

    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->p:[I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->q:I

    return-void
.end method

.method private d()V
    .locals 15

    iget-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->k:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v0

    const v6, 0x80003

    if-eq v0, v6, :cond_1

    const v7, 0x80001

    if-ne v0, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v2

    aput-object v7, v1, v5

    aput-object v0, v1, v3

    const-string v0, "Expected: 0x%08x or 0x%08x, got: 0x%08x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-static {v0}, Lcom/bytedance/pangle/res/a/l;->a(Lcom/bytedance/pangle/res/a/g;)V

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/b$a;->a()V

    iput-boolean v5, p0, Lcom/bytedance/pangle/res/a/b;->k:Z

    :cond_2
    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    iget v6, p0, Lcom/bytedance/pangle/res/a/b;->e:I

    if-ne v0, v6, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->c()V

    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/bytedance/pangle/res/a/b;->n:Z

    if-eqz v6, :cond_5

    iput-boolean v2, p0, Lcom/bytedance/pangle/res/a/b;->n:Z

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    if-eqz v7, :cond_5

    add-int/lit8 v8, v7, -0x1

    iget-object v9, v6, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v8, v9, v8

    add-int/lit8 v9, v7, -0x2

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v9, v8

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->c:I

    sub-int/2addr v7, v5

    iput v7, v6, Lcom/bytedance/pangle/res/a/b$a;->c:I

    :cond_5
    iget v6, p0, Lcom/bytedance/pangle/res/a/b;->g:I

    if-ne v0, v6, :cond_7

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->c:I

    if-ne v7, v5, :cond_7

    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    if-nez v7, :cond_6

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, -0x1

    iget-object v6, v6, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v6, v6, v7

    :goto_2
    if-nez v6, :cond_7

    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->e:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    return-void

    :cond_7
    iget v6, p0, Lcom/bytedance/pangle/res/a/b;->d:I

    const v7, 0x100102

    if-ne v0, v6, :cond_8

    const v6, 0x100102

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v6

    :goto_3
    const v8, 0x80180

    const-string v9, ")."

    if-ne v6, v8, :cond_c

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v6

    const/16 v7, 0x8

    if-lt v6, v7, :cond_b

    rem-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-static {v7}, Lcom/bytedance/pangle/res/a/k;->a(Lcom/bytedance/pangle/res/a/g;)I

    move-result v7

    iget-object v8, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v6, v3

    invoke-virtual {v8, v6}, Lcom/bytedance/pangle/res/a/g;->a(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/pangle/res/a/b;->l:[I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_4
    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->l:[I

    array-length v10, v9

    if-ge v8, v10, :cond_a

    iget-object v10, p0, Lcom/bytedance/pangle/res/a/b;->j:[B

    aget v9, v9, v8

    mul-int/lit8 v11, v8, 0x4

    add-int/2addr v11, v7

    iget-object v12, p0, Lcom/bytedance/pangle/res/a/b;->i:Lcom/bytedance/pangle/res/a/h;

    invoke-static {v10, v9, v11, v12}, Lcom/bytedance/pangle/res/a/k;->a([BIILcom/bytedance/pangle/res/a/h;)I

    move-result v9

    const/high16 v10, 0x7f000000

    if-lt v9, v10, :cond_9

    iget-object v10, p0, Lcom/bytedance/pangle/res/a/b;->a:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iput-boolean v5, p0, Lcom/bytedance/pangle/res/a/b;->b:Z

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid resource ids size ("

    invoke-static {v6, v1, v9}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const v8, 0x100100

    if-lt v6, v8, :cond_1b

    const v10, 0x100104

    if-gt v6, v10, :cond_1b

    if-ne v6, v7, :cond_d

    const/4 v9, -0x1

    if-ne v0, v9, :cond_d

    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->d:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    return-void

    :cond_d
    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v9, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v9}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v9, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    if-eq v6, v8, :cond_18

    const v9, 0x100101

    if-ne v6, v9, :cond_e

    goto/16 :goto_7

    :cond_e
    if-ne v6, v7, :cond_16

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v0

    const v6, 0xffff

    and-int/2addr v0, v6

    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v7}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v7

    and-int/2addr v6, v7

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/bytedance/pangle/res/a/b;->q:I

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-static {v6}, Lcom/bytedance/pangle/res/a/k;->a(Lcom/bytedance/pangle/res/a/g;)I

    move-result v6

    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    mul-int/lit8 v8, v0, 0x5

    invoke-virtual {v7, v8}, Lcom/bytedance/pangle/res/a/g;->a(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/pangle/res/a/b;->p:[I

    :goto_5
    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->p:[I

    array-length v9, v7

    if-ge v1, v9, :cond_f

    aget v9, v7, v1

    ushr-int/lit8 v9, v9, 0x18

    aput v9, v7, v1

    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    :cond_f
    array-length v1, v7

    if-ne v1, v8, :cond_15

    const/4 v1, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->p:[I

    mul-int/lit8 v8, v2, 0x5

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v9

    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v1, 0x1

    :cond_10
    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->p:[I

    add-int/lit8 v9, v8, 0x3

    aget v9, v7, v9

    if-eq v9, v5, :cond_11

    if-ne v9, v3, :cond_12

    :cond_11
    add-int/lit8 v8, v8, 0x4

    aget v7, v7, v8

    iget-object v9, p0, Lcom/bytedance/pangle/res/a/b;->j:[B

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v6

    iget-object v10, p0, Lcom/bytedance/pangle/res/a/b;->i:Lcom/bytedance/pangle/res/a/h;

    invoke-static {v9, v7, v8, v10}, Lcom/bytedance/pangle/res/a/k;->a([BIILcom/bytedance/pangle/res/a/h;)I

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/bytedance/pangle/res/a/b;->b:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bytedance/pangle/res/a/b;->j:[B

    iget-object v2, p0, Lcom/bytedance/pangle/res/a/b;->p:[I

    iget-object v3, p0, Lcom/bytedance/pangle/res/a/b;->a:Ljava/util/HashMap;

    invoke-static {v6, v1, v2, v0, v3}, Lcom/bytedance/pangle/res/a/k;->a(I[B[IILjava/util/HashMap;)V

    :cond_14
    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/b$a;->a()V

    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->f:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    return-void

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    const v7, 0x100103

    if-ne v6, v7, :cond_17

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->g:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    iput-boolean v5, p0, Lcom/bytedance/pangle/res/a/b;->n:Z

    return-void

    :cond_17
    if-ne v6, v10, :cond_4

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->h:I

    iput v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I

    return-void

    :cond_18
    :goto_7
    if-ne v6, v8, :cond_1a

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v6

    iget-object v7, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v7}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v7

    iget-object v8, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    iget v9, v8, Lcom/bytedance/pangle/res/a/b$a;->c:I

    if-nez v9, :cond_19

    invoke-virtual {v8}, Lcom/bytedance/pangle/res/a/b$a;->a()V

    :cond_19
    invoke-virtual {v8}, Lcom/bytedance/pangle/res/a/b$a;->b()V

    iget v9, v8, Lcom/bytedance/pangle/res/a/b$a;->b:I

    add-int/lit8 v10, v9, -0x1

    iget-object v11, v8, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v12, v11, v10

    add-int/lit8 v13, v9, -0x2

    mul-int/lit8 v14, v12, 0x2

    sub-int/2addr v13, v14

    add-int/2addr v12, v5

    aput v12, v11, v13

    aput v6, v11, v10

    aput v7, v11, v9

    add-int/lit8 v6, v9, 0x1

    aput v12, v11, v6

    add-int/2addr v9, v3

    iput v9, v8, Lcom/bytedance/pangle/res/a/b$a;->b:I

    goto/16 :goto_1

    :cond_1a
    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    invoke-virtual {v6, v4}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    iget-object v6, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    iget v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    if-eqz v7, :cond_4

    add-int/lit8 v8, v7, -0x1

    iget-object v9, v6, Lcom/bytedance/pangle/res/a/b$a;->a:[I

    aget v8, v9, v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v10, v7, -0x3

    aput v8, v9, v10

    mul-int/lit8 v11, v8, 0x2

    add-int/2addr v11, v5

    sub-int/2addr v10, v11

    aput v8, v9, v10

    add-int/lit8 v7, v7, -0x2

    iput v7, v6, Lcom/bytedance/pangle/res/a/b$a;->b:I

    goto/16 :goto_1

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid chunk type ("

    invoke-static {v6, v1, v9}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/pangle/res/a/b;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    iput-object v1, p0, Lcom/bytedance/pangle/res/a/b;->l:[I

    iget-object v1, p0, Lcom/bytedance/pangle/res/a/b;->m:Lcom/bytedance/pangle/res/a/b$a;

    iput v0, v1, Lcom/bytedance/pangle/res/a/b$a;->b:I

    iput v0, v1, Lcom/bytedance/pangle/res/a/b$a;->c:I

    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->c()V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/pangle/res/a/b;->c:Lcom/bytedance/pangle/res/a/g;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/pangle/res/a/b;->d()V

    iget v0, p0, Lcom/bytedance/pangle/res/a/b;->o:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/b;->a()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parser is not opened."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
