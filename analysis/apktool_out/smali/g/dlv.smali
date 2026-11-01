.class public abstract Lg/dlv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lg/eun;
.implements Lg/dvh;
.implements Lg/eho;


# instance fields
.field private a:Z

.field private ae:Lg/dbw;

.field private ah:Lg/cdb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected b:Lg/f;

.field protected bf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lg/fzc;",
            ">;"
        }
    .end annotation
.end field

.field protected bl:F

.field private bn:Z

.field protected bu:F

.field protected bx:Lg/coy;

.field protected by:F

.field protected c:Z

.field protected cc:F

.field protected cd:F

.field protected ce:Z

.field protected cv:F

.field private d:Z

.field protected dc:I

.field private dk:Z

.field private dq:Z

.field protected ds:Z

.field protected e:Z

.field private en:Z

.field protected er:Z

.field protected f:F

.field protected fd:I

.field private fp:Z

.field private fq:Z

.field protected fw:F

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field protected gh:F

.field private gl:F

.field protected gx:F

.field protected h:Z

.field protected ha:Z

.field protected hf:F

.field private hy:Lg/bye;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected i:F

.field protected ia:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/View;"
        }
    .end annotation
.end field

.field protected ig:Lg/dmm;

.field protected ij:Landroid/view/ViewGroup$LayoutParams;

.field protected io:F

.field private ip:Lg/dhi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected ir:F

.field protected iw:Lorg/json/JSONObject;

.field protected j:I

.field protected ji:Z

.field private jn:Lg/gjp;

.field protected jo:F

.field private jv:Lg/gii;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected jw:Ljava/lang/String;

.field protected jy:Ljava/lang/String;

.field protected k:F

.field protected kk:Lg/eyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/eyh;"
        }
    .end annotation
.end field

.field protected kx:Z

.field protected l:Z

.field protected le:F

.field private lk:Lg/gsa;

.field protected m:F

.field protected mc:F

.field protected mn:Lorg/json/JSONObject;

.field protected mp:Z

.field protected n:F

.field protected nh:Ljava/lang/String;

.field protected no:Lg/abm;

.field private nt:Z

.field private ny:Z

.field protected o:Lg/eyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/eyh;"
        }
    .end annotation
.end field

.field protected ob:F

.field private oh:Z

.field protected op:F

.field private ox:Z

.field private p:Z

.field protected pa:F

.field private py:Lg/dsk;

.field protected q:Ljava/lang/String;

.field private qz:Z

.field protected r:F

.field private rp:Z

.field protected s:Landroid/content/Context;

.field private sc:Lg/sh;

.field private sy:Z

.field protected t:Z

.field protected tl:Lg/cyx;

.field private tv:Z

.field protected u:F

.field protected uh:F

.field private ux:Lorg/json/JSONObject;

.field protected v:Z

.field protected vf:Landroid/widget/ImageView$ScaleType;

.field protected vw:Z

.field private w:Ljava/lang/String;

.field protected wi:F

.field protected wn:Z

.field protected wp:F

.field private wq:Z

.field protected ws:Z

.field protected x:Z

.field protected xi:Lg/gse;

.field protected xj:Lg/ahr;

.field protected xv:F

.field private xx:Lg/fwp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected xz:F

.field private y:Z

.field protected yo:F

.field protected yy:F

.field protected z:F

.field private zi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, -0x40000000    # -2.0f

    iput p2, p0, Lg/dlv;->f:F

    iput p2, p0, Lg/dlv;->fw:F

    const-string p2, "solid"

    iput-object p2, p0, Lg/dlv;->jw:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lg/dlv;->fd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dlv;->ws:Z

    const/4 v1, 0x0

    iput v1, p0, Lg/dlv;->z:F

    iput v1, p0, Lg/dlv;->pa:F

    iput v1, p0, Lg/dlv;->io:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lg/dlv;->m:F

    iput v2, p0, Lg/dlv;->xv:F

    iput v2, p0, Lg/dlv;->wi:F

    iput v1, p0, Lg/dlv;->cc:F

    iput v1, p0, Lg/dlv;->mc:F

    iput v1, p0, Lg/dlv;->jo:F

    iput v1, p0, Lg/dlv;->yo:F

    iput v2, p0, Lg/dlv;->hf:F

    iput-boolean v0, p0, Lg/dlv;->dk:Z

    iput-boolean v0, p0, Lg/dlv;->oh:Z

    iput-boolean p2, p0, Lg/dlv;->en:Z

    iput-boolean p2, p0, Lg/dlv;->qz:Z

    const/high16 p2, 0x41400000    # 12.0f

    iput p2, p0, Lg/dlv;->gl:F

    iput-object p1, p0, Lg/dlv;->s:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/dlv;->kk:Lg/eyh;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/dlv;->bf:Ljava/util/Map;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lg/dlv;->ox()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    return-void
.end method

.method public static synthetic ox(Lg/dlv;)Z
    .locals 0

    iget-boolean p0, p0, Lg/dlv;->oh:Z

    return p0
.end method

.method public static synthetic p(Lg/dlv;)Lg/gii;
    .locals 0

    iget-object p0, p0, Lg/dlv;->jv:Lg/gii;

    return-object p0
.end method


# virtual methods
.method public final aj()V
    .locals 6

    iget-boolean v0, p0, Lg/dlv;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/dlv;->by:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/dlv;->gx:F

    :goto_0
    iget-boolean v1, p0, Lg/dlv;->ds:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lg/dlv;->xz:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lg/dlv;->gx:F

    :goto_1
    iget-boolean v2, p0, Lg/dlv;->vw:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lg/dlv;->uh:F

    goto :goto_2

    :cond_2
    iget v2, p0, Lg/dlv;->gx:F

    :goto_2
    iget-boolean v3, p0, Lg/dlv;->ha:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lg/dlv;->yy:F

    goto :goto_3

    :cond_3
    iget v3, p0, Lg/dlv;->gx:F

    :goto_3
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v0, 0x2

    aput v1, v4, v0

    const/4 v0, 0x3

    aput v1, v4, v0

    const/4 v0, 0x4

    aput v3, v4, v0

    const/4 v0, 0x5

    aput v3, v4, v0

    const/4 v0, 0x6

    aput v2, v4, v0

    const/4 v0, 0x7

    aput v2, v4, v0

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method

.method public final ak()V
    .locals 5

    const-string v0, "dashed"

    iget-object v1, p0, Lg/dlv;->jw:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lg/dlv;->cv:F

    float-to-int v2, v1

    iget v3, p0, Lg/dlv;->dc:I

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void

    :cond_0
    const-string v0, "dotted"

    iget-object v1, p0, Lg/dlv;->jw:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lg/dlv;->cv:F

    float-to-int v2, v1

    iget v3, p0, Lg/dlv;->dc:I

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void

    :cond_1
    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lg/dlv;->cv:F

    float-to-int v1, v1

    iget v2, p0, Lg/dlv;->dc:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

.method public bl()Lg/eyh;
    .locals 1

    iget-object v0, p0, Lg/dlv;->kk:Lg/eyh;

    return-object v0
.end method

.method public by()Z
    .locals 1

    iget-boolean v0, p0, Lg/dlv;->sy:Z

    return v0
.end method

.method public c()Lg/dmm;
    .locals 1

    iget-object v0, p0, Lg/dlv;->ig:Lg/dmm;

    return-object v0
.end method

.method public cd()F
    .locals 1

    iget v0, p0, Lg/dlv;->yo:F

    return v0
.end method

.method public ce()Z
    .locals 1

    iget-boolean v0, p0, Lg/dlv;->ws:Z

    return v0
.end method

.method public d(Lg/dlv;)Lg/dlv;
    .locals 1

    invoke-virtual {p1}, Lg/dlv;->bl()Lg/eyh;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lg/eyh;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lg/dlv;->bl()Lg/eyh;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lg/dlv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lg/dlv;"
        }
    .end annotation

    iget-object v0, p0, Lg/dlv;->jy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dlv;->jy:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lg/aau;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aau;

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lg/aau;->ox(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(IIII)V
    .locals 0

    iget-object p3, p0, Lg/dlv;->jn:Lg/gjp;

    if-eqz p3, :cond_0

    div-int/lit8 p4, p1, 0x2

    iput p4, p3, Lg/gjp;->a:I

    div-int/lit8 p4, p2, 0x2

    iput p4, p3, Lg/gjp;->b:I

    :cond_0
    iget-object p3, p0, Lg/dlv;->xi:Lg/gse;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lg/gse;->d:Lg/cw;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Lg/cw;->d(II)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lg/dlv;->bf:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lg/cvf;->b(Ljava/lang/String;)Lg/cvf;

    move-result-object p1

    invoke-virtual {p1}, Lg/cvf;->getType()I

    move-result p1

    new-instance v0, Lg/fzc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lg/fzc;->c:I

    iput-object p0, v0, Lg/fzc;->b:Lg/dlv;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const-string p2, "shakeAmplitude"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {p2, v2}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lg/dlv;->gl:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/high16 p2, 0x41400000    # 12.0f

    :try_start_2
    iput p2, p0, Lg/dlv;->gl:F

    :cond_1
    :goto_0
    iget-object p2, p0, Lg/dlv;->tl:Lg/cyx;

    instance-of v2, p2, Lg/cbh;

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, v1, v0}, Lg/dlv;->dq(ILorg/json/JSONObject;Lg/fzc;)V

    goto :goto_1

    :cond_2
    check-cast p2, Lg/cbh;

    iget-object p2, p2, Lg/cbh;->b:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string v2, "3"

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, p1, v1, v0}, Lg/dlv;->dq(ILorg/json/JSONObject;Lg/fzc;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    :goto_1
    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->iw:Lorg/json/JSONObject;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/dlv;->y:Z

    return-void
.end method

.method public dq(Ljava/lang/String;)Lg/dlv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lg/dlv;"
        }
    .end annotation

    iget-object v0, p0, Lg/dlv;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dlv;->q:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(IIII)V
    .locals 0

    iget-object p1, p0, Lg/dlv;->ae:Lg/dbw;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lg/dlv;->bn:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/dlv;->bn:Z

    :cond_0
    return-void
.end method

.method public dq(ILorg/json/JSONObject;Lg/fzc;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "success"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lg/fzc;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lg/fzc;->d:Lorg/json/JSONObject;

    iput-object p0, v1, Lg/fzc;->b:Lg/dlv;

    iput-object v1, p3, Lg/fzc;->a:Lg/fzc;

    :cond_0
    const-string v0, "fail"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iput-object p2, p3, Lg/fzc;->d:Lorg/json/JSONObject;

    iget-object p2, p0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lg/dlv;->xi:Lg/gse;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/gse;->d:Lg/cw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/cw;->e(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/graphics/Canvas;Lg/gsy;)V
    .locals 5

    iget-object v0, p0, Lg/dlv;->jn:Lg/gjp;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/gjp;->d:Landroid/graphics/Paint;

    :try_start_0
    invoke-interface {p2}, Lg/gsy;->getRipple()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Lg/gjp;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lg/gjp;->g:Ljava/lang/String;

    const/high16 v3, -0x1000000

    invoke-static {v2, v3}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lg/gjp;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget v2, v0, Lg/gjp;->a:I

    int-to-float v3, v2

    iget v0, v0, Lg/gjp;->b:I

    int-to-float v4, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-interface {p2}, Lg/gsy;->getRipple()F

    move-result p2

    mul-float v0, v0, p2

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public dq(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput-object p1, p0, Lg/dlv;->ij:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public dq(Lg/abm;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->no:Lg/abm;

    return-void
.end method

.method public dq(Lg/ahr;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->xj:Lg/ahr;

    return-void
.end method

.method public dq(Lg/coy;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p1, Lg/coy;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p1, Lg/coy;->b:[I

    iget-object p1, p1, Lg/coy;->c:[F

    invoke-static {v0, v1, p1}, Lg/aft;->x(Landroid/graphics/drawable/GradientDrawable;[I[F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object p1, p1, Lg/coy;->b:[I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :goto_0
    invoke-virtual {p0}, Lg/dlv;->aj()V

    invoke-virtual {p0}, Lg/dlv;->ak()V

    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public dq(Lg/cyx;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->tl:Lg/cyx;

    return-void
.end method

.method public dq(Lg/dbw;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->ae:Lg/dbw;

    return-void
.end method

.method public dq(Lg/dmm;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->ig:Lg/dmm;

    return-void
.end method

.method public dq(Lg/dsk;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->py:Lg/dsk;

    return-void
.end method

.method public dq(Lg/eyh;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->kk:Lg/eyh;

    return-void
.end method

.method public dq(Lg/f;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->b:Lg/f;

    return-void
.end method

.method public dq(Lg/fzc;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dlv;->jv:Lg/gii;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/gii;->d()V

    :cond_1
    iget-object v0, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    const-string v0, "nodeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lg/dlv;->d(I)V

    invoke-virtual {p0, p0}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object v1

    check-cast v1, Lg/eyh;

    iput-object v1, p0, Lg/dlv;->o:Lg/eyh;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lg/dlv;->o:Lg/eyh;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lg/dlv;->d(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "availability"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x42

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "marginLeft"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x41

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "visibility"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x40

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "onLongTap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x3f

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "disable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x3e

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "onScroll"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0x3d

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "rotateZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x3c

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "rotateY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/16 v3, 0x3b

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "rotateX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/16 v3, 0x3a

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "borderRadius"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x39

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "backgroundScale"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x38

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "backgroundImage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x37

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "backgroundColor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x36

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "onPullToRefresh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x35

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "animatorSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x34

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "animation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x33

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "onAnimation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x32

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "translate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x31

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "marginRight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x30

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "onExposure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "borderWidth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x2e

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "borderStyle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "borderColor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x2c

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "paddingRight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "borderBottomRightRadius"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x2a

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "borderBottomLeftRadius"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "overflow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "borderTopRightRadius"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x27

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "onLoadMore"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "paddingBottom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "scale"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "ratio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "onTap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "click"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "paddingTop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "backgroundImageBlur"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "i18n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "minHeight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "marginBottom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "triggerFunc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "padding"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "scaleY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "scaleX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "rotate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "backgroundDrawable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "onDown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "marginTop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "margin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "borderTopLeftRadius"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "opacity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "events"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "background"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "onTwist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "onTimer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "onSlide"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "onShake"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_3c
    const-string v3, "onDelay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3d
    const-string v3, "minWidth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3e
    const-string v3, "paddingLeft"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3f
    const-string v3, "translateY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_0

    :cond_40
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_40
    const-string v3, "translateX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_0

    :cond_41
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_41
    const-string v3, "onRenderSuccess"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_0

    :cond_42
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_42
    const-string v3, "clickable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_0

    :cond_43
    const/4 v3, 0x0

    :goto_1
    const-string v10, "wrap_content"

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, -0x2

    const-string v13, "match_parent"

    const-string v14, "hidden"

    const/4 v15, 0x0

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-string v0, "unavailable"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v9

    iput-boolean v0, v1, Lg/dlv;->ws:Z

    return-void

    :pswitch_1
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->gh:F

    iput-boolean v9, v1, Lg/dlv;->e:Z

    return-void

    :pswitch_2
    const-string v0, "visible"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    iput v8, v1, Lg/dlv;->fd:I

    return-void

    :cond_44
    const-string v0, "invisible"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iput v5, v1, Lg/dlv;->fd:I

    return-void

    :cond_45
    const-string v0, "gone"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_46
    iput v4, v1, Lg/dlv;->fd:I

    return-void

    :pswitch_3
    invoke-static {v2, v8}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lg/dlv;->sy:Z

    return-void

    :pswitch_4
    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->yo:F

    return-void

    :pswitch_5
    iput-boolean v9, v1, Lg/dlv;->ny:Z

    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->jo:F

    return-void

    :pswitch_6
    iput-boolean v9, v1, Lg/dlv;->tv:Z

    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->mc:F

    return-void

    :pswitch_7
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->gx:F

    return-void

    :pswitch_8
    iput-boolean v9, v1, Lg/dlv;->t:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    :sswitch_43
    const-string v0, "crop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_2

    :cond_47
    const/4 v6, 0x2

    goto :goto_3

    :sswitch_44
    const-string v0, "fit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_2

    :cond_48
    const/4 v6, 0x1

    goto :goto_3

    :sswitch_45
    const-string v0, "center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_2

    :cond_49
    const/4 v6, 0x0

    :goto_3
    packed-switch v6, :pswitch_data_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, v1, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    goto :goto_4

    :pswitch_9
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, v1, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    goto :goto_4

    :pswitch_a
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, v1, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    goto :goto_4

    :pswitch_b
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, v1, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    :goto_4
    iget-object v0, v1, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    iput-object v0, v1, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    return-void

    :pswitch_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_5

    :cond_4a
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lg/sh;->h(Lg/dlv;Lorg/json/JSONObject;)Lg/sh;

    move-result-object v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iput-object v15, v1, Lg/dlv;->sc:Lg/sh;

    return-void

    :pswitch_d
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lg/egh;->as(Lorg/json/JSONObject;)Lg/bel;

    move-result-object v0

    new-instance v2, Lg/gse;

    iget-object v3, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/gse;->c:Lg/dlv;

    iput-object v0, v2, Lg/gse;->e:Lg/bel;

    iput-object v3, v2, Lg/gse;->a:Landroid/content/Context;

    iput-object v2, v1, Lg/dlv;->xi:Lg/gse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :pswitch_e
    iput-boolean v9, v1, Lg/dlv;->dq:Z

    iput-boolean v9, v1, Lg/dlv;->d:Z

    invoke-static {v2}, Lg/egh;->ay(Ljava/lang/String;)[F

    move-result-object v0

    iget-object v2, v1, Lg/dlv;->s:Landroid/content/Context;

    aget v3, v0, v8

    invoke-static {v2, v3}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v2

    iput v2, v1, Lg/dlv;->pa:F

    iget-object v2, v1, Lg/dlv;->s:Landroid/content/Context;

    aget v0, v0, v9

    invoke-static {v2, v0}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v0

    iput v0, v1, Lg/dlv;->io:F

    return-void

    :pswitch_f
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->r:F

    iput-boolean v9, v1, Lg/dlv;->kx:Z

    return-void

    :pswitch_10
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->cv:F

    return-void

    :pswitch_11
    iput-object v2, v1, Lg/dlv;->jw:Ljava/lang/String;

    return-void

    :pswitch_12
    const/high16 v0, -0x1000000

    invoke-static {v2, v0}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lg/dlv;->dc:I

    return-void

    :pswitch_13
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->op:F

    iput-boolean v9, v1, Lg/dlv;->ce:Z

    return-void

    :pswitch_14
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->yy:F

    iput-boolean v9, v1, Lg/dlv;->ha:Z

    return-void

    :pswitch_15
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->uh:F

    iput-boolean v9, v1, Lg/dlv;->vw:Z

    return-void

    :pswitch_16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_4b
    const/4 v8, 0x1

    goto :goto_6

    :cond_4c
    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :goto_6
    iput-boolean v8, v1, Lg/dlv;->dk:Z

    return-void

    :pswitch_17
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->xz:F

    iput-boolean v9, v1, Lg/dlv;->ds:Z

    return-void

    :pswitch_18
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->u:F

    iput-boolean v9, v1, Lg/dlv;->wn:Z

    return-void

    :pswitch_19
    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v1}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, v1, Lg/dlv;->kk:Lg/eyh;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lg/dlv;->ir()I

    move-result v0

    if-ne v0, v12, :cond_4d

    iput v6, v1, Lg/dlv;->f:F

    goto :goto_7

    :cond_4d
    iput v11, v1, Lg/dlv;->f:F

    goto :goto_7

    :cond_4e
    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iput v6, v1, Lg/dlv;->f:F

    goto :goto_7

    :cond_4f
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->f:F

    :goto_7
    iput-boolean v9, v1, Lg/dlv;->en:Z

    return-void

    :pswitch_1a
    iput-boolean v9, v1, Lg/dlv;->ox:Z

    iput-boolean v9, v1, Lg/dlv;->p:Z

    invoke-static {v2}, Lg/egh;->ay(Ljava/lang/String;)[F

    move-result-object v0

    aget v2, v0, v8

    iput v2, v1, Lg/dlv;->xv:F

    aget v0, v0, v9

    iput v0, v1, Lg/dlv;->wi:F

    return-void

    :pswitch_1b
    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->bu:F

    return-void

    :pswitch_1c
    iput-object v2, v1, Lg/dlv;->zi:Ljava/lang/String;

    return-void

    :pswitch_1d
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->ir:F

    iput-boolean v9, v1, Lg/dlv;->er:Z

    return-void

    :pswitch_1e
    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->ob:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_50

    iput-boolean v9, v1, Lg/dlv;->l:Z

    :cond_50
    :goto_8
    return-void

    :pswitch_1f
    iput-object v2, v1, Lg/dlv;->jy:Ljava/lang/String;

    return-void

    :pswitch_20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_9

    :cond_51
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v15, v0

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    iput-object v15, v1, Lg/dlv;->ux:Lorg/json/JSONObject;

    return-void

    :pswitch_21
    iput-object v2, v1, Lg/dlv;->q:Ljava/lang/String;

    return-void

    :pswitch_22
    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->wp:F

    return-void

    :pswitch_23
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->le:F

    iput-boolean v9, v1, Lg/dlv;->ji:Z

    return-void

    :pswitch_24
    iput-object v2, v1, Lg/dlv;->w:Ljava/lang/String;

    return-void

    :pswitch_25
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->bl:F

    return-void

    :pswitch_26
    iput-boolean v9, v1, Lg/dlv;->p:Z

    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->wi:F

    return-void

    :pswitch_27
    iput-boolean v9, v1, Lg/dlv;->ox:Z

    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->xv:F

    return-void

    :pswitch_28
    iput-boolean v9, v1, Lg/dlv;->nt:Z

    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->cc:F

    return-void

    :pswitch_29
    iput-object v2, v1, Lg/dlv;->nh:Ljava/lang/String;

    return-void

    :pswitch_2a
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->i:F

    iput-boolean v9, v1, Lg/dlv;->h:Z

    return-void

    :pswitch_2b
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->cd:F

    return-void

    :pswitch_2c
    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {v1}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lg/dlv;->kk:Lg/eyh;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lg/dlv;->u()I

    move-result v0

    if-ne v0, v12, :cond_52

    iput v6, v1, Lg/dlv;->fw:F

    goto :goto_a

    :cond_52
    iput v11, v1, Lg/dlv;->fw:F

    goto :goto_a

    :cond_53
    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    iput v6, v1, Lg/dlv;->fw:F

    goto :goto_a

    :cond_54
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->fw:F

    :goto_a
    iput-boolean v9, v1, Lg/dlv;->qz:Z

    return-void

    :pswitch_2d
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->by:F

    iput-boolean v9, v1, Lg/dlv;->v:Z

    return-void

    :pswitch_2e
    iput-boolean v9, v1, Lg/dlv;->a:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->hf:F

    return-void

    :pswitch_2f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_e

    :cond_55
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_56

    goto :goto_e

    :cond_56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v8, v3, :cond_58

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-virtual {v1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v1, v3, v5}, Lg/byh;->z(Landroid/content/Context;Lg/dlv;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lg/bgh;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Lg/bgh;->mn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_57
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_58
    new-instance v0, Lg/gsa;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg/gsa;->b:Lg/dlv;

    iput-object v2, v0, Lg/gsa;->a:Ljava/util/HashMap;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v15, v0

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    iput-object v15, v1, Lg/dlv;->lk:Lg/gsa;

    return-void

    :pswitch_30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_f

    :cond_59
    const-string v0, "linear-gradient"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iput-boolean v9, v1, Lg/dlv;->x:Z

    invoke-static {v2}, Lg/bff;->ak(Ljava/lang/String;)Lg/coy;

    move-result-object v0

    iput-object v0, v1, Lg/dlv;->bx:Lg/coy;

    return-void

    :cond_5a
    :goto_f
    invoke-static {v2, v8}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lg/dlv;->j:I

    iput-boolean v8, v1, Lg/dlv;->x:Z

    return-void

    :pswitch_31
    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->k:F

    return-void

    :pswitch_32
    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxo;->g(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lg/dlv;->n:F

    iput-boolean v9, v1, Lg/dlv;->c:Z

    return-void

    :pswitch_33
    iput-boolean v9, v1, Lg/dlv;->d:Z

    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v2

    invoke-static {v0, v2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v0

    iput v0, v1, Lg/dlv;->io:F

    return-void

    :pswitch_34
    iput-boolean v9, v1, Lg/dlv;->dq:Z

    iget-object v0, v1, Lg/dlv;->s:Landroid/content/Context;

    invoke-static {v7, v2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v2

    invoke-static {v0, v2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v0

    iput v0, v1, Lg/dlv;->pa:F

    return-void

    :pswitch_35
    invoke-virtual/range {p0 .. p2}, Lg/dlv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_36
    invoke-static {v2, v9}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lg/dlv;->oh:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x751aa91e -> :sswitch_42
        -0x71595a12 -> :sswitch_41
        -0x66a2c736 -> :sswitch_40
        -0x66a2c735 -> :sswitch_3f
        -0x597a2048 -> :sswitch_3e
        -0x5201456c -> :sswitch_3d
        -0x5089711c -> :sswitch_3c
        -0x4fb4db99 -> :sswitch_3b
        -0x4fb2ecee -> :sswitch_3a
        -0x4fa6235a -> :sswitch_39
        -0x4f9fd378 -> :sswitch_38
        -0x4f67aad2 -> :sswitch_37
        -0x4cf81ee7 -> :sswitch_36
        -0x4b8807f5 -> :sswitch_35
        -0x4932ce1e -> :sswitch_34
        -0x48c76ed9 -> :sswitch_33
        -0x40737a52 -> :sswitch_32
        -0x3e464339 -> :sswitch_31
        -0x3c6760df -> :sswitch_30
        -0x37a9d414 -> :sswitch_2f
        -0x372522a5 -> :sswitch_2e
        -0x3621dfb2 -> :sswitch_2d
        -0x3621dfb1 -> :sswitch_2c
        -0x300fc3ef -> :sswitch_2b
        -0x289caf64 -> :sswitch_2a
        -0x113c6e87 -> :sswitch_29
        -0x7f661e7 -> :sswitch_28
        0xd1b -> :sswitch_27
        0x307a1e -> :sswitch_26
        0x337a8b -> :sswitch_25
        0x53be6d4 -> :sswitch_24
        0x55f4784 -> :sswitch_23
        0x5a5c588 -> :sswitch_22
        0x64f7944 -> :sswitch_21
        0x674500b -> :sswitch_20
        0x683094a -> :sswitch_1f
        0x6be2dc6 -> :sswitch_1e
        0xc0fb19c -> :sswitch_1d
        0x1318b45a -> :sswitch_1c
        0x13dfc885 -> :sswitch_1b
        0x1f91b402 -> :sswitch_1a
        0x22a57450 -> :sswitch_19
        0x230fd3d7 -> :sswitch_18
        0x2a8c788b -> :sswitch_17
        0x2b158697 -> :sswitch_16
        0x2bf974e5 -> :sswitch_15
        0x2c2c84fa -> :sswitch_14
        0x324da006 -> :sswitch_13
        0x3a1ea90e -> :sswitch_12
        0x3ec0f14e -> :sswitch_11
        0x40d55865 -> :sswitch_10
        0x42ab1b84 -> :sswitch_f
        0x44a7dbfb -> :sswitch_e
        0x450b7f7c -> :sswitch_d
        0x4cb7f6d5 -> :sswitch_c
        0x4d0b70cd -> :sswitch_b
        0x4d93d0bc -> :sswitch_a
        0x506afbde -> :sswitch_9
        0x5280ce5d -> :sswitch_8
        0x5280ce5e -> :sswitch_7
        0x5280ce5f -> :sswitch_6
        0x58dabd8c -> :sswitch_5
        0x639e22e8 -> :sswitch_4
        0x646f20a8 -> :sswitch_3
        0x73b66312 -> :sswitch_2
        0x757a12d5 -> :sswitch_1
        0x7710155b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_35
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_35
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_35
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_35
        :pswitch_f
        :pswitch_e
        :pswitch_35
        :pswitch_d
        :pswitch_c
        :pswitch_35
        :pswitch_30
        :pswitch_29
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_35
        :pswitch_3
        :pswitch_35
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_45
        0x18c11 -> :sswitch_44
        0x2eba90 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 5

    iput-object p1, p0, Lg/dlv;->mn:Lorg/json/JSONObject;

    iget-object v0, p0, Lg/dlv;->iw:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lg/dlv;->kk:Lg/eyh;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/eyh;->dq()Lg/ewk;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lg/dlv;->iw:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v4, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3}, Lg/ewk;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lg/ewk;->dq()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lg/dlv;->ux:Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg/dlv;->mn:Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "i18n"

    if-eqz p1, :cond_5

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lg/dlv;->ux:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lg/dlv;->mn:Lorg/json/JSONObject;

    const-string v1, "xNode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lg/dlv;->mn:Lorg/json/JSONObject;

    iget-object v1, p0, Lg/dlv;->ux:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ae:Lg/dbw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/dbw;->dq(Z)V

    :cond_0
    return-void
.end method

.method public dq(I)Z
    .locals 1

    iget-object v0, p0, Lg/dlv;->bf:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(II)[I
    .locals 4

    iget v0, p0, Lg/dlv;->bu:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lg/dlv;->en:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v3, p0, Lg/dlv;->bu:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    int-to-float p2, v0

    div-float/2addr p2, v3

    float-to-int p2, p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lg/dlv;->qz:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v3, p0, Lg/dlv;->bu:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    int-to-float p1, v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/dlv;->ae:Lg/dbw;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg/dlv;->rp:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dlv;->rp:Z

    :cond_2
    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public e()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lg/dlv;->ij:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public er()I
    .locals 1

    iget v0, p0, Lg/dlv;->j:I

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lg/dlv;->mc:F

    return v0
.end method

.method public fw()F
    .locals 1

    iget v0, p0, Lg/dlv;->jo:F

    return v0
.end method

.method public gh()F
    .locals 1

    iget v0, p0, Lg/dlv;->hf:F

    return v0
.end method

.method public gx()F
    .locals 2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v1, v0, Lg/aeb;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aeb;

    invoke-interface {v0}, Lg/aeb;->getRubIn()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lg/abm;
    .locals 1

    iget-object v0, p0, Lg/dlv;->no:Lg/abm;

    return-object v0
.end method

.method public i()Lg/cyx;
    .locals 1

    iget-object v0, p0, Lg/dlv;->tl:Lg/cyx;

    return-object v0
.end method

.method public ia()V
    .locals 1

    iget-object v0, p0, Lg/dlv;->jn:Lg/gjp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/gjp;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lg/dlv;->xi:Lg/gse;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/gse;->f:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lg/dlv;->ae:Lg/dbw;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lg/dbw;->s()V

    :cond_2
    return-void
.end method

.method public ig()F
    .locals 1

    iget v0, p0, Lg/dlv;->pa:F

    return v0
.end method

.method public ir()I
    .locals 1

    iget v0, p0, Lg/dlv;->f:F

    float-to-int v0, v0

    return v0
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ae:Lg/dbw;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/dlv;->fq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dlv;->fq:Z

    :cond_0
    return-void
.end method

.method public iw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->jy:Ljava/lang/String;

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public ji()Z
    .locals 1

    iget-boolean v0, p0, Lg/dlv;->mp:Z

    return v0
.end method

.method public jy()F
    .locals 1

    iget v0, p0, Lg/dlv;->wi:F

    return v0
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lg/dlv;->nh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/dlv;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dlv;->bx:Lg/coy;

    invoke-virtual {p0, v0}, Lg/dlv;->dq(Lg/coy;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lg/dlv;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v0, p0, Lg/dlv;->j:I

    invoke-virtual {p0, v0}, Lg/dlv;->ox(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lg/dlv;->nh:Ljava/lang/String;

    const-string v1, "local://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/dlv;->nh:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-boolean v2, p0, Lg/dlv;->l:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-object v2, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lg/dlv;->s:Landroid/content/Context;

    const-string v4, "drawable"

    invoke-static {v3, v0, v4}, Lg/acw;->as(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v1, p0, Lg/dlv;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    iget v2, p0, Lg/dlv;->ob:F

    float-to-int v2, v2

    invoke-static {v1, v0, v2}, Lg/dxo;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v0}, Lg/dlv;->dq(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_5
    invoke-virtual {p0}, Lg/dlv;->wp()V

    return-void
.end method

.method public kk()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object v0
.end method

.method public kx()V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dlv;->ij:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lg/dlv;->dq(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lg/dlv;->f:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lg/dlv;->p(I)V

    iget v0, p0, Lg/dlv;->fw:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lg/dlv;->s(I)V

    :cond_0
    return-void
.end method

.method public l()F
    .locals 2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v1, v0, Lg/aeb;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aeb;

    invoke-interface {v0}, Lg/aeb;->getShine()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public le()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lg/dlv;->iw:Lorg/json/JSONObject;

    return-object v0
.end method

.method public mn()V
    .locals 5

    iget-object v0, p0, Lg/dlv;->sc:Lg/sh;

    if-eqz v0, :cond_0

    new-instance v1, Lg/gjp;

    iget-object v2, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-direct {v1, v2, v0}, Lg/gjp;-><init>(Landroid/view/View;Lg/sh;)V

    iput-object v1, p0, Lg/dlv;->jn:Lg/gjp;

    invoke-virtual {v1}, Lg/gjp;->h()V

    :cond_0
    iget-object v0, p0, Lg/dlv;->xi:Lg/gse;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/gse;->f:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget v0, v0, Lg/gse;->b:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lg/dlv;->ae:Lg/dbw;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lg/dbw;->p()V

    :cond_2
    iget-object v0, p0, Lg/dlv;->lk:Lg/gsa;

    if-eqz v0, :cond_3

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Lg/gsa;->d(Ljava/lang/String;)Lg/bgh;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lg/bgh;->dq(Lg/eyj;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lg/bgh;->dq([Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lg/dlv;->ip:Lg/dhi;

    const/16 v1, 0x3e9

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lg/dlv;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/dlv;->ip:Lg/dhi;

    iget-object v2, v0, Lg/dhi;->c:Lg/fzc;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, v2, Lg/fzc;->d:Lorg/json/JSONObject;

    const-string v3, "delay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lg/dhi;->d:Lg/dlv;

    invoke-virtual {v3}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lg/dhi;->a:Lg/giy;

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    iget-object v0, p0, Lg/dlv;->hy:Lg/bye;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lg/dlv;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lg/dlv;->hy:Lg/bye;

    iget-object v2, v0, Lg/bye;->a:Lg/fzc;

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, v2, Lg/fzc;->d:Lorg/json/JSONObject;

    const-string v3, "interval"

    const-string v4, "8000"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lg/bye;->b:Lg/dlv;

    invoke-virtual {v4}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lg/bye;->e:I

    const-string v3, "repeat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lg/bye;->c:Z

    iget-object v2, v0, Lg/bye;->d:Lg/giy;

    iget v0, v0, Lg/bye;->e:I

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public mp()F
    .locals 1

    iget v0, p0, Lg/dlv;->io:F

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dlv;->q:Ljava/lang/String;

    return-object v0
.end method

.method public nh()V
    .locals 0

    return-void
.end method

.method public no()V
    .locals 5

    iget-boolean v0, p0, Lg/dlv;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/dlv;->n:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/dlv;->bl:F

    :goto_0
    iget-boolean v1, p0, Lg/dlv;->ce:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lg/dlv;->op:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lg/dlv;->bl:F

    :goto_1
    iget-boolean v2, p0, Lg/dlv;->er:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lg/dlv;->ir:F

    goto :goto_2

    :cond_2
    iget v2, p0, Lg/dlv;->bl:F

    :goto_2
    iget-boolean v3, p0, Lg/dlv;->wn:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lg/dlv;->u:F

    goto :goto_3

    :cond_3
    iget v3, p0, Lg/dlv;->bl:F

    :goto_3
    iget-object v4, p0, Lg/dlv;->ia:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v2, v2

    float-to-int v1, v1

    float-to-int v3, v3

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public o()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lg/dlv;->mn:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ob()F
    .locals 2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v1, v0, Lg/aeb;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aeb;

    invoke-interface {v0}, Lg/aeb;->getRipple()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/dlv;->nh()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/dlv;->j()V

    :goto_0
    iget-object p1, p0, Lg/dlv;->xj:Lg/ahr;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0, p2}, Lg/ahr;->dq(Lg/dlv;Landroid/view/MotionEvent;)V

    :cond_2
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lg/dlv;->dq(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lg/dlv;->tl:Lg/cyx;

    iget-object v3, p0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fzc;

    invoke-interface {v2, p1, p0, p0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    :cond_3
    invoke-virtual {p0, v1}, Lg/dlv;->dq(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lg/dlv;->y:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lg/dlv;->tl:Lg/cyx;

    if-eqz p1, :cond_c

    iget-object v3, p0, Lg/dlv;->ah:Lg/cdb;

    if-eqz v3, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v5, 0x41700000    # 15.0f

    if-eq v4, v1, :cond_7

    const/4 p1, 0x2

    if-eq v4, p1, :cond_5

    if-eq v4, v0, :cond_4

    goto/16 :goto_3

    :cond_4
    iput-boolean v2, v3, Lg/cdb;->a:Z

    return v1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v0, v3, Lg/cdb;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-gez p1, :cond_6

    iget p1, v3, Lg/cdb;->c:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_19

    :cond_6
    iput-boolean v1, v3, Lg/cdb;->a:Z

    return v1

    :cond_7
    iget-boolean v0, v3, Lg/cdb;->a:Z

    if-eqz v0, :cond_8

    iput-boolean v2, v3, Lg/cdb;->a:Z

    return v2

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v4, v3, Lg/cdb;->b:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gez v0, :cond_a

    iget v0, v3, Lg/cdb;->c:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v5

    if-ltz p2, :cond_9

    goto :goto_1

    :cond_9
    iget-object p2, v3, Lg/cdb;->d:Lg/fzc;

    invoke-interface {p1, p2, p0, p0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    return v1

    :cond_a
    :goto_1
    iput-boolean v2, v3, Lg/cdb;->a:Z

    return v1

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, v3, Lg/cdb;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v3, Lg/cdb;->c:F

    return v1

    :cond_c
    iget-object p1, p0, Lg/dlv;->tl:Lg/cyx;

    if-eqz p1, :cond_17

    iget-object v3, p0, Lg/dlv;->xx:Lg/fwp;

    if-eqz v3, :cond_17

    iget-object v4, v3, Lg/fwp;->h:Landroid/content/Context;

    iget-object v5, v3, Lg/fwp;->b:Lg/fzc;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_16

    if-eq v6, v1, :cond_e

    if-eq v6, v0, :cond_d

    goto/16 :goto_3

    :cond_d
    iget v0, v3, Lg/fwp;->d:F

    const/4 v6, 0x1

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_1c

    iget v0, v3, Lg/fwp;->f:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_e

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-boolean v6, v3, Lg/fwp;->a:Z

    if-eqz v6, :cond_f

    iget v6, v3, Lg/fwp;->d:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_f

    iget v6, v3, Lg/fwp;->f:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_f

    invoke-virtual {v3}, Lg/fwp;->i()V

    iget-object p2, v3, Lg/fwp;->c:Lg/fzc;

    invoke-interface {p1, p2, p0, p0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    return v1

    :cond_f
    iget v6, v3, Lg/fwp;->g:I

    if-nez v6, :cond_10

    invoke-virtual {v3}, Lg/fwp;->i()V

    invoke-interface {p1, v5, p0, p0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    return v1

    :cond_10
    iget v6, v3, Lg/fwp;->d:F

    sub-float/2addr v0, v6

    invoke-static {v4, v0}, Lg/dxo;->e(Landroid/content/Context;F)I

    move-result v0

    iget v6, v3, Lg/fwp;->f:F

    sub-float/2addr p2, v6

    invoke-static {v4, p2}, Lg/dxo;->e(Landroid/content/Context;F)I

    move-result p2

    iget-object v4, v3, Lg/fwp;->e:Ljava/lang/String;

    const-string v6, "up"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    neg-int v0, p2

    goto :goto_2

    :cond_11
    iget-object v4, v3, Lg/fwp;->e:Ljava/lang/String;

    const-string v6, "down"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, v3, Lg/fwp;->e:Ljava/lang/String;

    const-string v6, "left"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    neg-int v0, v0

    goto :goto_2

    :cond_12
    iget-object v4, v3, Lg/fwp;->e:Ljava/lang/String;

    const-string v6, "right"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_2

    :cond_13
    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v10, p2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_2

    :cond_14
    move v0, p2

    :goto_2
    iget p2, v3, Lg/fwp;->g:I

    if-lt v0, p2, :cond_15

    invoke-virtual {v3}, Lg/fwp;->i()V

    invoke-interface {p1, v5, p0, p0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    return v1

    :cond_15
    invoke-virtual {v3}, Lg/fwp;->i()V

    return v2

    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, v3, Lg/fwp;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v3, Lg/fwp;->f:F

    return v1

    :cond_17
    iget-object p1, p0, Lg/dlv;->lk:Lg/gsa;

    if-eqz p1, :cond_1c

    const-string v0, "tap"

    invoke-virtual {p1, v0}, Lg/gsa;->d(Ljava/lang/String;)Lg/bgh;

    move-result-object v0

    instance-of v3, v0, Lg/beb;

    if-eqz v3, :cond_18

    invoke-virtual {v0, p1}, Lg/bgh;->dq(Lg/eyj;)V

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-virtual {v0, v3}, Lg/bgh;->dq([Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Lg/gsa;->c:Z

    :cond_18
    iget-boolean v0, p1, Lg/gsa;->c:Z

    if-eqz v0, :cond_1a

    :cond_19
    :goto_3
    return v1

    :cond_1a
    const-string v0, "slide"

    invoke-virtual {p1, v0}, Lg/gsa;->d(Ljava/lang/String;)Lg/bgh;

    move-result-object v0

    instance-of v3, v0, Lg/pv;

    if-eqz v3, :cond_1b

    invoke-virtual {v0, p1}, Lg/bgh;->dq(Lg/eyj;)V

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    invoke-virtual {v0, p1}, Lg/bgh;->dq([Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1b
    iget-boolean p1, p1, Lg/gsa;->c:Z

    return p1

    :cond_1c
    :goto_4
    return v2
.end method

.method public op()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dlv;->jy:Ljava/lang/String;

    return-object v0
.end method

.method public abstract ox()Landroid/view/View;
.end method

.method public ox(Ljava/lang/String;)Lg/dlv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lg/dlv;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lg/dlv;->dq(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    return-object p1
.end method

.method public ox(I)V
    .locals 2

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lg/dlv;->aj()V

    invoke-virtual {p0}, Lg/dlv;->ak()V

    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    iget-object v0, p0, Lg/dlv;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/dlv;->mp:Z

    return-void
.end method

.method public p(Ljava/lang/String;)Lg/dlv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lg/dlv;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lg/dlv;->d(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    return-object p1
.end method

.method public p()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lg/dlv;->k()V

    invoke-virtual {v0}, Lg/dlv;->no()V

    iget v1, v0, Lg/dlv;->fd:I

    invoke-virtual {v0, v1}, Lg/dlv;->d(I)V

    iget-boolean v1, v0, Lg/dlv;->dq:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->pa:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-boolean v1, v0, Lg/dlv;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->io:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-boolean v1, v0, Lg/dlv;->ox:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->xv:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    iget-boolean v1, v0, Lg/dlv;->p:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->wi:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    iget-boolean v1, v0, Lg/dlv;->nt:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->cc:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    :cond_4
    iget-boolean v1, v0, Lg/dlv;->tv:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->cc:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationX(F)V

    :cond_5
    iget-boolean v1, v0, Lg/dlv;->ny:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->jo:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    :cond_6
    iget-boolean v1, v0, Lg/dlv;->a:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v2, v0, Lg/dlv;->hf:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    iget v1, v0, Lg/dlv;->yo:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_8

    iget-object v3, v0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setRotation(F)V

    :cond_8
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lg/dlv;->ia:Landroid/view/View;

    iget v7, v0, Lg/dlv;->fd:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget v6, v0, Lg/dlv;->yo:F

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    :cond_9
    iget-object v2, v0, Lg/dlv;->no:Lg/abm;

    const/4 v6, 0x0

    if-eqz v2, :cond_a

    iget-object v2, v2, Lg/abm;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lg/dlv;->ia:Landroid/view/View;

    new-instance v7, Lg/bqh;

    invoke-direct {v7, v0, v6}, Lg/bqh;-><init>(Lg/dlv;I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_a
    invoke-virtual {v0, v4}, Lg/dlv;->dq(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lg/dlv;->y:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lg/dlv;->ia:Landroid/view/View;

    new-instance v7, Lg/bqh;

    invoke-direct {v7, v0, v4}, Lg/bqh;-><init>(Lg/dlv;I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_0
    iget-object v2, v0, Lg/dlv;->tl:Lg/cyx;

    if-eqz v2, :cond_f

    invoke-virtual {v0, v1}, Lg/dlv;->dq(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v4}, Lg/dlv;->dq(I)Z

    move-result v1

    const-string v2, "slideDirection"

    const-string v7, "slideThreshold"

    const/4 v8, 0x1

    if-eqz v1, :cond_d

    iput-boolean v4, v0, Lg/dlv;->wq:Z

    new-instance v1, Lg/fwp;

    iget-object v9, v0, Lg/dlv;->s:Landroid/content/Context;

    iget-object v10, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fzc;

    iget-object v10, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fzc;

    iget-boolean v11, v0, Lg/dlv;->wq:Z

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v8, v1, Lg/fwp;->d:F

    iput v8, v1, Lg/fwp;->f:F

    iput v6, v1, Lg/fwp;->g:I

    iput-object v9, v1, Lg/fwp;->h:Landroid/content/Context;

    iput-object v3, v1, Lg/fwp;->b:Lg/fzc;

    iput-object v10, v1, Lg/fwp;->c:Lg/fzc;

    iput-boolean v11, v1, Lg/fwp;->a:Z

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    iget-object v8, v3, Lg/fzc;->d:Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lg/fwp;->g:I

    iget-object v3, v3, Lg/fzc;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/fwp;->e:Ljava/lang/String;

    :goto_1
    iput-object v1, v0, Lg/dlv;->xx:Lg/fwp;

    goto :goto_3

    :cond_d
    new-instance v1, Lg/fwp;

    iget-object v9, v0, Lg/dlv;->s:Landroid/content/Context;

    iget-object v10, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fzc;

    iget-boolean v10, v0, Lg/dlv;->wq:Z

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v8, v1, Lg/fwp;->d:F

    iput v8, v1, Lg/fwp;->f:F

    iput v6, v1, Lg/fwp;->g:I

    iput-object v9, v1, Lg/fwp;->h:Landroid/content/Context;

    iput-object v3, v1, Lg/fwp;->b:Lg/fzc;

    iput-boolean v10, v1, Lg/fwp;->a:Z

    if-nez v3, :cond_e

    goto :goto_2

    :cond_e
    iget-object v8, v3, Lg/fzc;->d:Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lg/fwp;->g:I

    iget-object v3, v3, Lg/fzc;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/fwp;->e:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lg/dlv;->xx:Lg/fwp;

    :cond_f
    :goto_3
    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v4}, Lg/dlv;->dq(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lg/dlv;->y:Z

    if-eqz v1, :cond_10

    new-instance v1, Lg/cdb;

    iget-object v2, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fzc;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lg/cdb;->d:Lg/fzc;

    iput-object v1, v0, Lg/dlv;->ah:Lg/cdb;

    :cond_10
    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    if-nez v1, :cond_11

    goto :goto_4

    :cond_11
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lg/dlv;->dq(I)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_4

    :cond_12
    iget-object v2, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzc;

    if-nez v1, :cond_13

    goto :goto_4

    :cond_13
    iget-object v2, v1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-eqz v2, :cond_14

    const-string v3, "rotateZ"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v7, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v5, v7}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_14
    iget-object v2, v0, Lg/dlv;->tl:Lg/cyx;

    invoke-interface {v2, v1, v0, v0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    :goto_4
    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    const/4 v2, 0x3

    if-eqz v1, :cond_15

    invoke-virtual {v0, v2}, Lg/dlv;->dq(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v1

    iget-object v1, v1, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v1, Lg/ctj;

    if-eqz v1, :cond_15

    iget-object v3, v0, Lg/dlv;->s:Landroid/content/Context;

    invoke-interface {v1, v3}, Lg/ctj;->dq(Landroid/content/Context;)Lg/gii;

    move-result-object v1

    iput-object v1, v0, Lg/dlv;->jv:Lg/gii;

    iget v3, v0, Lg/dlv;->gl:F

    invoke-interface {v1, v3}, Lg/gii;->dq(F)V

    iget-object v1, v0, Lg/dlv;->jv:Lg/gii;

    invoke-interface {v1}, Lg/gii;->dq()V

    iget-object v1, v0, Lg/dlv;->jv:Lg/gii;

    new-instance v3, Lg/emr;

    invoke-direct {v3, v4, v0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v3}, Lg/gii;->dq(Lg/dry;)V

    :cond_15
    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    if-eqz v1, :cond_16

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lg/dlv;->dq(I)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Lg/bye;

    iget-object v5, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzc;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lg/giy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Lg/giy;-><init>(Landroid/os/Looper;Lg/ank;)V

    iput-object v5, v3, Lg/bye;->d:Lg/giy;

    iput-object v1, v3, Lg/bye;->a:Lg/fzc;

    iput-object v0, v3, Lg/bye;->b:Lg/dlv;

    iput-object v3, v0, Lg/dlv;->hy:Lg/bye;

    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    iput-object v1, v3, Lg/bye;->f:Lg/cyx;

    :cond_16
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lg/dlv;->dq(I)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lg/dhi;

    iget-object v5, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzc;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lg/giy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Lg/giy;-><init>(Landroid/os/Looper;Lg/ank;)V

    iput-object v5, v3, Lg/dhi;->a:Lg/giy;

    iput-object v1, v3, Lg/dhi;->c:Lg/fzc;

    iput-object v0, v3, Lg/dhi;->d:Lg/dlv;

    iput-object v3, v0, Lg/dlv;->ip:Lg/dhi;

    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    iput-object v1, v3, Lg/dhi;->b:Lg/cyx;

    :cond_17
    iget-object v1, v0, Lg/dlv;->lk:Lg/gsa;

    if-eqz v1, :cond_1b

    const-string v3, "shake"

    invoke-virtual {v1, v3}, Lg/gsa;->d(Ljava/lang/String;)Lg/bgh;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3, v1}, Lg/bgh;->dq(Lg/eyj;)V

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lg/bgh;->dq([Ljava/lang/Object;)Z

    :cond_18
    iget-object v1, v0, Lg/dlv;->lk:Lg/gsa;

    const-string v3, "twist"

    invoke-virtual {v1, v3}, Lg/gsa;->d(Ljava/lang/String;)Lg/bgh;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3, v1}, Lg/bgh;->dq(Lg/eyj;)V

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lg/bgh;->dq([Ljava/lang/Object;)Z

    :cond_19
    iget-object v1, v0, Lg/dlv;->lk:Lg/gsa;

    iget-object v3, v1, Lg/gsa;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_1a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/bgh;

    instance-of v7, v5, Lg/dus;

    if-eqz v7, :cond_1a

    invoke-virtual {v5, v1}, Lg/bgh;->dq(Lg/eyj;)V

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7}, Lg/bgh;->dq([Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1b
    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lg/dlv;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1c

    iget-boolean v3, v0, Lg/dlv;->dk:Z

    xor-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1c
    iget-object v1, v0, Lg/dlv;->xi:Lg/gse;

    if-eqz v1, :cond_35

    iget-object v8, v1, Lg/gse;->a:Landroid/content/Context;

    iget-object v9, v1, Lg/gse;->c:Lg/dlv;

    iget-object v3, v1, Lg/gse;->e:Lg/bel;

    if-eqz v3, :cond_35

    if-nez v9, :cond_1d

    goto/16 :goto_13

    :cond_1d
    iget-object v5, v3, Lg/bel;->d:Ljava/util/HashMap;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x2

    const/4 v15, -0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_23

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_23

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    if-eqz v10, :cond_22

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lg/aiu;->b(Ljava/lang/String;)Lg/aiu;

    move-result-object v12

    invoke-virtual {v12}, Lg/aiu;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_7
    const/4 v2, -0x1

    goto :goto_8

    :sswitch_0
    const-string v2, "point"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_7

    :cond_1e
    const/4 v2, 0x2

    goto :goto_8

    :sswitch_1
    const-string v2, "float"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_7

    :cond_1f
    const/4 v2, 0x1

    goto :goto_8

    :sswitch_2
    const-string v2, "int"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_7

    :cond_20
    const/4 v2, 0x0

    :goto_8
    packed-switch v2, :pswitch_data_0

    move-object v2, v7

    goto :goto_9

    :pswitch_0
    new-instance v2, Lg/bgx;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-direct {v2, v8, v9, v11, v10}, Lg/duu;-><init>(Landroid/content/Context;Lg/dlv;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v2, Lg/bgx;->a:Ljava/util/ArrayList;

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto :goto_9

    :pswitch_1
    move-object v2, v7

    new-instance v7, Lg/evl;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/TreeMap;

    const/4 v12, 0x0

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    invoke-direct/range {v7 .. v12}, Lg/evl;-><init>(Landroid/content/Context;Lg/dlv;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_9

    :pswitch_2
    move-object v2, v7

    new-instance v7, Lg/evl;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/TreeMap;

    const/4 v12, 0x1

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    invoke-direct/range {v7 .. v12}, Lg/evl;-><init>(Landroid/content/Context;Lg/dlv;Ljava/lang/String;Ljava/util/Map;I)V

    :goto_9
    if-eqz v7, :cond_21

    invoke-virtual {v7}, Lg/duu;->b()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_21
    move-object v7, v2

    :cond_22
    const/4 v2, 0x3

    goto/16 :goto_6

    :cond_23
    move-object v2, v7

    iget-object v5, v3, Lg/bel;->a:Lorg/json/JSONObject;

    if-eqz v5, :cond_28

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_a
    const/4 v7, -0x1

    goto :goto_b

    :sswitch_3
    const-string v8, "shine"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_a

    :cond_24
    const/4 v7, 0x3

    goto :goto_b

    :sswitch_4
    const-string v8, "rub_in"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_a

    :cond_25
    const/4 v7, 0x2

    goto :goto_b

    :sswitch_5
    const-string v8, "ripple"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    goto :goto_a

    :cond_26
    const/4 v7, 0x1

    goto :goto_b

    :sswitch_6
    const-string v8, "stretch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    goto :goto_a

    :cond_27
    const/4 v7, 0x0

    :goto_b
    packed-switch v7, :pswitch_data_1

    move-object v7, v2

    goto/16 :goto_c

    :pswitch_3
    new-instance v7, Lg/dfr;

    invoke-direct {v7, v9, v5}, Lg/cw;-><init>(Lg/dlv;Lorg/json/JSONObject;)V

    iput-boolean v4, v7, Lg/dfr;->u:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v7, Lg/dfr;->s:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v7, Lg/dfr;->t:Landroid/graphics/Path;

    invoke-virtual {v9}, Lg/dlv;->r()F

    move-result v2

    iput v2, v7, Lg/dfr;->w:F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v7, Lg/dfr;->p:Landroid/graphics/Path;

    goto :goto_c

    :pswitch_4
    new-instance v7, Lg/eqz;

    invoke-direct {v7, v9, v5}, Lg/cw;-><init>(Lg/dlv;Lorg/json/JSONObject;)V

    invoke-virtual {v9}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v5

    iput-object v5, v7, Lg/eqz;->r:Landroid/view/View;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v7, Lg/eqz;->j:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v5, v14, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, v7, Lg/eqz;->q:Landroid/graphics/PorterDuffXfermode;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v7, Lg/eqz;->p:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v7, Lg/eqz;->m:Landroid/graphics/Matrix;

    goto :goto_c

    :pswitch_5
    new-instance v7, Lg/fio;

    invoke-direct {v7, v9, v5}, Lg/cw;-><init>(Lg/dlv;Lorg/json/JSONObject;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v7, Lg/fio;->n:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_c

    :pswitch_6
    new-instance v7, Lg/fpv;

    invoke-direct {v7, v9, v5}, Lg/cw;-><init>(Lg/dlv;Lorg/json/JSONObject;)V

    iput-boolean v4, v7, Lg/fpv;->r:Z

    iput-boolean v4, v7, Lg/fpv;->s:Z

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v7, Lg/fpv;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v9}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v14, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, v7, Lg/fpv;->l:Landroid/graphics/PorterDuffXfermode;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v7, Lg/fpv;->k:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v7, Lg/fpv;->n:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v7, Lg/fpv;->q:Landroid/graphics/Path;

    :goto_c
    iput-object v7, v1, Lg/gse;->d:Lg/cw;

    if-eqz v7, :cond_28

    invoke-virtual {v7}, Lg/cw;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_28
    invoke-virtual {v9}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_29

    goto/16 :goto_13

    :cond_29
    iget-object v5, v3, Lg/bel;->e:Lg/ffr;

    if-eqz v5, :cond_2a

    new-instance v7, Lg/efr;

    const/4 v8, 0x5

    invoke-direct {v7, v8, v2, v5, v6}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    new-array v5, v6, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v2, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v5, v3, Lg/bel;->g:I

    if-gez v5, :cond_2b

    const/4 v5, -0x1

    goto :goto_d

    :cond_2b
    if-nez v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_d

    :cond_2c
    sub-int/2addr v5, v4

    :goto_d
    iput v5, v1, Lg/gse;->b:I

    iget-wide v7, v3, Lg/bel;->f:J

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget v5, v1, Lg/gse;->b:I

    const/4 v7, -0x2

    if-eq v5, v7, :cond_2d

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_2d
    iget-wide v7, v3, Lg/bel;->c:J

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v5, v3, Lg/bel;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x53ecbf86

    if-eq v7, v8, :cond_2f

    const v8, -0x3df94319

    if-eq v7, v8, :cond_2e

    goto :goto_e

    :cond_2e
    const-string v7, "normal"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2f
    const-string v7, "alternate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x2

    goto :goto_f

    :cond_30
    :goto_e
    const/4 v5, 0x1

    :goto_f
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v3, v3, Lg/bel;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    goto :goto_10

    :sswitch_7
    const-string v5, "ease_in_out"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v6, 0x1

    goto :goto_11

    :sswitch_8
    const-string v5, "ease_out"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v6, 0x2

    goto :goto_11

    :sswitch_9
    const-string v5, "linear"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v6, 0x3

    goto :goto_11

    :sswitch_a
    const-string v5, "ease_in"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_11

    :cond_31
    :goto_10
    const/4 v6, -0x1

    :goto_11
    if-eqz v6, :cond_34

    if-eq v6, v4, :cond_33

    if-eq v6, v14, :cond_32

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_12

    :cond_32
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_12

    :cond_33
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_12

    :cond_34
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :goto_12
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v2, v1, Lg/gse;->f:Landroid/animation/ObjectAnimator;

    :cond_35
    :goto_13
    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    if-eqz v1, :cond_36

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lg/dlv;->dq(I)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v0, Lg/dlv;->tl:Lg/cyx;

    iget-object v3, v0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzc;

    invoke-interface {v2, v1, v0, v0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    :cond_36
    return-void

    :sswitch_data_0
    .sparse-switch
        0x197ef -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x65e5590 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x702b18fb -> :sswitch_6
        -0x377b49d0 -> :sswitch_5
        -0x36d8cd1b -> :sswitch_4
        0x6856d6b -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7520a0ea -> :sswitch_a
        -0x41b970db -> :sswitch_9
        -0x2ef36483 -> :sswitch_8
        0x3f7ac2a5 -> :sswitch_7
    .end sparse-switch
.end method

.method public p(I)V
    .locals 2

    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v1, v0, Lg/aau;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aau;

    invoke-interface {v0, p1}, Lg/aau;->dq(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lg/aau;

    if-eqz v1, :cond_1

    check-cast v0, Lg/aau;

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lg/aau;->dq(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lg/dlv;->xv:F

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lg/dlv;->gx:F

    return v0
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ae:Lg/dbw;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/dlv;->fp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dlv;->fp:Z

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 2

    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v1, v0, Lg/aau;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aau;

    invoke-interface {v0, p1}, Lg/aau;->d(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lg/aau;

    if-eqz v1, :cond_1

    check-cast v0, Lg/aau;

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lg/aau;->d(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dlv;->q:Ljava/lang/String;

    return-void
.end method

.method public t()F
    .locals 2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v1, v0, Lg/aeb;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aeb;

    invoke-interface {v0}, Lg/aeb;->getStretch()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lg/dlv;->fw:F

    float-to-int v0, v0

    return v0
.end method

.method public vf()V
    .locals 1

    iget-object v0, p0, Lg/dlv;->xx:Lg/fwp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/fwp;->i()V

    :cond_0
    return-void
.end method

.method public wn()Lg/dsk;
    .locals 1

    iget-object v0, p0, Lg/dlv;->py:Lg/dsk;

    return-object v0
.end method

.method public wp()V
    .locals 5

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v1, p0, Lg/dlv;->ig:Lg/dmm;

    iget-object v2, p0, Lg/dlv;->nh:Ljava/lang/String;

    new-instance v3, Lg/fnq;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2, v3}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    return-void
.end method
