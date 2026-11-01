.class public final Lg/hbb;
.super Lg/ccm;
.source "SourceFile"

# interfaces
.implements Lg/awj;
.implements Lg/cfr;
.implements Ljava/lang/Comparable;


# instance fields
.field public final c:Lg/gxr;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lg/dwg;

.field public final f:Lg/gxr;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/dwg;Lg/hbb;Lg/gxr;)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lg/hbb;->g:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lg/hbb;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/hbb;->e:Lg/dwg;

    iput-object p3, p0, Lg/hbb;->f:Lg/gxr;

    iput-object p3, p0, Lg/hbb;->c:Lg/gxr;

    return-void
.end method

.method public static h(Lg/dwg;Ljava/lang/String;)Lg/hbb;
    .locals 2

    iget-object v0, p0, Lg/dwg;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lg/gxr;->d(Lg/dwg;Ljava/lang/String;)Lg/gxr;

    move-result-object p1

    iget-object v0, p1, Lg/gxr;->a:Lg/gxr;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/gxr;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lg/hbb;->h(Lg/dwg;Ljava/lang/String;)Lg/hbb;

    move-result-object v0

    :goto_0
    new-instance v1, Lg/hbb;

    invoke-direct {v1, p0, v0, p1}, Lg/hbb;-><init>(Lg/dwg;Lg/hbb;Lg/gxr;)V

    if-eqz v0, :cond_2

    iget-object p1, v0, Lg/hbb;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lg/dwg;->d:Ljava/util/HashMap;

    iget-object v0, v1, Lg/hbb;->f:Lg/gxr;

    iget-object v0, v0, Lg/gxr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lg/dwg;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public final _by()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final a()Lg/dwg;
    .locals 1

    iget-object v0, p0, Lg/hbb;->e:Lg/dwg;

    return-object v0
.end method

.method public final b()Lg/pk;
    .locals 1

    sget-object v0, Lg/pk;->PKG:Lg/pk;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/hbb;

    iget-object v0, p0, Lg/hbb;->f:Lg/gxr;

    iget-object v0, v0, Lg/gxr;->b:Ljava/lang/String;

    iget-object p1, p1, Lg/hbb;->f:Lg/gxr;

    iget-object p1, p1, Lg/gxr;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/hbb;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lg/hbb;

    iget-object p1, p1, Lg/hbb;->f:Lg/gxr;

    iget-object v0, p0, Lg/hbb;->f:Lg/gxr;

    invoke-virtual {v0, p1}, Lg/gxr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/hbb;->f:Lg/gxr;

    iget-object v0, v0, Lg/gxr;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/hbb;->f:Lg/gxr;

    iget-object v0, v0, Lg/gxr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final typeName()Ljava/lang/String;
    .locals 1

    const-string v0, "package"

    return-object v0
.end method
