.class public final Lg/fig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tencent/bugly/proguard/ay;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/bugly/proguard/ay;I)V
    .locals 0

    iput p2, p0, Lg/fig;->a:I

    iput-object p1, p0, Lg/fig;->b:Lcom/tencent/bugly/proguard/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lg/fig;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fig;->b:Lcom/tencent/bugly/proguard/ay;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ay;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fig;->b:Lcom/tencent/bugly/proguard/ay;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ay;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
