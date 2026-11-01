.class public final Lg/ezf;
.super Lg/byh;
.source "SourceFile"


# instance fields
.field public bn:I

.field public bo:Z

.field public final synthetic bq:Ljava/lang/Object;

.field public final synthetic br:I


# direct methods
.method public constructor <init>(Lg/fxu;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/ezf;->br:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ezf;->bq:Ljava/lang/Object;

    iput p2, p0, Lg/ezf;->bn:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/ezf;->bo:Z

    return-void
.end method

.method public constructor <init>(Lg/wj;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/ezf;->br:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ezf;->bq:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/ezf;->bo:Z

    iput p1, p0, Lg/ezf;->bn:I

    return-void
.end method


# virtual methods
.method public bh()V
    .locals 1

    iget v0, p0, Lg/ezf;->br:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ezf;->bo:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bk()V
    .locals 2

    iget v0, p0, Lg/ezf;->br:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lg/ezf;->bo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ezf;->bo:Z

    iget-object v0, p0, Lg/ezf;->bq:Ljava/lang/Object;

    check-cast v0, Lg/wj;

    iget-object v0, v0, Lg/wj;->a:Lg/gig;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/gig;->bk()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ezf;->bq:Ljava/lang/Object;

    check-cast v0, Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bp()V
    .locals 3

    iget v0, p0, Lg/ezf;->br:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/ezf;->bn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/ezf;->bn:I

    iget-object v1, p0, Lg/ezf;->bq:Ljava/lang/Object;

    check-cast v1, Lg/wj;

    iget-object v2, v1, Lg/wj;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lg/wj;->a:Lg/gig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/gig;->bp()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lg/ezf;->bn:I

    iput-boolean v0, p0, Lg/ezf;->bo:Z

    iput-boolean v0, v1, Lg/wj;->b:Z

    :cond_1
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lg/ezf;->bo:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/ezf;->bq:Ljava/lang/Object;

    check-cast v0, Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lg/ezf;->bn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
