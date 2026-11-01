.class public final Lg/dbx;
.super Lg/byh;
.source "SourceFile"


# instance fields
.field public final synthetic bn:Lg/hp;

.field public final synthetic bo:I


# direct methods
.method public synthetic constructor <init>(Lg/hp;I)V
    .locals 0

    iput p2, p0, Lg/dbx;->bo:I

    iput-object p1, p0, Lg/dbx;->bn:Lg/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bp()V
    .locals 4

    iget v0, p0, Lg/dbx;->bo:I

    const/4 v1, 0x0

    iget-object v2, p0, Lg/dbx;->bn:Lg/hp;

    packed-switch v0, :pswitch_data_0

    iput-object v1, v2, Lg/hp;->o:Lg/wj;

    iget-object v0, v2, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_0
    iget-boolean v0, v2, Lg/hp;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lg/hp;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v2, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, v2, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, v2, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iput-object v1, v2, Lg/hp;->o:Lg/wj;

    iget-object v0, v2, Lg/hp;->d:Lg/clx;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lg/hp;->t:Lg/btx;

    invoke-virtual {v0, v3}, Lg/clx;->u(Lg/gtg;)V

    iput-object v1, v2, Lg/hp;->t:Lg/btx;

    iput-object v1, v2, Lg/hp;->d:Lg/clx;

    :cond_1
    iget-object v0, v2, Lg/hp;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg/dzc;->c(Landroid/view/View;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
