.class public final Lg/ccg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/dzu;

.field public final b:Lg/cqg;


# direct methods
.method public synthetic constructor <init>(Lg/dzu;Lg/cqg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ccg;->a:Lg/dzu;

    iput-object p2, p0, Lg/ccg;->b:Lg/cqg;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lg/ccg;

    if-eqz v1, :cond_0

    check-cast p1, Lg/ccg;

    iget-object v1, p0, Lg/ccg;->a:Lg/dzu;

    iget-object v2, p1, Lg/ccg;->a:Lg/dzu;

    invoke-static {v1, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/ccg;->b:Lg/cqg;

    iget-object p1, p1, Lg/ccg;->b:Lg/cqg;

    invoke-static {v1, p1}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lg/ccg;->a:Lg/dzu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lg/ccg;->b:Lg/cqg;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lg/ffr;

    invoke-direct {v0, p0}, Lg/ffr;-><init>(Ljava/lang/Object;)V

    const-string v1, "key"

    iget-object v2, p0, Lg/ccg;->a:Lg/dzu;

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feature"

    iget-object v2, p0, Lg/ccg;->b:Lg/cqg;

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/ffr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
