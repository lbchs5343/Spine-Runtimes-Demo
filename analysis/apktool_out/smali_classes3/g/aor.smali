.class public final Lg/aor;
.super Lg/fso;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lg/fc;

.field public c:Z


# direct methods
.method public constructor <init>(Lg/fc;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/aor;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Lg/aor;->b:Lg/fc;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    iget-boolean p1, p0, Lg/aor;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/aor;->b:Lg/fc;

    iget-object p1, p1, Lg/fc;->e:Ljava/lang/Object;

    check-cast p1, Lg/hdh;

    iget-object v0, p0, Lg/aor;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lg/hdh;->br(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/hdh;->bx(Z)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget-boolean p2, p0, Lg/aor;->c:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lg/aor;->b:Lg/fc;

    iget-object p2, p2, Lg/fc;->e:Ljava/lang/Object;

    check-cast p2, Lg/hdh;

    invoke-virtual {p2, p1}, Lg/hdh;->br(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lg/hdh;->bx(Z)V

    :cond_0
    return-void
.end method
