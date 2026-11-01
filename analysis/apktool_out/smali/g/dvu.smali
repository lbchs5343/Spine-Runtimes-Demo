.class public final Lg/dvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:I

.field public d:I


# direct methods
.method public constructor <init>(Lg/aki;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/dvu;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dvu;->b:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Lg/dvu;->d:I

    invoke-virtual {p1}, Lg/aki;->g()I

    move-result p1

    iput p1, p0, Lg/dvu;->a:I

    return-void
.end method

.method public constructor <init>(Lg/cyb;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/dvu;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dvu;->b:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Lg/dvu;->d:I

    invoke-virtual {p1}, Lg/cyb;->c()I

    move-result p1

    iput p1, p0, Lg/dvu;->a:I

    return-void
.end method

.method public constructor <init>(Lg/dqh;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/dvu;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dvu;->b:Ljava/lang/Iterable;

    iget-object p1, p1, Lg/dqh;->a:[Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lg/dvu;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lg/dvu;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lg/dvu;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/dvu;->d:I

    iget v1, p0, Lg/dvu;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lg/dvu;->d:I

    iget v1, p0, Lg/dvu;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_1
    iget v0, p0, Lg/dvu;->a:I

    iget v1, p0, Lg/dvu;->d:I

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/dvu;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/dvu;->d:I

    iget v1, p0, Lg/dvu;->a:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/dvu;->d:I

    iget-object v1, p0, Lg/dvu;->b:Ljava/lang/Iterable;

    check-cast v1, Lg/cyb;

    invoke-virtual {v1, v0}, Lg/cyb;->b(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget v0, p0, Lg/dvu;->d:I

    iget v1, p0, Lg/dvu;->a:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/dvu;->d:I

    iget-object v1, p0, Lg/dvu;->b:Ljava/lang/Iterable;

    check-cast v1, Lg/aki;

    invoke-virtual {v1, v0}, Lg/aki;->f(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lg/dvu;->b:Ljava/lang/Iterable;

    check-cast v0, Lg/dqh;

    iget-object v0, v0, Lg/dqh;->a:[Ljava/lang/Object;

    iget v1, p0, Lg/dvu;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/dvu;->a:I

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 1

    iget v0, p0, Lg/dvu;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
