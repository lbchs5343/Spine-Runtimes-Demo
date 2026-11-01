.class public final Lg/cwl;
.super Lg/euj;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:Lg/frv;

.field public c:Lg/frv;


# direct methods
.method public constructor <init>(Lg/frv;Lg/frv;I)V
    .locals 0

    iput p3, p0, Lg/cwl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cwl;->b:Lg/frv;

    iput-object p1, p0, Lg/cwl;->c:Lg/frv;

    return-void
.end method


# virtual methods
.method public final d(Lg/frv;)V
    .locals 3

    iget-object v0, p0, Lg/cwl;->b:Lg/frv;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lg/cwl;->c:Lg/frv;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lg/cwl;->c:Lg/frv;

    iput-object v1, p0, Lg/cwl;->b:Lg/frv;

    :cond_0
    iget-object v0, p0, Lg/cwl;->b:Lg/frv;

    if-ne v0, p1, :cond_1

    iget v2, p0, Lg/cwl;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lg/frv;->a:Lg/frv;

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lg/frv;->b:Lg/frv;

    :goto_0
    iput-object v0, p0, Lg/cwl;->b:Lg/frv;

    :cond_1
    iget-object v0, p0, Lg/cwl;->c:Lg/frv;

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lg/cwl;->b:Lg/frv;

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lg/cwl;->e(Lg/frv;)Lg/frv;

    move-result-object v1

    :cond_3
    :goto_1
    iput-object v1, p0, Lg/cwl;->c:Lg/frv;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lg/frv;)Lg/frv;
    .locals 1

    iget v0, p0, Lg/cwl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lg/frv;->b:Lg/frv;

    return-object p1

    :pswitch_0
    iget-object p1, p1, Lg/frv;->a:Lg/frv;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lg/cwl;->c:Lg/frv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/cwl;->c:Lg/frv;

    iget-object v1, p0, Lg/cwl;->b:Lg/frv;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lg/cwl;->e(Lg/frv;)Lg/frv;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lg/cwl;->c:Lg/frv;

    return-object v0
.end method
