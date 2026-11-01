.class public final Lg/aiz;
.super Lg/hei;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/aiz;->a:I

    invoke-direct {p0}, Lg/hei;-><init>()V

    return-void
.end method

.method private final c(Lg/abz;)V
    .locals 0

    return-void
.end method

.method private final d(Lg/abz;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final b(Lg/abz;)V
    .locals 0

    iget p1, p0, Lg/aiz;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lg/bza;->l()Lg/bza;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
