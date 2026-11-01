.class public final Lg/egv;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dpy;


# instance fields
.field public final a:Lg/eqn;

.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final d:Lg/cnc;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/cnc;Lg/cnc;Lg/eld;Z)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lg/egv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/egv;->d:Lg/cnc;

    iput-object p3, p0, Lg/egv;->a:Lg/eqn;

    iput-object p4, p0, Lg/egv;->b:Ljava/lang/Object;

    iput-boolean p5, p0, Lg/egv;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg/eqn;Lg/dlz;Lg/cnc;Z)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lg/egv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/egv;->a:Lg/eqn;

    iput-object p3, p0, Lg/egv;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/egv;->d:Lg/cnc;

    iput-boolean p5, p0, Lg/egv;->f:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/fts;Lg/cgf;Lg/grq;)Lg/dvz;
    .locals 0

    iget p2, p0, Lg/egv;->c:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lg/gnd;

    invoke-direct {p2, p1, p3, p0}, Lg/gnd;-><init>(Lg/fts;Lg/grq;Lg/egv;)V

    return-object p2

    :pswitch_0
    new-instance p2, Lg/me;

    invoke-direct {p2, p1, p3, p0}, Lg/me;-><init>(Lg/fts;Lg/grq;Lg/egv;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/egv;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectangleShape{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/egv;->a:Lg/eqn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/egv;->b:Ljava/lang/Object;

    check-cast v1, Lg/eqn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
