.class public final Lg/cvs;
.super Lg/dzw;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Integer;

.field public f:I

.field public g:Z

.field public h:I

.field public i:I


# virtual methods
.method public final j()V
    .locals 2

    invoke-super {p0}, Lg/dzw;->j()V

    iget v0, p0, Lg/cvs;->i:I

    if-ltz v0, :cond_5

    iget v0, p0, Lg/cvs;->a:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lg/dzw;->aa()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lg/cvs;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/cvs;->k()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lg/dzw;->v:I

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lg/dzw;->r:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contiguous indeterminate animation must be used with 3 or more indicator colors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rounded corners without gap are not supported in contiguous indeterminate animation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stop indicator size must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()I
    .locals 2

    iget-boolean v0, p0, Lg/cvs;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/dzw;->aa()I

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lg/cvs;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lg/dzw;->s:I

    int-to-float v0, v0

    iget v1, p0, Lg/cvs;->b:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_1
    iget v0, p0, Lg/cvs;->h:I

    return v0
.end method

.method public final l()Z
    .locals 2

    invoke-super {p0}, Lg/dzw;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/cvs;->k()I

    move-result v0

    invoke-virtual {p0}, Lg/dzw;->aa()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
