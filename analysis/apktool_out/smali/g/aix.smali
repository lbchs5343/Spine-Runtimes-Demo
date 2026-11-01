.class public final Lg/aix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lg/fjv;

.field public final synthetic b:Lg/dqe;


# direct methods
.method public constructor <init>(Lg/dqe;Lg/fjv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aix;->b:Lg/dqe;

    iput-object p2, p0, Lg/aix;->a:Lg/fjv;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    check-cast p1, Lg/fpl;

    new-instance v0, Lg/qa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/qa;-><init>(Lg/aix;I)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lg/aix;->b:Lg/dqe;

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lg/qa;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/qa;-><init>(Lg/aix;I)V

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v0, Lg/qa;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lg/qa;-><init>(Lg/aix;I)V

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_6

    :goto_2
    return-void

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
