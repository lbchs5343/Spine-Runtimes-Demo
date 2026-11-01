.class public abstract Lg/aiq;
.super Lg/af;
.source "SourceFile"


# instance fields
.field public l:Z


# direct methods
.method public constructor <init>(Lg/bsz;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/af;-><init>(Lg/bsz;)V

    iget-object p1, p0, Lg/af;->a:Lg/bsz;

    iget v0, p1, Lg/bsz;->ad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lg/bsz;->ad:I

    return-void
.end method


# virtual methods
.method public abstract i()V
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Lg/aiq;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/aiq;->i()V

    iget-object v0, p0, Lg/af;->a:Lg/bsz;

    iget v1, v0, Lg/bsz;->t:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lg/bsz;->t:I

    iput-boolean v2, p0, Lg/aiq;->l:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()V
    .locals 2

    iget-boolean v0, p0, Lg/aiq;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
