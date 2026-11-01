.class public final Lg/fwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/elf;


# direct methods
.method public synthetic constructor <init>(Lg/elf;I)V
    .locals 0

    iput p2, p0, Lg/fwo;->a:I

    iput-object p1, p0, Lg/fwo;->b:Lg/elf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/fwo;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "pro"

    const/4 v1, 0x1

    iget-object v2, p0, Lg/fwo;->b:Lg/elf;

    invoke-virtual {v2, v0, v1}, Lg/elf;->ad(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    const-string v0, "pro"

    const/4 v1, 0x1

    iget-object v2, p0, Lg/fwo;->b:Lg/elf;

    invoke-virtual {v2, v0, v1}, Lg/elf;->ad(Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/fwo;->b:Lg/elf;

    invoke-virtual {v0}, Lg/elf;->ag()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
