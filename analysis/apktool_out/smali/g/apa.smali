.class public final synthetic Lg/apa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dle;


# instance fields
.field public final synthetic a:I

.field public final synthetic c:Lg/cqz;


# direct methods
.method public synthetic constructor <init>(ILg/cqz;)V
    .locals 0

    iput p1, p0, Lg/apa;->a:I

    iput-object p2, p0, Lg/apa;->c:Lg/cqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final synthetic e(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic f(Lg/ggu;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final _bt(Lg/ggu;)V
    .locals 2

    iget v0, p0, Lg/apa;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lg/apa;->c:Lg/cqz;

    invoke-virtual {p1, v0, v1}, Lg/ggu;->j(ILg/cqz;)V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lg/apa;->c:Lg/cqz;

    invoke-virtual {p1, v0, v1}, Lg/ggu;->j(ILg/cqz;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic _ct(Lg/ggu;)V
    .locals 0

    iget p1, p0, Lg/apa;->a:I

    return-void
.end method
