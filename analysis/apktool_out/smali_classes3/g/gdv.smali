.class public final synthetic Lg/gdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lg/eku;


# direct methods
.method public synthetic constructor <init>(Lg/eku;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lg/gdv;->c:I

    iput-object p1, p0, Lg/gdv;->d:Lg/eku;

    iput-object p2, p0, Lg/gdv;->a:Ljava/lang/String;

    iput-object p3, p0, Lg/gdv;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lg/gdv;->c:I

    iget-object v1, p0, Lg/gdv;->b:Ljava/lang/String;

    iget-object v2, p0, Lg/gdv;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/gdv;->d:Lg/eku;

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lg/eku;->e:Z

    invoke-virtual {v3, v2, v1}, Lg/eku;->r(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :pswitch_0
    iget-object v0, v3, Lg/eku;->i:Lg/dms;

    new-instance v4, Lg/gdv;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v2, v1, v5}, Lg/gdv;-><init>(Lg/eku;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
