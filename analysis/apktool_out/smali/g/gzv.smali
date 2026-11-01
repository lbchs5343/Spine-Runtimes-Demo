.class public final Lg/gzv;
.super Ljava/lang/Object;

# interfaces
.implements Lg/bdu;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lg/fts;


# direct methods
.method public synthetic constructor <init>(Lg/fts;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/gzv;->a:I

    iput-object p1, p0, Lg/gzv;->c:Lg/fts;

    iput-object p2, p0, Lg/gzv;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 2

    iget v0, p0, Lg/gzv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gzv;->c:Lg/fts;

    iget-object v1, p0, Lg/gzv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/fts;->bf(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/gzv;->c:Lg/fts;

    iget-object v1, p0, Lg/gzv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/fts;->ax(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/gzv;->c:Lg/fts;

    iget-object v1, p0, Lg/gzv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/fts;->bd(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
