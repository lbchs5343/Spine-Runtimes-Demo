.class public final Lg/fvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lg/cno;

.field public final b:I


# direct methods
.method public constructor <init>(Lg/cno;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fvk;->a:Lg/cno;

    iput p2, p0, Lg/fvk;->b:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lg/fvk;

    iget v0, p0, Lg/fvk;->b:I

    iget v1, p1, Lg/fvk;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/fvk;->a:Lg/cno;

    iget-object v0, v0, Lg/cno;->e:Lg/cci;

    iget-object p1, p1, Lg/fvk;->a:Lg/cno;

    iget-object p1, p1, Lg/cno;->e:Lg/cci;

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    iget-object p1, p1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0, p1}, Lg/ve;->p(Lg/ve;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/fvk;->a:Lg/cno;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/fvk;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
