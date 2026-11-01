.class public final Lg/fr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gmo;


# instance fields
.field public a:F

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/ghi;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fr;->b:Ljava/lang/Object;

    iput p2, p0, Lg/fr;->a:F

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lg/fr;->a:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/flj;

    iput-object p1, p0, Lg/fr;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public _bu()F
    .locals 1

    iget-object v0, p0, Lg/fr;->b:Ljava/lang/Object;

    check-cast v0, Lg/flj;

    invoke-virtual {v0}, Lg/flj;->u()F

    move-result v0

    return v0
.end method

.method public d()Lg/flj;
    .locals 1

    iget-object v0, p0, Lg/fr;->b:Ljava/lang/Object;

    check-cast v0, Lg/flj;

    return-object v0
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dq(F)Z
    .locals 0

    iget-object p1, p0, Lg/fr;->b:Ljava/lang/Object;

    check-cast p1, Lg/flj;

    invoke-virtual {p1}, Lg/flj;->v()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(F)Z
    .locals 1

    iget v0, p0, Lg/fr;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iput p1, p0, Lg/fr;->a:F

    const/4 p1, 0x0

    return p1
.end method

.method public ox()F
    .locals 1

    iget-object v0, p0, Lg/fr;->b:Ljava/lang/Object;

    check-cast v0, Lg/flj;

    invoke-virtual {v0}, Lg/flj;->t()F

    move-result v0

    return v0
.end method
