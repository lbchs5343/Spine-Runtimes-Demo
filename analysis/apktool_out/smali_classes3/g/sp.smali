.class public final Lg/sp;
.super Lg/bvf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Lg/bhz;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/sp;->d:I

    iput-object p1, p0, Lg/sp;->e:Lg/bhz;

    iput-object p2, p0, Lg/sp;->f:Ljava/lang/String;

    iput-object p3, p0, Lg/sp;->b:Ljava/lang/String;

    iput-object p4, p0, Lg/sp;->c:Ljava/lang/Object;

    iput-boolean p5, p0, Lg/sp;->a:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method

.method public constructor <init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;ZLg/bay;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/sp;->d:I

    iput-object p1, p0, Lg/sp;->e:Lg/bhz;

    iput-object p2, p0, Lg/sp;->f:Ljava/lang/String;

    iput-object p3, p0, Lg/sp;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lg/sp;->a:Z

    iput-object p5, p0, Lg/sp;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 9

    iget v0, p0, Lg/sp;->d:I

    packed-switch v0, :pswitch_data_0

    iget-wide v7, p0, Lg/bvf;->k:J

    iget-object v0, p0, Lg/sp;->e:Lg/bhz;

    iget-object v1, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/sp;->f:Ljava/lang/String;

    iget-object v3, p0, Lg/sp;->b:Ljava/lang/String;

    iget-object v0, p0, Lg/sp;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    iget-boolean v5, p0, Lg/sp;->a:Z

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v8}, Lg/ees;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/sp;->e:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/sp;->f:Ljava/lang/String;

    iget-object v2, p0, Lg/sp;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lg/sp;->a:Z

    iget-object v4, p0, Lg/sp;->c:Ljava/lang/Object;

    check-cast v4, Lg/bay;

    invoke-interface {v0, v1, v2, v3, v4}, Lg/ees;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLg/brv;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 2

    iget v0, p0, Lg/sp;->d:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/sp;->c:Ljava/lang/Object;

    check-cast v0, Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
