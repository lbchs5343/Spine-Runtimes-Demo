.class public final Lg/zc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/core/graphics/drawable/IconCompat;

.field public b:Lg/bgf;

.field public c:Landroid/os/Bundle;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/CharSequence;

.field public final h:Landroid/content/Context;

.field public i:Ljava/lang/CharSequence;

.field public final j:Ljava/util/ArrayList;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public final n:Ljava/util/ArrayList;

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/util/ArrayList;

.field public r:Landroid/app/PendingIntent;

.field public final s:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/zc;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/zc;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/zc;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/zc;->o:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/zc;->l:Z

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lg/zc;->s:Landroid/app/Notification;

    iput-object p1, p0, Lg/zc;->h:Landroid/content/Context;

    iput-object p2, p0, Lg/zc;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Lg/zc;->m:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/zc;->j:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lg/zc;->p:Z

    return-void
.end method

.method public static t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final u(IZ)V
    .locals 1

    iget-object v0, p0, Lg/zc;->s:Landroid/app/Notification;

    if-eqz p2, :cond_0

    iget p2, v0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, p2

    iput p1, v0, Landroid/app/Notification;->flags:I

    return-void

    :cond_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public final v(Landroid/graphics/Bitmap;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/zc;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f07006a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v3, v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v3, v5

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    mul-double v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Ljava/lang/Object;

    iput-object v0, p0, Lg/zc;->a:Landroidx/core/graphics/drawable/IconCompat;

    return-void
.end method

.method public final w(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Lg/fxx;

    invoke-direct {v0, p1, p2, p3}, Lg/fxx;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lg/zc;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final x(Lg/bgf;)V
    .locals 1

    iget-object v0, p0, Lg/zc;->b:Lg/bgf;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lg/zc;->b:Lg/bgf;

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/zc;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lg/bgf;->z:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lg/zc;->x(Lg/bgf;)V

    :cond_0
    return-void
.end method

.method public final y()Landroid/app/Notification;
    .locals 6

    new-instance v0, Lg/duw;

    invoke-direct {v0, p0}, Lg/duw;-><init>(Lg/zc;)V

    iget-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lg/zc;

    iget-object v2, v1, Lg/zc;->b:Lg/bgf;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lg/bgf;->aj(Lg/duw;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/bgf;->ab()V

    :cond_1
    iget-object v3, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lg/bgf;->ai()V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v1, v1, Lg/zc;->b:Lg/bgf;

    invoke-virtual {v1}, Lg/bgf;->ae()V

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lg/bgf;->ah()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method
