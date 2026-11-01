.class public abstract Lg/bkw;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public am:Z


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/bgf;-><init>(Lg/cyg;)V

    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget v0, p1, Lg/cyg;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lg/cyg;->s:I

    return-void
.end method


# virtual methods
.method public final an()V
    .locals 2

    iget-boolean v0, p0, Lg/bkw;->am:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ao()V
    .locals 2

    iget-boolean v0, p0, Lg/bkw;->am:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/bkw;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->aq()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bkw;->am:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract n()Z
.end method
