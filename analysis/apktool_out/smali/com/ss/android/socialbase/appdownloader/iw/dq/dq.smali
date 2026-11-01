.class Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/iw/dq/kk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

.field private ia:I

.field private ig:[I

.field private iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

.field private jy:I

.field private kk:I

.field private mn:Z

.field private mp:I

.field private no:I

.field private o:I

.field private ox:Z

.field private p:Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

.field private q:I

.field private s:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ox:Z

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mn()V

    return-void
.end method

.method private final ia()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->p:Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    const v2, 0x80003

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/d;->dq(Lcom/ss/android/socialbase/appdownloader/iw/dq/p;I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->dq(Lcom/ss/android/socialbase/appdownloader/iw/dq/p;)Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->p:Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->s()V

    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ox:Z

    :cond_0
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    if-eq v0, v1, :cond_f

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mn()V

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mn:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mn:Z

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->iw()V

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->p()I

    move-result v4

    if-ne v4, v1, :cond_3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->d()I

    move-result v4

    if-nez v4, :cond_3

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    return-void

    :cond_3
    const v4, 0x100102

    if-nez v0, :cond_4

    const v5, 0x100102

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v5

    :goto_1
    const v6, 0x80180

    const-string v7, ")."

    const/4 v8, 0x2

    if-ne v5, v6, :cond_6

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_5

    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v8

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->s:[I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid resource ids size ("

    invoke-static {v2, v1, v7}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const v6, 0x100100

    if-lt v5, v6, :cond_e

    const v9, 0x100104

    if-gt v5, v9, :cond_e

    if-ne v5, v4, :cond_7

    const/4 v7, -0x1

    if-ne v0, v7, :cond_7

    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    return-void

    :cond_7
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v3

    iget-object v7, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    if-eq v5, v6, :cond_c

    const v7, 0x100101

    if-ne v5, v7, :cond_8

    goto/16 :goto_3

    :cond_8
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->kk:I

    if-ne v5, v4, :cond_a

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->no:I

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->o:I

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v0

    ushr-int/lit8 v3, v0, 0x10

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mp:I

    const v3, 0xffff

    and-int/2addr v0, v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v4

    ushr-int/lit8 v5, v4, 0x10

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->jy:I

    and-int/2addr v3, v4

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->q:I

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    array-length v1, v0

    if-ge v2, v1, :cond_9

    aget v1, v0, v2

    ushr-int/lit8 v1, v1, 0x18

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x5

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->s()V

    iput v8, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    return-void

    :cond_a
    const v3, 0x100103

    if-ne v5, v3, :cond_b

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->no:I

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->o:I

    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mn:Z

    return-void

    :cond_b
    if-ne v5, v9, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->o:I

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    return-void

    :cond_c
    :goto_3
    if-ne v5, v6, :cond_d

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->d()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v4, v2, v3}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->dq(II)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->ox()V

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->ox()Z

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid chunk type ("

    invoke-static {v5, v1, v7}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method private final mn()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->kk:I

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->o:I

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->no:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mp:I

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->q:I

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->jy:I

    return-void
.end method

.method private final s(I)I
    .locals 3

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    mul-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

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
.method public d()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/appdownloader/iw/dq/ia;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia()V

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->dq()V

    throw v0

    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/iw/dq/ia;

    const-string v1, "Parser is not opened."

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/ss/android/socialbase/appdownloader/iw/dq/ia;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/iw/dq/mn;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->s(I)I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public dq(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->s(I)I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->p:Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ox:Z

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;->dq()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->p:Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->s:[I

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->iw:Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq$dq;->dq()V

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->mn()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->dq()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/p;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->d:Lcom/ss/android/socialbase/appdownloader/iw/dq/p;

    :cond_0
    return-void
.end method

.method public iw()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->kk:I

    return v0
.end method

.method public ox(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->s(I)I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    return p1
.end method

.method public p()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XML line #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ox()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->s(I)I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->p:Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/iw/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public s()I
    .locals 2

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ia:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/iw/dq/dq;->ig:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method
