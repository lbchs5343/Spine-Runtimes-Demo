.class public final Lg/ffi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public final synthetic c:I

.field public d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/ffi;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/ffi;->c:I

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ffi;->d:Landroid/content/Context;

    return-void
.end method

.method public static e(Lg/dgk;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/dgk;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/dgk;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_c_time"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Lg/dgk;)Landroid/content/Intent;
    .locals 4

    invoke-virtual {p1}, Lg/dgk;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/dgk;->getPathType()I

    move-result v0

    const/high16 v1, 0x10000000

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_4

    const/4 p0, 0x5

    if-eq v0, p0, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/dgk;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "//"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-ge p1, v3, :cond_2

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    aget-object p0, p0, v2

    invoke-direct {v0, v3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Lg/dgk;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Lg/dgk;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 3

    iget v0, p0, Lg/ffi;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/cwh;

    const v1, 0x7f0c0066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lg/ffi;->d:Landroid/content/Context;

    check-cast p2, Lg/ctx;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    iput-object p2, v0, Lg/cwh;->al:Lg/ctx;

    const p2, 0x7f090196

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, v0, Lg/cwh;->ak:Landroid/widget/ImageView;

    const p2, 0x7f090134

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, v0, Lg/cwh;->an:Landroid/widget/ImageView;

    const p2, 0x7f090215

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lg/cwh;->am:Landroid/widget/TextView;

    return-object v0

    :pswitch_0
    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/eyk;

    const v1, 0x7f0c0072

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lg/eyk;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lg/gzn;

    const v1, 0x7f0c0066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lg/ffi;->d:Landroid/content/Context;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    iput-boolean v2, v0, Lg/gzn;->al:Z

    iput-object p2, v0, Lg/gzn;->am:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f05000c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, v0, Lg/gzn;->al:Z

    const p2, 0x7f090196

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, v0, Lg/gzn;->ao:Landroid/widget/ImageView;

    const p2, 0x7f090134

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, v0, Lg/gzn;->an:Landroid/widget/ImageView;

    const p2, 0x7f090215

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lg/gzn;->ak:Landroid/widget/TextView;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 5

    iget v0, p0, Lg/ffi;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/cwh;

    check-cast p2, Lg/dgk;

    iget-object v0, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    iget-object v1, p1, Lg/cwh;->ak:Landroid/widget/ImageView;

    iget-object v2, p1, Lg/cwh;->am:Landroid/widget/TextView;

    iget-object v3, p1, Lg/cwh;->al:Lg/ctx;

    invoke-virtual {p2, v3}, Lg/dgk;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lg/dgk;->isSpace()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_0
    iget-object v2, p1, Lg/cwh;->an:Landroid/widget/ImageView;

    invoke-static {v3, p2}, Lg/dgk;->isShowCornerTipNow(Landroid/content/Context;Lg/dgk;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lg/dgk;->getIconType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lg/dgk;->getIconText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/ffb;->by(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lg/dgk;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lg/akf;->k()Lg/akf;

    move-result-object v2

    invoke-virtual {p2}, Lg/dgk;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/akf;->l(Ljava/lang/String;)Lg/ekl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg/ekl;->d(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lg/dgk;->getIconResId()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lg/dgk;->getIconResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    invoke-virtual {p2}, Lg/dgk;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lg/dgk;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    new-instance v1, Lg/eoh;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p2}, Lg/eoh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void

    :pswitch_0
    check-cast p1, Lg/eyk;

    iget-object v0, p0, Lg/ffi;->d:Landroid/content/Context;

    check-cast p2, Lg/bfr;

    const-string v1, "context"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lg/eyk;->al:Landroid/widget/TextView;

    iget-object v2, p2, Lg/bfr;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lg/eyk;->ak:Landroid/widget/TextView;

    iget-object v2, p2, Lg/bfr;->b:Ljava/lang/String;

    invoke-static {v2}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p2, Lg/bfr;->a:Z

    if-eqz p2, :cond_7

    const p2, 0x7f06004e

    invoke-static {v0, p2}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0, p2}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_7
    const p2, 0x7f06005e

    invoke-static {v0, p2}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0, p2}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    return-void

    :pswitch_1
    check-cast p1, Lg/gzn;

    check-cast p2, Lg/ert;

    iget-object v0, p1, Lg/gzn;->am:Landroid/content/Context;

    iget-object v1, p1, Lg/gzn;->ak:Landroid/widget/TextView;

    iget-object v2, p1, Lg/gzn;->ao:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lg/gzn;->al:Z

    if-eqz v3, :cond_8

    invoke-virtual {p2, v0}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p2, v0}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-boolean v0, p2, Lg/ert;->x:Z

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_9
    iget-boolean v0, p2, Lg/ert;->m:Z

    if-eqz v0, :cond_a

    const v0, 0x7f1303ae

    goto :goto_5

    :cond_a
    const v0, 0x7f1303ad

    :goto_5
    invoke-static {v1, v0}, Lg/bff;->g(Landroid/widget/TextView;I)V

    iget-object p1, p1, Lg/gzn;->an:Landroid/widget/ImageView;

    iget-boolean v0, p2, Lg/ert;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const/16 v0, 0x8

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p2, Lg/ert;->o:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p2, Lg/ert;->a:Ljava/lang/String;

    invoke-static {p1}, Lg/ffb;->by(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p2, Lg/ert;->y:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lg/akf;->k()Lg/akf;

    move-result-object p1

    iget-object p2, p2, Lg/ert;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/akf;->l(Ljava/lang/String;)Lg/ekl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lg/ekl;->d(Landroid/widget/ImageView;)V

    goto :goto_7

    :cond_e
    iget p1, p2, Lg/ert;->d:I

    if-lez p1, :cond_f

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p2, Lg/ert;->d:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
