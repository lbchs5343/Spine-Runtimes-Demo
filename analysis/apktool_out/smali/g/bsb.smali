.class public final Lg/bsb;
.super Lg/cav;


# direct methods
.method public static a(Lg/flj;F)F
    .locals 3

    iget-object v0, p0, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lg/flj;->r:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget v1, p0, Lg/flj;->o:F

    const v2, -0x358c9d09

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lg/flj;->o:F

    :cond_0
    iget v0, p0, Lg/flj;->o:F

    iget v1, p0, Lg/flj;->q:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/flj;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lg/flj;->q:F

    :cond_1
    iget p0, p0, Lg/flj;->q:F

    invoke-static {v0, p0, p1}, Lg/din;->d(FFF)F

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lg/flj;F)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lg/bsb;->a(Lg/flj;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final c()F
    .locals 2

    invoke-virtual {p0}, Lg/cej;->n()Lg/flj;

    move-result-object v0

    invoke-virtual {p0}, Lg/cej;->k()F

    move-result v1

    invoke-static {v0, v1}, Lg/bsb;->a(Lg/flj;F)F

    move-result v0

    return v0
.end method
