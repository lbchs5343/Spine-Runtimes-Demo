.class public final Lg/bbg;
.super Lg/gu;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lg/gqz;


# direct methods
.method public synthetic constructor <init>(Lg/gqz;I)V
    .locals 0

    iput p2, p0, Lg/bbg;->d:I

    iput-object p1, p0, Lg/bbg;->e:Lg/gqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget p1, p0, Lg/bbg;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/bbg;->e:Lg/gqz;

    iget-boolean v0, p1, Lg/gqz;->n:Z

    if-nez v0, :cond_0

    iget v0, p1, Lg/gqz;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    const/4 p1, 0x0

    iget-object v0, p0, Lg/bbg;->e:Lg/gqz;

    invoke-virtual {v0, p1}, Lg/gqz;->setIndeterminate(Z)V

    iget p1, v0, Lg/gqz;->m:I

    invoke-virtual {v0, p1}, Lg/gqz;->b(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
