.class public final Lg/cgi;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/PorterDuff$Mode;

.field public b:Z

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Landroid/graphics/Paint;

.field public e:Z

.field public f:I

.field public g:Landroid/graphics/Bitmap;

.field public h:I

.field public i:Lg/qs;

.field public j:Z

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lg/cgi;->f:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lg/eia;

    invoke-direct {v0, p0}, Lg/eia;-><init>(Lg/cgi;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p1, Lg/eia;

    invoke-direct {p1, p0}, Lg/eia;-><init>(Lg/cgi;)V

    return-object p1
.end method
