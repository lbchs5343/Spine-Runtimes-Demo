.class public final Lg/dpb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lg/ecx;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/ecx;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lg/dpb;->a:I

    iput-object p2, p0, Lg/dpb;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/dpb;->b:Lg/ecx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final d()Lg/ful;
    .locals 1

    iget v0, p0, Lg/dpb;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dpb;->c:Ljava/lang/Object;

    check-cast v0, Lg/ful;

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lg/ecx;
    .locals 1

    iget v0, p0, Lg/dpb;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dpb;->b:Lg/ecx;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dpb;->b:Lg/ecx;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/dpb;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dpb;->b:Lg/ecx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dpb;->c:Ljava/lang/Object;

    check-cast v1, Lg/ful;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dpb;->b:Lg/ecx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dpb;->c:Ljava/lang/Object;

    check-cast v1, Lg/eok;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
