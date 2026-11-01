.class public abstract Lg/bpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final c:Ljava/lang/CharSequence;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lg/bpu;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lg/bpu;->d:I

    const v0, 0x7fffffff

    iput v0, p0, Lg/bpu;->e:I

    iput-object p1, p0, Lg/bpu;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method

.method public final hasNext()Z
    .locals 9

    iget v0, p0, Lg/bpu;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwq;->zzk(Z)V

    iget v0, p0, Lg/bpu;->g:I

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    if-eqz v4, :cond_a

    const/4 v0, 0x2

    if-eq v4, v0, :cond_9

    iput v3, p0, Lg/bpu;->g:I

    iget v0, p0, Lg/bpu;->d:I

    :cond_1
    :goto_1
    iget v3, p0, Lg/bpu;->d:I

    const/4 v4, 0x3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    invoke-virtual {p0, v3}, Lg/bpu;->b(I)I

    move-result v3

    iget-object v7, p0, Lg/bpu;->c:Ljava/lang/CharSequence;

    if-ne v3, v6, :cond_2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v6, p0, Lg/bpu;->d:I

    const/4 v8, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lg/bpu;->a(I)I

    move-result v8

    iput v8, p0, Lg/bpu;->d:I

    :goto_2
    if-ne v8, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lg/bpu;->d:I

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v8, v3, :cond_1

    iput v6, p0, Lg/bpu;->d:I

    goto :goto_1

    :cond_3
    if-ge v0, v3, :cond_4

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_4
    if-ge v0, v3, :cond_5

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_5
    iget v5, p0, Lg/bpu;->e:I

    if-ne v5, v2, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v6, p0, Lg/bpu;->d:I

    if-le v3, v0, :cond_7

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_3

    :cond_6
    add-int/2addr v5, v6

    iput v5, p0, Lg/bpu;->e:I

    :cond_7
    :goto_3
    invoke-interface {v7, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_8
    iput v4, p0, Lg/bpu;->g:I

    :goto_4
    iput-object v5, p0, Lg/bpu;->f:Ljava/lang/String;

    iget v0, p0, Lg/bpu;->g:I

    if-eq v0, v4, :cond_9

    iput v2, p0, Lg/bpu;->g:I

    return v2

    :cond_9
    return v1

    :cond_a
    return v2

    :cond_b
    throw v5
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lg/bpu;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lg/bpu;->g:I

    iget-object v0, p0, Lg/bpu;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lg/bpu;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
