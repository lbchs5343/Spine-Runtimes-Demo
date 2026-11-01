.class public final Lg/ss;
.super Lg/kj;
.source "SourceFile"


# instance fields
.field public final a:Lg/acq;

.field public final synthetic ae:I

.field public final af:Z

.field public final ag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    iput p3, p0, Lg/ss;->ae:I

    packed-switch p3, :pswitch_data_0

    sget-object p3, Lg/acq;->aw:Lg/acq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lg/ss;->ag:Ljava/lang/String;

    iput-object p3, p0, Lg/ss;->a:Lg/acq;

    iput-boolean p2, p0, Lg/ss;->af:Z

    return-void

    :pswitch_0
    sget-object p3, Lg/acq;->aw:Lg/acq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lg/ss;->ag:Ljava/lang/String;

    iput-object p3, p0, Lg/ss;->a:Lg/acq;

    iput-boolean p2, p0, Lg/ss;->af:Z

    return-void

    :pswitch_1
    sget-object p3, Lg/acq;->aw:Lg/acq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lg/ss;->ag:Ljava/lang/String;

    iput-object p3, p0, Lg/ss;->a:Lg/acq;

    iput-boolean p2, p0, Lg/ss;->af:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Lg/gea;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/ss;->ae:I

    packed-switch v0, :pswitch_data_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/ss;->a:Lg/acq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/ss;->ag:Ljava/lang/String;

    iget-boolean v1, p0, Lg/ss;->af:Z

    invoke-virtual {p1, v0, p2, v1}, Lg/gea;->n(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/ss;->a:Lg/acq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lg/ss;->ag:Ljava/lang/String;

    iget-boolean v1, p0, Lg/ss;->af:Z

    invoke-virtual {p1, v0, p2, v1}, Lg/gea;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :pswitch_1
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lg/ss;->a:Lg/acq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lg/ss;->ag:Ljava/lang/String;

    iget-boolean v1, p0, Lg/ss;->af:Z

    invoke-virtual {p1, v0, p2, v1}, Lg/gea;->o(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
