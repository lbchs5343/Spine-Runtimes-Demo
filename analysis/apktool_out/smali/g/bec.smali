.class public final Lg/bec;
.super Lg/js;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field public i:Lg/fqk;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/bec;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/fqk;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/bec;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bec;->i:Lg/fqk;

    return-void
.end method


# virtual methods
.method public f(Lg/fqk;)V
    .locals 1

    iget p1, p0, Lg/bec;->h:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/bec;->i:Lg/fqk;

    check-cast p1, Lg/h;

    iget-boolean v0, p1, Lg/h;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg/fqk;->bg()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/h;->d:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lg/fqk;)V
    .locals 2

    iget v0, p0, Lg/bec;->h:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bec;->i:Lg/fqk;

    check-cast v0, Lg/h;

    iget v1, v0, Lg/h;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lg/h;->a:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/h;->d:Z

    invoke-virtual {v0}, Lg/fqk;->bm()V

    :cond_0
    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bec;->i:Lg/fqk;

    invoke-virtual {v0}, Lg/fqk;->x()V

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
