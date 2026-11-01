.class public Lg/dwo;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:F

.field public c:I

.field public d:F

.field public e:Landroid/content/res/ColorStateList;

.field public f:I

.field public g:Landroid/content/res/ColorStateList;

.field public h:Lg/cjg;

.field public i:Landroid/content/res/ColorStateList;

.field public j:I

.field public k:F

.field public final l:F

.field public m:Lg/dsx;

.field public n:F

.field public final o:Landroid/graphics/Paint$Style;

.field public p:Lg/gid;

.field public q:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Lg/cjg;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lg/dwo;->i:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lg/dwo;->q:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lg/dwo;->a:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lg/dwo;->l:F

    iput v1, p0, Lg/dwo;->n:F

    const/16 v1, 0xff

    iput v1, p0, Lg/dwo;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lg/dwo;->k:F

    iput v1, p0, Lg/dwo;->d:F

    const/4 v1, 0x0

    iput v1, p0, Lg/dwo;->c:I

    iput v1, p0, Lg/dwo;->j:I

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, Lg/dwo;->o:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lg/dwo;->h:Lg/cjg;

    iput-object v0, p0, Lg/dwo;->p:Lg/gid;

    return-void
.end method

.method public constructor <init>(Lg/dwo;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lg/dwo;->i:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lg/dwo;->q:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lg/dwo;->a:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/dwo;->l:F

    iput v0, p0, Lg/dwo;->n:F

    const/16 v0, 0xff

    iput v0, p0, Lg/dwo;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lg/dwo;->k:F

    iput v0, p0, Lg/dwo;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lg/dwo;->c:I

    iput v0, p0, Lg/dwo;->j:I

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lg/dwo;->o:Landroid/graphics/Paint$Style;

    iget-object v0, p1, Lg/dwo;->h:Lg/cjg;

    iput-object v0, p0, Lg/dwo;->h:Lg/cjg;

    iget-object v0, p1, Lg/dwo;->m:Lg/dsx;

    iput-object v0, p0, Lg/dwo;->m:Lg/dsx;

    iget-object v0, p1, Lg/dwo;->p:Lg/gid;

    iput-object v0, p0, Lg/dwo;->p:Lg/gid;

    iget v0, p1, Lg/dwo;->b:F

    iput v0, p0, Lg/dwo;->b:F

    iget-object v0, p1, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lg/dwo;->q:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lg/dwo;->q:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, Lg/dwo;->i:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lg/dwo;->i:Landroid/content/res/ColorStateList;

    iget v0, p1, Lg/dwo;->f:I

    iput v0, p0, Lg/dwo;->f:I

    iget v0, p1, Lg/dwo;->l:F

    iput v0, p0, Lg/dwo;->l:F

    iget v0, p1, Lg/dwo;->j:I

    iput v0, p0, Lg/dwo;->j:I

    iget v0, p1, Lg/dwo;->n:F

    iput v0, p0, Lg/dwo;->n:F

    iget v0, p1, Lg/dwo;->k:F

    iput v0, p0, Lg/dwo;->k:F

    iget v0, p1, Lg/dwo;->d:F

    iput v0, p0, Lg/dwo;->d:F

    iget v0, p1, Lg/dwo;->c:I

    iput v0, p0, Lg/dwo;->c:I

    iget-object v0, p1, Lg/dwo;->o:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lg/dwo;->o:Landroid/graphics/Paint$Style;

    iget-object v0, p1, Lg/dwo;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lg/dwo;->a:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lg/dwo;->a:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lg/ddm;

    invoke-direct {v0, p0}, Lg/ddm;-><init>(Lg/dwo;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/ddm;->dy:Z

    iput-boolean v1, v0, Lg/ddm;->cy:Z

    return-object v0
.end method
