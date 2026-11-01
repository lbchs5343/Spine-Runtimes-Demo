.class public final synthetic Lg/daa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:Lg/cyz;


# direct methods
.method public synthetic constructor <init>(Lg/cyz;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/daa;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/daa;->d:Lg/cyz;

    iput-object p2, p0, Lg/daa;->a:Landroid/view/View;

    iput-object p3, p0, Lg/daa;->b:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic constructor <init>(Lg/cyz;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/daa;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/daa;->d:Lg/cyz;

    iput-object p2, p0, Lg/daa;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lg/daa;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/daa;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/daa;->d:Lg/cyz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/daa;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lg/cyz;->x:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/daa;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/daa;->d:Lg/cyz;

    iget-boolean v1, v0, Lg/cyz;->x:Z

    if-eqz v1, :cond_2

    const v1, 0x7fffffff

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    iget-object v2, p0, Lg/daa;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-boolean v1, v0, Lg/cyz;->x:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-boolean v1, v0, Lg/cyz;->x:Z

    if-eqz v1, :cond_4

    const v1, 0x7f120025

    goto :goto_3

    :cond_4
    const v1, 0x7f120026

    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lg/daa;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lg/cyz;->x:Z

    if-eqz v0, :cond_5

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
