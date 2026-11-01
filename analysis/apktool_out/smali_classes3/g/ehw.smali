.class public final Lg/ehw;
.super Lg/dwo;
.source "SourceFile"


# instance fields
.field public final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lg/cjg;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/dwo;-><init>(Lg/cjg;)V

    iput-object p2, p0, Lg/ehw;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lg/ehw;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/dwo;-><init>(Lg/dwo;)V

    iget-object p1, p1, Lg/ehw;->r:Landroid/graphics/RectF;

    iput-object p1, p0, Lg/ehw;->r:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lg/fym;

    invoke-direct {v0, p0}, Lg/ddm;-><init>(Lg/dwo;)V

    iput-object p0, v0, Lg/fym;->b:Lg/ehw;

    invoke-virtual {v0}, Lg/ddm;->invalidateSelf()V

    return-object v0
.end method
