.class public final Lg/hea;
.super Ljava/lang/Object;

# interfaces
.implements Lg/bdu;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lg/fts;


# direct methods
.method public synthetic constructor <init>(Lg/fts;II)V
    .locals 0

    iput p3, p0, Lg/hea;->a:I

    iput-object p1, p0, Lg/hea;->c:Lg/fts;

    iput p2, p0, Lg/hea;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 2

    iget v0, p0, Lg/hea;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/hea;->c:Lg/fts;

    iget v1, p0, Lg/hea;->b:I

    invoke-virtual {v0, v1}, Lg/fts;->ar(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/hea;->c:Lg/fts;

    iget v1, p0, Lg/hea;->b:I

    invoke-virtual {v0, v1}, Lg/fts;->ap(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/hea;->c:Lg/fts;

    iget v1, p0, Lg/hea;->b:I

    invoke-virtual {v0, v1}, Lg/fts;->ba(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
