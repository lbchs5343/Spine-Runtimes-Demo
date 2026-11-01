.class public Lg/gkb;
.super Landroid/widget/ImageView;


# static fields
.field private static final d:Lg/gao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/gao;"
        }
    .end annotation
.end field

.field private static final dq:Ljava/lang/String; = "ooOOo0O000"


# instance fields
.field private final bl:Ljava/lang/Runnable;

.field private final cd:Landroid/os/Handler;

.field private e:I

.field private f:Lg/cyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/cyh;"
        }
    .end annotation
.end field

.field private fw:Lg/cgf;

.field private gh:I

.field private h:Ljava/lang/String;

.field private i:J

.field private ia:Ljava/lang/String;

.field private ig:Z

.field private iw:I

.field private ji:Lorg/json/JSONArray;

.field private final jy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private kk:I
    .annotation build Lcom/bytedance/component/sdk/annotation/RawRes;
    .end annotation
.end field

.field private kx:I

.field private le:Lg/fis;

.field private final mn:Lg/fts;

.field private mp:Z

.field private n:Lg/bdg;

.field private no:Z

.field private o:Lg/eun;

.field private op:Lg/cra;

.field private final ox:Lg/gao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/gao;"
        }
    .end annotation
.end field

.field private final p:Lg/gao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/gao;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg/gcm;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/os/Handler;

.field private s:Lg/gao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/gao;"
        }
    .end annotation
.end field

.field private wp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fmf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gkb;->d:Lg/gao;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lg/cgb;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lg/cgb;-><init>(Lg/gkb;I)V

    iput-object p1, p0, Lg/gkb;->ox:Lg/gao;

    new-instance p1, Lg/cgb;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lg/cgb;-><init>(Lg/gkb;I)V

    iput-object p1, p0, Lg/gkb;->p:Lg/gao;

    iput v0, p0, Lg/gkb;->iw:I

    new-instance p1, Lg/fts;

    invoke-direct {p1}, Lg/fts;-><init>()V

    iput-object p1, p0, Lg/gkb;->mn:Lg/fts;

    iput-boolean v0, p0, Lg/gkb;->no:Z

    iput-boolean v0, p0, Lg/gkb;->ig:Z

    iput-boolean v1, p0, Lg/gkb;->mp:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lg/gkb;->q:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lg/gkb;->jy:Ljava/util/Set;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lg/gkb;->cd:Landroid/os/Handler;

    iput v0, p0, Lg/gkb;->gh:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lg/gkb;->i:J

    new-instance v2, Lg/byd;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lg/gkb;->bl:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    iput-boolean v1, p0, Lg/gkb;->mp:Z

    invoke-virtual {p0, v0}, Lg/gkb;->setFallbackResource(I)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lg/gkb;->setImageAssetsFolder(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lg/fts;->bc(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lg/gkb;->dq(ZLandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lg/gkb;->setIgnoreDisabledSystemAnimations(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lg/ebx;->c:Lg/cqw;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "animator_duration_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lg/fts;->m:Z

    new-instance p1, Lg/yz;

    invoke-direct {p1, p0, v1}, Lg/yz;-><init>(Lg/gkb;I)V

    invoke-virtual {p0, p1}, Lg/gkb;->dq(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lg/zl;

    const/4 v1, 0x3

    invoke-direct {p1, v1, p0}, Lg/zl;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lg/gkb;->dq(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lg/yz;

    invoke-direct {p1, p0, v0}, Lg/yz;-><init>(Lg/gkb;I)V

    invoke-virtual {p0, p1}, Lg/gkb;->dq(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static a(Landroid/graphics/Matrix;FFFF)V
    .locals 4

    div-float v0, p3, p4

    div-float v1, p1, p2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    div-float/2addr p2, p4

    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p3, p3, p2

    sub-float/2addr p3, p1

    div-float/2addr p3, v3

    neg-float p1, p3

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    div-float/2addr p1, p3

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p1

    sub-float/2addr p4, p2

    div-float/2addr p4, v3

    neg-float p1, p4

    invoke-virtual {p0, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static b(Landroid/graphics/Matrix;FFFF)V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p3, p1

    if-gez v1, :cond_1

    cmpl-float v1, p4, p2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p3

    div-float/2addr p1, v0

    sub-float/2addr p2, p4

    div-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    :goto_0
    div-float v1, p3, p4

    div-float v2, p1, p2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    div-float/2addr p1, p3

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p1

    sub-float/2addr p2, p4

    div-float/2addr p2, v0

    invoke-virtual {p0, v3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_2
    div-float/2addr p2, p4

    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p3, p3, p2

    sub-float/2addr p1, p3

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static c(Landroid/graphics/Matrix;FFFF)V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    cmpl-float v2, p3, p1

    if-gez v2, :cond_2

    cmpl-float v2, p4, p2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    div-float v2, p3, p4

    div-float v3, p1, p2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    div-float/2addr p1, p3

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p1

    sub-float/2addr p2, p4

    div-float/2addr p2, v0

    invoke-virtual {p0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    div-float/2addr p2, p4

    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p3, p3, p2

    sub-float/2addr p1, p3

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_2
    :goto_0
    div-float v2, p3, p4

    div-float v3, p1, p2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    div-float/2addr p1, p3

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p1

    sub-float/2addr p2, p4

    div-float/2addr p2, v0

    invoke-virtual {p0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_3
    div-float/2addr p2, p4

    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p3, p3, p2

    sub-float/2addr p1, p3

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static synthetic cd(Lg/gkb;)I
    .locals 2

    iget v0, p0, Lg/gkb;->k:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lg/gkb;->k:I

    return v0
.end method

.method public static synthetic d(Lg/gkb;)Lg/gao;
    .locals 0

    iget-object p0, p0, Lg/gkb;->s:Lg/gao;

    return-object p0
.end method

.method public static synthetic dq(Lg/gkb;)I
    .locals 0

    iget p0, p0, Lg/gkb;->iw:I

    return p0
.end method

.method public static synthetic dq(Lg/gkb;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lg/gkb;->r:Landroid/os/Handler;

    return-object p1
.end method

.method public static dq(Lg/gkb;J)V
    .locals 3

    invoke-direct {p0}, Lg/gkb;->getGlobalConfig()Lg/dac;

    move-result-object v0

    iget-object v1, p0, Lg/gkb;->op:Lg/cra;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "duration"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lg/dac;->e:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lg/dac;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p0, p0, Lg/gkb;->op:Lg/cra;

    check-cast p0, Lg/emr;

    iget-object p0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast p0, Lg/akg;

    const/16 p1, 0x13

    invoke-static {p0, v1, p1}, Lg/akg;->a(Lg/akg;Ljava/util/HashMap;I)V

    :cond_1
    return-void
.end method

.method public static synthetic f(Lg/gkb;)I
    .locals 0

    iget p0, p0, Lg/gkb;->k:I

    return p0
.end method

.method public static synthetic fw(Lg/gkb;)I
    .locals 0

    iget p0, p0, Lg/gkb;->wp:I

    return p0
.end method

.method public static g(Lg/aio;Ljava/lang/String;)Lg/fis;
    .locals 2

    iget-object p0, p0, Lg/aio;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/grq;

    instance-of v1, v0, Lg/aio;

    if-eqz v1, :cond_1

    check-cast v0, Lg/aio;

    invoke-static {v0, p1}, Lg/gkb;->g(Lg/aio;Ljava/lang/String;)Lg/fis;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    iget-object v1, v0, Lg/grq;->au:Lg/cbc;

    iget-object v1, v1, Lg/cbc;->u:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lg/fis;

    if-eqz v1, :cond_0

    check-cast v0, Lg/fis;

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getGlobalConfig()Lg/dac;
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/fts;->x:Lg/cgf;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cgf;->s:Lg/dac;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGlobalEvent()Lg/bul;
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/fts;->x:Lg/cgf;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cgf;->j:Lg/bul;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPlayDelayedELExpressTimeS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/fts;->x:Lg/cgf;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cgf;->p:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic gh(Lg/gkb;)Lg/fis;
    .locals 0

    iget-object p0, p0, Lg/gkb;->le:Lg/fis;

    return-object p0
.end method

.method public static synthetic i(Lg/gkb;)I
    .locals 0

    iget p0, p0, Lg/gkb;->kx:I

    return p0
.end method

.method public static synthetic ia(Lg/gkb;)Lg/cra;
    .locals 0

    iget-object p0, p0, Lg/gkb;->op:Lg/cra;

    return-object p0
.end method

.method public static synthetic ia()Lg/gao;
    .locals 1

    sget-object v0, Lg/gkb;->d:Lg/gao;

    return-object v0
.end method

.method public static synthetic ig(Lg/gkb;)Lg/fts;
    .locals 0

    iget-object p0, p0, Lg/gkb;->mn:Lg/fts;

    return-object p0
.end method

.method public static synthetic iw(Lg/gkb;)Lg/dac;
    .locals 0

    invoke-direct {p0}, Lg/gkb;->getGlobalConfig()Lg/dac;

    move-result-object p0

    return-object p0
.end method

.method public static jy(Lg/gkb;)V
    .locals 3

    iget-object v0, p0, Lg/gkb;->cd:Landroid/os/Handler;

    iget-object p0, p0, Lg/gkb;->bl:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic k(Lg/gkb;)Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lg/gkb;->ji:Lorg/json/JSONArray;

    return-object p0
.end method

.method public static synthetic kk(Lg/gkb;)Lg/bdg;
    .locals 0

    iget-object p0, p0, Lg/gkb;->n:Lg/bdg;

    return-object p0
.end method

.method public static synthetic le(Lg/gkb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/gkb;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic mn(Lg/gkb;)I
    .locals 0

    iget p0, p0, Lg/gkb;->gh:I

    return p0
.end method

.method public static synthetic mp(Lg/gkb;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lg/gkb;->r:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic no(Lg/gkb;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lg/gkb;->getPlayDelayedELExpressTimeS()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lg/gkb;)J
    .locals 2

    iget-wide v0, p0, Lg/gkb;->i:J

    return-wide v0
.end method

.method public static ox(Lg/gkb;)V
    .locals 9

    iget-object v0, p0, Lg/gkb;->fw:Lg/cgf;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lg/gkb;->mn:Lg/fts;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lg/fts;->h:Lg/dpc;

    iget-object v0, v0, Lg/cgf;->k:Lg/gnb;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget v2, v0, Lg/gnb;->k:I

    if-gez v2, :cond_0

    const-string p0, "--==--- timer fail, ke is invalid: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    iget-object v3, v0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v3, v3, v6

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const/4 v5, -0x1

    :goto_0
    iget-object v6, v0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lg/dpc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lg/gnb;->i:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lg/dpc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v1, v0, Lg/gnb;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lg/gnb;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lg/gkb;->mn:Lg/fts;

    const/4 v8, 0x0

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v7, Lg/fts;->s:Lg/aio;

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v7, v1}, Lg/gkb;->g(Lg/aio;Ljava/lang/String;)Lg/fis;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_4

    iget-object v1, v0, Lg/gnb;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lg/gkb;->h:Ljava/lang/String;

    iget-object v0, v0, Lg/gnb;->o:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lg/gkb;->ji:Lorg/json/JSONArray;

    iput-object v8, p0, Lg/gkb;->le:Lg/fis;

    iput v6, p0, Lg/gkb;->k:I

    sub-int v0, v6, v4

    iput v0, p0, Lg/gkb;->wp:I

    iput v5, p0, Lg/gkb;->e:I

    iput v3, p0, Lg/gkb;->kx:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/gkb;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lg/fis;->b:Ljava/lang/String;

    new-instance v0, Lg/cxx;

    invoke-direct {v0, p0, v2, v6, v4}, Lg/cxx;-><init>(Lg/gkb;III)V

    invoke-virtual {p0, v0}, Lg/gkb;->dq(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    return-void
.end method

.method public static p(Lg/gkb;)V
    .locals 4

    invoke-direct {p0}, Lg/gkb;->getGlobalConfig()Lg/dac;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lg/dac;->b:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lg/dac;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/dac;->g:Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lg/dac;->b:I

    int-to-float v2, v1

    invoke-virtual {p0}, Lg/gkb;->getMaxFrame()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lg/gkb;->getMaxFrame()F

    move-result v1

    float-to-int v1, v1

    :cond_1
    int-to-float v1, v1

    invoke-virtual {p0}, Lg/gkb;->getMaxFrame()F

    move-result v2

    div-float/2addr v1, v2

    new-instance v2, Lg/bpc;

    invoke-direct {v2, p0, v1, v0}, Lg/bpc;-><init>(Lg/gkb;FLg/dac;)V

    invoke-virtual {p0, v2}, Lg/gkb;->dq(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic q(Lg/gkb;)Z
    .locals 0

    iget-boolean p0, p0, Lg/gkb;->mp:Z

    return p0
.end method

.method public static synthetic r(Lg/gkb;)I
    .locals 0

    iget p0, p0, Lg/gkb;->e:I

    return p0
.end method

.method public static synthetic s(Lg/gkb;)I
    .locals 2

    iget v0, p0, Lg/gkb;->gh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/gkb;->gh:I

    return v0
.end method

.method private setCompositionTask(Lg/cyh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/cyh;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->dq:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gkb;->fw:Lg/cgf;

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->ay()V

    invoke-virtual {p0}, Lg/gkb;->m()V

    iget-object v0, p0, Lg/gkb;->ox:Lg/gao;

    invoke-virtual {p1, v0}, Lg/cyh;->j(Lg/gao;)V

    iget-object v0, p0, Lg/gkb;->p:Lg/gao;

    invoke-virtual {p1, v0}, Lg/cyh;->h(Lg/gao;)V

    iput-object p1, p0, Lg/gkb;->f:Lg/cyh;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->iw:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->ao()V

    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Lg/bzg;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Lg/bzg;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->aw()Lg/dpa;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {p1}, Lg/hbp;->b(Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v1, v1, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-nez p2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hcl;

    iget-object p2, p1, Lg/hcl;->b:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lg/hcl;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hcl;

    iget-object p2, p1, Lg/hcl;->b:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-object p2
.end method

.method public dq()V
    .locals 5
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    iget-wide v0, p0, Lg/gkb;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lg/gkb;->i:J

    :cond_0
    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->iw:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->as()V

    return-void
.end method

.method public dq(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Lg/bzg;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public dq(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Lg/bzg;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public dq(Lg/eun;)V
    .locals 0

    iput-object p1, p0, Lg/gkb;->o:Lg/eun;

    return-void
.end method

.method public dq(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lg/kg;

    invoke-direct {v0, p1, p2}, Lg/kg;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lg/ahz;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lg/cyh;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/gkb;->setCompositionTask(Lg/cyh;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lg/gkb;->dq(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public dq(ZLandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-boolean v1, v0, Lg/fts;->b:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, v0, Lg/fts;->b:Z

    iget-object p1, v0, Lg/fts;->x:Lg/cgf;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p2}, Lg/fts;->at(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-boolean v0, v0, Lg/fts;->w:Z

    return v0
.end method

.method public getComposition()Lg/cgf;
    .locals 1

    iget-object v0, p0, Lg/gkb;->fw:Lg/cgf;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lg/gkb;->fw:Lg/cgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cgf;->v()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    iget v0, v0, Lg/bzg;->a:F

    float-to-int v0, v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-boolean v0, v0, Lg/fts;->aj:Z

    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Lg/bzg;->s()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Lg/bzg;->u()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lg/ejl;
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->x:Lg/cgf;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cgf;->h:Lg/ejl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Lg/bzg;->w()F

    move-result v0

    return v0
.end method

.method public getRenderMode()Lg/xt;
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-boolean v0, v0, Lg/fts;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lg/xt;->ox:Lg/xt;

    return-object v0

    :cond_0
    sget-object v0, Lg/xt;->d:Lg/xt;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    iget v0, v0, Lg/bzg;->g:F

    return v0
.end method

.method public invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lg/fts;

    if-eqz v1, :cond_1

    check-cast v0, Lg/fts;

    iget-boolean v0, v0, Lg/fts;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lg/xt;->ox:Lg/xt;

    goto :goto_0

    :cond_0
    sget-object v0, Lg/xt;->d:Lg/xt;

    :goto_0
    sget-object v1, Lg/xt;->ox:Lg/xt;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lg/gkb;->mn:Lg/fts;

    if-ne v0, v1, :cond_0

    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public iw()V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->iw:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v1, v0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v1}, Lg/bzg;->cancel()V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lg/ewj;->dq:Lg/ewj;

    iput-object v1, v0, Lg/fts;->v:Lg/ewj;

    :cond_0
    return-void
.end method

.method public final j([[I)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    if-ltz v0, :cond_1

    if-ltz p1, :cond_1

    const-string v1, "--==--- inel enter, play anim, startframe: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lg/gkb;->cd:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg/gkb;->dq()V

    invoke-virtual {p0, v0}, Lg/gkb;->setFrame(I)V

    new-instance v0, Lg/gwr;

    invoke-direct {v0, p0, p1}, Lg/gwr;-><init>(Lg/gkb;I)V

    invoke-virtual {p0, v0}, Lg/gkb;->dq(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Lg/aio;Landroid/view/MotionEvent;)Lg/grq;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v1, v1, Lg/aio;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/grq;

    instance-of v4, v3, Lg/aio;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lg/grq;->bd:Z

    if-eqz v4, :cond_0

    iget v4, v3, Lg/grq;->ao:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget-object v5, v3, Lg/grq;->ap:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5, v6}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_0

    check-cast v3, Lg/aio;

    invoke-virtual {v0, v3, v2}, Lg/gkb;->l(Lg/aio;Landroid/view/MotionEvent;)Lg/grq;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_1
    iget-boolean v4, v3, Lg/grq;->bd:Z

    iget-object v7, v3, Lg/grq;->ap:Landroid/graphics/Matrix;

    if-eqz v4, :cond_0

    iget v4, v3, Lg/grq;->ao:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget-object v8, v0, Lg/gkb;->mn:Lg/fts;

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v8, :cond_7

    iget-boolean v8, v8, Lg/fts;->f:Z

    if-eqz v8, :cond_7

    invoke-virtual {v3, v4, v7, v6}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v7, v0, Lg/gkb;->mn:Lg/fts;

    iget-object v7, v7, Lg/fts;->y:Landroid/graphics/RectF;

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpl-float v15, v8, v5

    if-eqz v15, :cond_d

    cmpl-float v15, v13, v5

    if-eqz v15, :cond_d

    cmpl-float v15, v14, v5

    if-eqz v15, :cond_d

    cmpl-float v5, v7, v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sget-object v15, Lg/frj;->a:[I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    if-eq v15, v6, :cond_6

    if-eq v15, v12, :cond_5

    if-eq v15, v11, :cond_4

    if-eq v15, v10, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5, v8, v13, v14, v7}, Lg/gkb;->c(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_4
    sub-float/2addr v8, v14

    div-float/2addr v8, v9

    sub-float/2addr v13, v7

    div-float/2addr v13, v9

    invoke-virtual {v5, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_5
    invoke-static {v5, v8, v13, v14, v7}, Lg/gkb;->b(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_6
    invoke-static {v5, v8, v13, v14, v7}, Lg/gkb;->a(Landroid/graphics/Matrix;FFFF)V

    :goto_0
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2

    :cond_7
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, v8, v7, v6}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v16, v7, v5

    if-eqz v16, :cond_d

    cmpl-float v16, v13, v5

    if-eqz v16, :cond_d

    cmpl-float v16, v14, v5

    if-eqz v16, :cond_d

    cmpl-float v5, v15, v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sget-object v16, Lg/frj;->a:[I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    const/high16 p1, 0x40000000    # 2.0f

    aget v9, v16, v17

    if-eq v9, v6, :cond_c

    if-eq v9, v12, :cond_b

    if-eq v9, v11, :cond_a

    if-eq v9, v10, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v5, v7, v13, v14, v15}, Lg/gkb;->c(Landroid/graphics/Matrix;FFFF)V

    goto :goto_1

    :cond_a
    sub-float/2addr v7, v14

    div-float v7, v7, p1

    sub-float/2addr v13, v15

    div-float v13, v13, p1

    invoke-virtual {v5, v7, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_b
    invoke-static {v5, v7, v13, v14, v15}, Lg/gkb;->b(Landroid/graphics/Matrix;FFFF)V

    goto :goto_1

    :cond_c
    invoke-static {v5, v7, v13, v14, v15}, Lg/gkb;->a(Landroid/graphics/Matrix;FFFF)V

    :goto_1
    invoke-virtual {v5, v4, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_d
    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    iget v7, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_0

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_0

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_0

    return-object v3

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lg/gkb;->f:Lg/cyh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/gkb;->ox:Lg/gao;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lg/cyh;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lg/gkb;->f:Lg/cyh;

    iget-object v1, p0, Lg/gkb;->p:Lg/gao;

    invoke-virtual {v0, v1}, Lg/cyh;->i(Lg/gao;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public mn()V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/gkb;->ig:Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->bb()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/gkb;->ig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->as()V

    :cond_0
    iget-object v0, p0, Lg/gkb;->o:Lg/eun;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/eun;->mn()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lg/gkb;->cd:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/gkb;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lg/gkb;->p()V

    invoke-virtual {p0}, Lg/gkb;->ox()V

    iget-object v0, p0, Lg/gkb;->o:Lg/eun;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/eun;->ia()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lg/bhj;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lg/bhj;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lg/bhj;->dq:Ljava/lang/String;

    iput-object v0, p0, Lg/gkb;->ia:Ljava/lang/String;

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->dq:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gkb;->ia:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gkb;->ia:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lg/gkb;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lg/bhj;->d:I

    iput v0, p0, Lg/gkb;->kk:I

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lg/gkb;->kk:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lg/gkb;->setAnimation(I)V

    :cond_2
    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->d:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lg/bhj;->ox:F

    iget-object v1, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v1, v0}, Lg/fts;->bc(F)V

    :cond_3
    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->iw:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lg/bhj;->p:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lg/gkb;->dq()V

    :cond_4
    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->s:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lg/bhj;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lg/gkb;->setImageAssetsFolder(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->ox:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p1, Lg/bhj;->iw:I

    invoke-virtual {p0, v0}, Lg/gkb;->setRepeatMode(I)V

    :cond_6
    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->p:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget p1, p1, Lg/bhj;->mn:I

    invoke-virtual {p0, p1}, Lg/gkb;->setRepeatCount(I)V

    :cond_7
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lg/bhj;

    invoke-direct {v1, v0}, Lg/bhj;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lg/gkb;->ia:Ljava/lang/String;

    iput-object v0, v1, Lg/bhj;->dq:Ljava/lang/String;

    iget v0, p0, Lg/gkb;->kk:I

    iput v0, v1, Lg/bhj;->d:I

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Lg/bzg;->w()F

    move-result v0

    iput v0, v1, Lg/bhj;->ox:F

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    iget-boolean v0, v0, Lg/bzg;->m:Z

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/fts;->v:Lg/ewj;

    sget-object v2, Lg/ewj;->d:Lg/ewj;

    if-eq v0, v2, :cond_2

    sget-object v2, Lg/ewj;->ox:Lg/ewj;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lg/bhj;->p:Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v2, v0, Lg/fts;->ac:Ljava/lang/String;

    iput-object v2, v1, Lg/bhj;->s:Ljava/lang/String;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    iput v0, v1, Lg/bhj;->iw:I

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    iput v0, v1, Lg/bhj;->mn:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/fts;->s:Lg/aio;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lg/gkb;->l(Lg/aio;Landroid/view/MotionEvent;)Lg/grq;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_f

    iget-object v3, v0, Lg/grq;->au:Lg/cbc;

    iget-object v4, v3, Lg/cbc;->u:Ljava/lang/String;

    instance-of v0, v0, Lg/aio;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lg/gkb;->getGlobalConfig()Lg/dac;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lg/gkb;->getGlobalConfig()Lg/dac;

    move-result-object v0

    iget v0, v0, Lg/dac;->c:I

    if-ne v0, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "CSJCLOSE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/gkb;->cd:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, v3, Lg/cbc;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lg/gkb;->mn:Lg/fts;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lg/fts;->x:Lg/cgf;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lg/cgf;->e:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg/hcl;

    :cond_6
    :goto_2
    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_d

    iget-object v0, v1, Lg/hcl;->a:Ljava/lang/String;

    iget-object v2, v1, Lg/hcl;->i:Lorg/json/JSONArray;

    invoke-direct {p0}, Lg/gkb;->getGlobalEvent()Lg/bul;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "CSJNO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v0, v3, Lg/bul;->a:Ljava/lang/String;

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_9

    :cond_8
    const-string v5, "CSJLELNO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v2, v3, Lg/bul;->c:Lorg/json/JSONArray;

    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_b

    :cond_a
    iget-object v3, p0, Lg/gkb;->n:Lg/bdg;

    if-eqz v3, :cond_b

    check-cast v3, Lg/eie;

    invoke-virtual {v3, v0, v2}, Lg/eie;->n(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_b
    iget-object v0, v1, Lg/hcl;->g:[[I

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lg/gkb;->j([[I)V

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lg/gkb;->getGlobalEvent()Lg/bul;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lg/gkb;->getGlobalEvent()Lg/bul;

    move-result-object v0

    iget-object v0, v0, Lg/bul;->b:[[I

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lg/gkb;->j([[I)V

    :cond_d
    :goto_3
    const-string v0, "CSJNTP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_f
    invoke-direct {p0}, Lg/gkb;->getGlobalConfig()Lg/dac;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lg/gkb;->getGlobalConfig()Lg/dac;

    move-result-object v0

    iget v0, v0, Lg/dac;->c:I

    if-ne v0, v2, :cond_10

    :goto_4
    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v1, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v1}, Lg/bzg;->removeAllUpdateListeners()V

    iget-object v0, v0, Lg/fts;->e:Lg/zl;

    invoke-virtual {v1, v0}, Lg/bzg;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0}, Lg/bzg;->removeAllListeners()V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lg/bzg;->m:Z

    return v0
.end method

.method public setAnimation(I)V
    .locals 4
    .param p1    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/RawRes;
        .end annotation
    .end param

    iput p1, p0, Lg/gkb;->kk:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gkb;->ia:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lg/cyh;

    new-instance v1, Lg/dww;

    invoke-direct {v1, p0, p1}, Lg/dww;-><init>(Lg/gkb;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lg/cyh;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lg/gkb;->mp:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/ahz;->j(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lg/dp;

    invoke-direct {v3, v2, v0, p1, v1}, Lg/dp;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v1, v3}, Lg/ahz;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lg/cyh;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lg/ahz;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lg/dp;

    invoke-direct {v3, v2, v1, p1, v0}, Lg/dp;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v0, v3}, Lg/ahz;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lg/cyh;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lg/gkb;->setCompositionTask(Lg/cyh;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lg/gkb;->ia:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lg/gkb;->kk:I

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/cyh;

    new-instance v1, Lg/buk;

    invoke-direct {v1, p0, p1}, Lg/buk;-><init>(Lg/gkb;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lg/cyh;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lg/gkb;->mp:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg/ahz;->a:Ljava/util/HashMap;

    const-string v1, "asset_"

    invoke-static {v1, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lg/dh;

    invoke-direct {v2, v0, p1, v1}, Lg/dh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lg/ahz;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lg/cyh;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg/ahz;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/dh;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lg/dh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lg/ahz;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lg/cyh;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lg/gkb;->setCompositionTask(Lg/cyh;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/gkb;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lg/gkb;->mp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg/ahz;->a:Ljava/util/HashMap;

    const-string v1, "url_"

    invoke-static {v1, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lg/bxu;

    invoke-direct {v2, v0, p1, v1}, Lg/bxu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lg/ahz;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lg/cyh;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/bxu;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lg/bxu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lg/ahz;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lg/cyh;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lg/gkb;->setCompositionTask(Lg/cyh;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-boolean p1, v0, Lg/fts;->af:Z

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gkb;->mp:Z

    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 2

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-boolean v1, v0, Lg/fts;->w:Z

    if-eq p1, v1, :cond_1

    iput-boolean p1, v0, Lg/fts;->w:Z

    iget-object v1, v0, Lg/fts;->s:Lg/aio;

    if-eqz v1, :cond_0

    iput-boolean p1, v1, Lg/aio;->f:Z

    :cond_0
    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setComposition(Lg/cgf;)V
    .locals 9

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lg/gkb;->fw:Lg/cgf;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gkb;->no:Z

    iget-object v1, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lg/fts;->al:Ljava/util/ArrayList;

    iget-object v4, v1, Lg/fts;->ad:Lg/bzg;

    iget-object v5, v1, Lg/fts;->x:Lg/cgf;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v5, p1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_0
    iput-boolean v0, v1, Lg/fts;->ag:Z

    invoke-virtual {v1}, Lg/fts;->ay()V

    iput-object p1, v1, Lg/fts;->x:Lg/cgf;

    invoke-virtual {v1, v2}, Lg/fts;->at(Landroid/content/Context;)V

    iget-object v2, v4, Lg/bzg;->e:Lg/cgf;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-object p1, v4, Lg/bzg;->e:Lg/cgf;

    if-eqz v2, :cond_2

    iget v2, v4, Lg/bzg;->c:F

    iget v5, p1, Lg/cgf;->b:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, v4, Lg/bzg;->f:F

    iget v8, p1, Lg/cgf;->f:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v4, v2, v5}, Lg/bzg;->q(FF)V

    goto :goto_1

    :cond_2
    iget v2, p1, Lg/cgf;->b:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v5, p1, Lg/cgf;->f:F

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v2, v5}, Lg/bzg;->q(FF)V

    :goto_1
    iget v2, v4, Lg/bzg;->a:F

    const/4 v5, 0x0

    iput v5, v4, Lg/bzg;->a:F

    iput v5, v4, Lg/bzg;->b:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Lg/bzg;->o(F)V

    invoke-virtual {v4}, Lg/bzg;->v()V

    invoke-virtual {v4}, Lg/bzg;->getAnimatedFraction()F

    move-result v2

    invoke-virtual {v1, v2}, Lg/fts;->bc(F)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/bdu;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lg/bdu;->dq()V

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-boolean v2, v1, Lg/fts;->q:Z

    iget-object p1, p1, Lg/cgf;->h:Lg/ejl;

    iput-boolean v2, p1, Lg/ejl;->a:Z

    invoke-virtual {v1}, Lg/fts;->aq()V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_3
    iput-boolean v7, p0, Lg/gkb;->no:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lg/gkb;->mn:Lg/fts;

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lg/gkb;->s()Z

    move-result p1

    invoke-virtual {p0, v6}, Lg/gkb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {p0, v0}, Lg/gkb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {p1}, Lg/fts;->ao()V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lg/gkb;->jy:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-object p1, v0, Lg/fts;->ak:Ljava/lang/String;

    invoke-virtual {v0}, Lg/fts;->au()Lg/daw;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lg/daw;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setFailureListener(Lg/gao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/gao;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lg/gkb;->s:Lg/gao;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    iput p1, p0, Lg/gkb;->iw:I

    return-void
.end method

.method public setFontAssetDelegate(Lg/fav;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-object p1, v0, Lg/fts;->ae:Lg/fav;

    iget-object v0, v0, Lg/fts;->p:Lg/daw;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lg/daw;->d:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v1, v0, Lg/fts;->n:Ljava/util/Map;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lg/fts;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p1}, Lg/fts;->ap(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-boolean p1, v0, Lg/fts;->t:Z

    return-void
.end method

.method public setImageAssetDelegate(Lg/fsj;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-object p1, v0, Lg/fts;->k:Lg/fsj;

    iget-object v0, v0, Lg/fts;->a:Lg/dpa;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lg/dpa;->e:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-object p1, v0, Lg/fts;->ac:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lg/gkb;->m()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lg/gkb;->m()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-virtual {p0}, Lg/gkb;->m()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLottieAnimListener(Lg/cra;)V
    .locals 0

    iput-object p1, p0, Lg/gkb;->op:Lg/cra;

    return-void
.end method

.method public setLottieClicklistener(Lg/bdg;)V
    .locals 0

    iput-object p1, p0, Lg/gkb;->n:Lg/bdg;

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-boolean p1, v0, Lg/fts;->aj:Z

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p1}, Lg/fts;->ba(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p1}, Lg/fts;->ax(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Lcom/bytedance/component/sdk/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v1, v0, Lg/fts;->x:Lg/cgf;

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/fts;->al:Ljava/util/ArrayList;

    new-instance v2, Lg/gds;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lg/gds;-><init>(Lg/fts;FI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    iget v2, v1, Lg/cgf;->b:F

    iget v1, v1, Lg/cgf;->f:F

    invoke-static {v2, v1, p1}, Lg/din;->d(FFF)F

    move-result p1

    iget v1, v0, Lg/bzg;->c:F

    invoke-virtual {v0, v1, p1}, Lg/bzg;->q(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p1}, Lg/fts;->bf(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p1}, Lg/fts;->ar(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p1}, Lg/fts;->bd(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 4

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v1, v0, Lg/fts;->x:Lg/cgf;

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/fts;->al:Ljava/util/ArrayList;

    new-instance v2, Lg/gds;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lg/gds;-><init>(Lg/fts;FI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v2, v1, Lg/cgf;->b:F

    iget v1, v1, Lg/cgf;->f:F

    invoke-static {v2, v1, p1}, Lg/din;->d(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lg/fts;->ar(I)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 2

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-boolean v1, v0, Lg/fts;->g:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, v0, Lg/fts;->g:Z

    iget-object v0, v0, Lg/fts;->s:Lg/aio;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/aio;->k(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-boolean p1, v0, Lg/fts;->q:Z

    iget-object v0, v0, Lg/fts;->x:Lg/cgf;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cgf;->h:Lg/ejl;

    iput-boolean p1, v0, Lg/ejl;->a:Z

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Lcom/bytedance/component/sdk/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->d:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {v0, p1}, Lg/fts;->bc(F)V

    return-void
.end method

.method public setRenderMode(Lg/xt;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-object p1, v0, Lg/fts;->aa:Lg/xt;

    invoke-virtual {v0}, Lg/fts;->aq()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->p:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    iget-object v0, p0, Lg/gkb;->q:Ljava/util/Set;

    sget-object v1, Lg/gcm;->ox:Lg/gcm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Lg/bzg;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    iget-object p1, p0, Lg/gkb;->mn:Lg/fts;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    iput p1, v0, Lg/bzg;->g:F

    return-void
.end method

.method public setTextDelegate(Lg/dpc;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-object p1, v0, Lg/fts;->h:Lg/dpc;

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    iput-boolean p1, v0, Lg/bzg;->l:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/gkb;->mn:Lg/fts;

    iput-object p1, v0, Lg/fts;->d:Landroid/view/View;

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-boolean v0, p0, Lg/gkb;->no:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lg/gkb;->mn:Lg/fts;

    if-ne p1, v2, :cond_1

    iget-object v2, v2, Lg/fts;->ad:Lg/bzg;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v2, v2, Lg/bzg;->m:Z

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lg/gkb;->mn()V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    instance-of v0, p1, Lg/fts;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lg/fts;

    iget-object v2, v0, Lg/fts;->ad:Lg/bzg;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, v2, Lg/bzg;->m:Z

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lg/fts;->bb()V

    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
