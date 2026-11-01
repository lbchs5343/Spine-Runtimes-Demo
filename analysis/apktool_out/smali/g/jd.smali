.class public final Lg/jd;
.super Ljava/lang/Object;

# interfaces
.implements Lg/bdu;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/fts;


# direct methods
.method public synthetic constructor <init>(Lg/fts;I)V
    .locals 0

    iput p2, p0, Lg/jd;->a:I

    iput-object p1, p0, Lg/jd;->b:Lg/fts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 1

    iget v0, p0, Lg/jd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/jd;->b:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->ao()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/jd;->b:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->as()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
