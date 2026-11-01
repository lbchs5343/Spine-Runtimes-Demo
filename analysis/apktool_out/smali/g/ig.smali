.class public final Lg/ig;
.super Lg/gbe;


# instance fields
.field public final synthetic a:Lg/ese;


# direct methods
.method public constructor <init>(Lg/ese;)V
    .locals 0

    iput-object p1, p0, Lg/ig;->a:Lg/ese;

    invoke-direct {p0}, Lg/gbe;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()F
    .locals 4

    iget-object v0, p0, Lg/ig;->a:Lg/ese;

    invoke-static {v0}, Lg/ese;->d(Lg/ese;)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Lg/ese;->d(Lg/ese;)F

    move-result v0

    div-float/2addr v3, v0

    return v3
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lg/ig;->a:Lg/ese;

    invoke-static {v0}, Lg/ese;->dq(Lg/ese;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, v0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d(Lg/bfa;I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lg/ig;->a:Lg/ese;

    invoke-static {v0}, Lg/ese;->dq(Lg/ese;)Z

    move-result v1

    iget-object v2, v0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p2, v2, v1}, Lg/acr;->be(IIZ)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lg/ese;->dq(II)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method
