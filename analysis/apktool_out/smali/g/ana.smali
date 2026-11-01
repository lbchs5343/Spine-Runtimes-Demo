.class public final Lg/ana;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lg/ana;->c:I

    iput-object p2, p0, Lg/ana;->d:Ljava/lang/String;

    iput-object p3, p0, Lg/ana;->a:Ljava/lang/String;

    iput-object p4, p0, Lg/ana;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/ana;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ana;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/ana;->b:Ljava/lang/String;

    iget-object v2, p0, Lg/ana;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/ao;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ana;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/ana;->b:Ljava/lang/String;

    iget-object v2, p0, Lg/ana;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/ao;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
