.class public final Lg/fkg;
.super Lg/bvw;
.source "SourceFile"


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"NetworkMeteredCtrlr\")"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lg/cmh;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg/bvw;-><init>(Lg/cmh;)V

    const/4 p1, 0x7

    iput p1, p0, Lg/fkg;->g:I

    return-void
.end method


# virtual methods
.method public final b(Lg/fkj;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/fkj;->r:Lg/bho;

    iget-object p1, p1, Lg/bho;->e:Lg/dnx;

    sget-object v0, Lg/dnx;->METERED:Lg/dnx;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lg/fkg;->g:I

    return v0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lg/dod;

    const-string v0, "value"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lg/dod;->b:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lg/dod;->d:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
