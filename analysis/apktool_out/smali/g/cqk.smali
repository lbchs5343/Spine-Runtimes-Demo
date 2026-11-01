.class public final synthetic Lg/cqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/cqk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/cqk;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/ald;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ald;-><init>(I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/ald;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/ald;-><init>(I)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty ConstantType enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
