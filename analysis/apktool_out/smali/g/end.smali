.class public final Lg/end;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z


# virtual methods
.method public final i(II)V
    .locals 2

    iput p1, p0, Lg/end;->g:I

    iput p2, p0, Lg/end;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/end;->a:Z

    iget-boolean v0, p0, Lg/end;->h:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    iput p2, p0, Lg/end;->d:I

    :cond_0
    if-eq p1, v1, :cond_3

    iput p1, p0, Lg/end;->f:I

    return-void

    :cond_1
    if-eq p1, v1, :cond_2

    iput p1, p0, Lg/end;->d:I

    :cond_2
    if-eq p2, v1, :cond_3

    iput p2, p0, Lg/end;->f:I

    :cond_3
    return-void
.end method
