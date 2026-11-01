.class public final Lg/fxx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Landroid/os/Bundle;

.field public final d:Ljava/lang/CharSequence;

.field public e:Landroidx/core/graphics/drawable/IconCompat;

.field public final f:Z

.field public final g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->m(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/fxx;->a:Z

    iput-object v0, p0, Lg/fxx;->e:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->o()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->n()I

    move-result v0

    iput v0, p0, Lg/fxx;->b:I

    :cond_1
    invoke-static {p2}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lg/fxx;->d:Ljava/lang/CharSequence;

    iput-object p3, p0, Lg/fxx;->g:Landroid/app/PendingIntent;

    iput-object p1, p0, Lg/fxx;->c:Landroid/os/Bundle;

    iput-boolean v1, p0, Lg/fxx;->f:Z

    iput-boolean v1, p0, Lg/fxx;->a:Z

    return-void
.end method


# virtual methods
.method public final h()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    iget-object v0, p0, Lg/fxx;->e:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Lg/fxx;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->m(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Lg/fxx;->e:Landroidx/core/graphics/drawable/IconCompat;

    :cond_0
    iget-object v0, p0, Lg/fxx;->e:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method
