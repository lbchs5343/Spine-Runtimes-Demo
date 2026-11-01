.class public final Lg/bef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb/c/d;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lb/c/d;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/bef;->b:I

    iput-object p1, p0, Lg/bef;->a:Lb/c/d;

    iput-object p2, p0, Lg/bef;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/bef;->b:I

    iget-object v1, p0, Lg/bef;->c:Ljava/lang/String;

    iget-object v2, p0, Lg/bef;->a:Lb/c/d;

    packed-switch v0, :pswitch_data_0

    sget v0, Lb/c/d;->d:I

    invoke-virtual {v2, v1}, Lb/c/d;->ai(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget v0, Lb/c/d;->d:I

    invoke-virtual {v2, v1}, Lb/c/d;->an(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
