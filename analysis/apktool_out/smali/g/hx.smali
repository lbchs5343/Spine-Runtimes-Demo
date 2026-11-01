.class public final Lg/hx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Z

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/hx;->d:I

    return-void
.end method

.method public constructor <init>(Lg/glm;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/hx;->b:I

    iput-object p1, p0, Lg/hx;->c:Ljava/lang/Object;

    iget p1, p1, Lg/glm;->a:I

    invoke-direct {p0, p1}, Lg/hx;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lg/tl;I)V
    .locals 0

    iput p2, p0, Lg/hx;->b:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lg/hx;->c:Ljava/lang/Object;

    iget p1, p1, Lg/bcp;->g:I

    invoke-direct {p0, p1}, Lg/hx;-><init>(I)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lg/hx;->c:Ljava/lang/Object;

    iget p1, p1, Lg/bcp;->g:I

    invoke-direct {p0, p1}, Lg/hx;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lg/hx;->e:I

    iget v1, p0, Lg/hx;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg/hx;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/hx;->e:I

    iget v1, p0, Lg/hx;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lg/hx;->c:Ljava/lang/Object;

    check-cast v1, Lg/glm;

    iget-object v1, v1, Lg/glm;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lg/hx;->c:Ljava/lang/Object;

    check-cast v1, Lg/tl;

    invoke-virtual {v1, v0}, Lg/bcp;->o(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lg/hx;->c:Ljava/lang/Object;

    check-cast v1, Lg/tl;

    invoke-virtual {v1, v0}, Lg/bcp;->n(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget v1, p0, Lg/hx;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lg/hx;->e:I

    iput-boolean v2, p0, Lg/hx;->a:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lg/hx;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/hx;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/hx;->e:I

    iget v1, p0, Lg/hx;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lg/hx;->c:Ljava/lang/Object;

    check-cast v1, Lg/glm;

    invoke-virtual {v1, v0}, Lg/glm;->d(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lg/hx;->c:Ljava/lang/Object;

    check-cast v1, Lg/tl;

    invoke-virtual {v1, v0}, Lg/bcp;->r(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lg/hx;->c:Ljava/lang/Object;

    check-cast v1, Lg/tl;

    invoke-virtual {v1, v0}, Lg/bcp;->r(I)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lg/hx;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/hx;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/hx;->a:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing an element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
